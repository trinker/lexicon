#' Hu Liu Polarity Lookup Table
#'
#' A \pkg{data.table} dataset containing an augmented version of Hu & Liu's (2004)
#' positive/negative word list as sentiment lookup values.
#'
#' @details
#' \itemize{
#'   \item x. Words
#'   \item y. Sentiment values (+1, 0, -1.05, -1, -2), -2 indicate phrasing that
#'   is always negative (e.g., 'too much fun' and 'too much evil' both denote
#'   negative though the following word is positive and negative respectively).
#'
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_sentiment_huliu
#' @usage data(hash_sentiment_huliu)
#' @format A data frame with 6874 rows and 2 variables
#' @references Hu, M., & Liu, B. (2004). Mining and summarizing customer reviews.
#' Proceedings of the ACM SIGKDD International Conference on Knowledge Discovery
#' & Data Mining (KDD-2004). Seattle, Washington. \cr
#'
#' Hu, M., & Liu, B. (2004). Mining opinion features in customer
#' reviews. National Conference on Artificial Intelligence.\cr
#'
#' \file{https://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html}
NULL



