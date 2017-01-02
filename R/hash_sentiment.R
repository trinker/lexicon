#' Sentiment Lookup Key
#'
#' A \pkg{data.table} dataset containing an augmented version of Hu & Liu's (2004)
#' positive/negative word list as sentiment lookup values.
#'
#' @details
#' \itemize{
#'   \item x. Words
#'   \item y. Sentiment values (+1, -1)
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_sentiment
#' @usage data(hash_sentiment)
#' @format A data frame with 6827 rows and 2 variables
#' @references Hu, M., & Liu, B. (2004). Mining opinion features in customer
#' reviews. National Conference on Artificial Intelligence.
#' @examples
#' \dontrun{
#' library(data.table)
#' hash_sentiment[c('happy', 'angry')]
#' }
NULL
