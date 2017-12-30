if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, textshape, textreadr, data.table, clipr)
pacman::p_load_current_gh('trinker/acc.roxygen2')

## readin tar file
loc <- 'http://www.dcs.shef.ac.uk/research/ilash/Moby/mpos.tar.Z' %>%
    download()

## untar the file
untar(loc, exdir = dirname(loc))


## read in the .txt files (words and readme pos lookup key
mobyr <- readLines(file.path(dirname(loc), 'mpos/mobyposi.i'))
readme <- readLines(file.path(dirname(loc), 'mpos/readme'))

## part of speech symbol lookup key
pos_key <- readme %>%
    {grep("\t|\\s{3,}[A-Z]$", ., value = TRUE)}  %>%
    trimws() %>%
    stringi::stri_replace_all_regex('\\s{3,}', '\t') %>%
    stringi::stri_replace_all_regex('(\t)+', '\t')%>%
    {read.csv(text = ., sep = "\t", header=FALSE, stringsAsFactors = FALSE)} %>%
    setNames(c('pos', 'tag'))

## create the words to parts of speech lexicon
hash_grady_pos <- mobyr %>%
    data_frame(x = .) %>%
    extract(x, c('word', 'tag'), '(^[^×]+?)×(.+$)') %>%
    mutate(
        word = tolower(word),
        n_pos = nchar(tag),
        tag = stringi::stri_split_regex(tag, "(?=.)(?<=.)")
    ) %>%
    unnest() %>%
    left_join(pos_key, by = 'tag') %>%
    filter(!grepl("[^ -~]", word)) %>%
    mutate(space = grepl("\\s", word)) %>%
    select(word, pos, n_pos, space) %>%
    as.data.table()

setkey(hash_grady_pos, 'word')

hash_grady_pos <- unique(lexicon::hash_grady_pos[, 1:2])
setkey(hash_grady_pos, 'word')


grady_pos_feature <- function(data){

    data <- data.table::copy(data)

    data <- data[, n_pos := .N, by = 'word'][, space := grepl("\\s", word)][]


    uDT <- unique(data)
    data[, "primary" := FALSE]
    data[uDT, primary := TRUE, mult = "first"][]

    data.table::setkey(data, 'word')

    data

}


grady_pos_feature(hash_grady_pos)


## test hash
hash_grady_pos['dog']

hash_grady_pos[pos == 'Pronoun', ]
table(hash_grady_pos$pos)
write_clip(capture.output(acc.roxygen2::dat4rox(hash_grady_pos)))
write_clip(paste(paste0("\\code{", names(table(hash_grady_pos$pos)), "}"), collapse = ", "))

pax::new_data(hash_grady_pos, stand.alone = TRUE)


#' Grady Ward's Moby Parts of Speech
#'
#' A dataset containing a hash lookup of Grady Ward's parts of speech from the
#' Moby project.  The words with non-ASCII characters removed.
#'
#' @details
#' \itemize{
#'   \item word. The word.
#'   \item pos. The part of speech; one of :\code{Adjective}, \code{Adverb}, \code{Conjunction}, \code{Definite Article}, \code{Interjection}, \code{Noun}, \code{Noun Phrase}, \code{Plural}, \code{Preposition}, \code{Pronoun}, \code{Verb (intransitive)}, \code{Verb (transitive)}, or \code{Verb (usu participle)}.  Note that the first part of speech for a word is its primary use; all other uses are seondary.
#'   \item n_pos. The number of parts of speech associated with a word.  Useful for filtering.
#'   \item space. logical.  If \code{TRUE} the word contains a space.  Useful for filtering.
#'   \item primary. logical.  If \code{TRUE} the word is the primary part of speech used.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_grady_pos
#' @usage data(hash_grady_pos)
#' @format A data frame with 250,892 rows and 5 variables
#' @source \url{http://icon.shef.ac.uk/Moby/mpos.html}
#' @references Moby Thesaurus List by Grady Ward: \url{http://icon.shef.ac.uk/Moby/mpos.html}
#' @examples
#' hash_grady_pos['dog']
#' hash_grady_pos[, .SD[1], by='word']
NULL




