#' Grady Ward's Moby Parts of Speech
#'
#' A dataset containing a hash lookup of Grady Ward's parts of speech from the
#' Moby project.  The words with non-ASCII characters removed.
#'
#' @details
#' \itemize{
#'   \item word. The word.
#'   \item pos. The part of speech; one of :\code{Adjective}, \code{Adverb}, \code{Conjunction}, \code{Definite Article}, \code{Interjection}, \code{Noun}, \code{Noun Phrase}, \code{Plural}, \code{Preposition}, \code{Pronoun}, \code{Verb (intransitive)}, \code{Verb (transitive)}, or \code{Verb (usu participle)}.  Note that the first part of speech for a word is its primary use; all other uses are secondary.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_grady_pos
#' @rdname hash_grady_pos
#' @usage data(hash_grady_pos)
#' @format A data frame with 246,691 rows and 3 variables
#' @source Originally downloaded from: http://icon.shef.ac.uk/Moby
#' @examples
#' \dontrun{
#' library(data.table)
#'
#' hash_grady_pos <- grady_pos_feature(hash_grady_pos)
#' hash_grady_pos['dog']
#' hash_grady_pos[primary == TRUE, ]
#' hash_grady_pos[primary == TRUE & space == FALSE, ]
#' }
NULL


#' Grady Ward's Moby Parts of Speech
#'
#' \code{grady_pos_feature} - A function for augmenting \code{hash_grady_pos}
#' with 3 additional columns: (1) \code{n_pos} - the number of parts of speech
#' a word has, (2) \code{space} - logical; indicating if a word contains a space,
#' & (3) \code{primary} - logical; indicating if this is the most likely part of
#' speech given the word.
#'
#' @param data This should be \code{lexicon::hash_grady_pos}.
#' @rdname hash_grady_pos
#' @importFrom data.table .N :=
#' @export
grady_pos_feature <- function(data){

    data <- data.table::copy(data)
    n_pos <- space <- primary <- word <- NULL

    data <- data[, n_pos := .N, by = 'word'][, space := grepl("\\s", word)][]


    uDT <- unique(data)
    data[, "primary" := FALSE]
    data[uDT, primary := TRUE, mult = "first"][]

    data.table::setkey(data, 'word')

    data

}
