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
#' \dontrun{
#' library(data.table)
#'
#' hash_grady_pos['dog']
#' hash_grady_pos[primary == TRUE, ]
#' hash_grady_pos[primary == TRUE & space == FALSE, ]
#' }
NULL
