#' NRC Sentiment Polarity Table
#'
#' A \pkg{data.table} dataset containing a filtered version of Mohammad &
#' Turney', P. D.'s (2010) positive/negative word list as sentiment lookup values.
#'
#' @details
#' \itemize{
#'   \item x. Words
#'   \item y. Sentiment values (+1, -1)
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_sentiment_nrc
#' @usage data(hash_sentiment_nrc)
#' @format A data frame with 5468 rows and 2 variables
#' @references http://www.purl.com/net/lexicons  \cr \cr
#' Mohammad, S. M. & Turney, P. D. (2010) Emotions evoked by common words and
#' phrases: Using Mechanical Turk to create an emotion lexicon, In Proceeding of
#' Workshop on Computational Approaches to Analysis and Generation of Emotion in
#' Text, 26-34.
#' @examples
#' \dontrun{
#' library(data.table)
#' hash_sentiment_nrc[c('happy', 'angry')]
#' }
NULL


