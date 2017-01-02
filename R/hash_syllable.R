#' Syllable Counts
#'
#' A \pkg{data.table} hash table dataset containing words and syllable counts.
#'
#' @details
#' \itemize{
#'   \item word. A character coolumn of lower case words.
#'   \item syllables. The syllable counts per word.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_syllable
#' @usage data(hash_syllable)
#' @format A data frame with 124603 rows and 2 variables
#' @references Counts scraped from \url{http://www.poetrysoup.com}
#' @examples
#' \dontrun{
#' library(data.table)
#' hash_syllable[c('yield', 'hurtful', 'admonishing', 'abdicate')]
#' }
NULL
