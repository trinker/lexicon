#' Augmented Sentiword Polarity Table
#'
#' A \pkg{data.table} dataset containing an augmented version of Baccianella,
#' Esuli and Sebastiani's (2010) positive/negative word list as sentiment lookup
#' values.  This list has be restructured to long format.  A polarity value
#' was assigned by taking the difference between the original data set's
#' negative and positive attribution (\code{PosScore - NegScore}).  All rows
#' with a zero polarity were removed from the data set as well as any duplicated
#' in the valence shifter's data set.
#'
#' @details
#' \itemize{
#'   \item x. Words
#'   \item y. Sentiment values
#' }
#' 
#' @section License: https://creativecommons.org/licenses/by-sa/3.0/legalcode
#' @docType data
#' @keywords datasets
#' @name hash_sentiment_sentiword
#' @usage data(hash_sentiment_sentiword)
#' @format A data frame with 20,093 rows and 2 variables
#' @references Baccianella S., Esuli, A. and Sebastiani, F. (2010). SentiWordNet
#' 3.0: An Enhanced Lexical Resource for Sentiment Analysis and Opinion Mining.
#' International Conference on Language Resources and Evaluation.
#'
#' https://sentiwordnet.isti.cnr.it
NULL

