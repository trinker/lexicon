#' Jockers Polarity Lookup Table
#'
#' A \pkg{data.table} dataset containing an modified version of Jocker's (2017)
#' sentiment lookup table used in \pkg{syuzhet}.
#'
#' @details
#' \itemize{
#'   \item x. Words
#'   \item y. Sentiment values ranging between -1 and 1.
#' }
#'
#' @keywords datasets
#' @name hash_sentiment_jockers
#' @include utils.R
#' @references Jockers, M. L. (2017). Syuzhet: Extract sentiment and plot arcs 
#' from Text. Retrieved from https://github.com/mjockers/syuzhet
#' @export
hash_sentiment_jockers <- as_key(syuzhet::get_sentiment_dictionary(dictionary = "syuzhet"))
hash_sentiment_jockers <- hash_sentiment_jockers [!is.na(hash_sentiment_jockers[[1]]),]
hash_sentiment_jockers <- hash_sentiment_jockers [!is.na(hash_sentiment_jockers[[2]]),]
data.table::setkey(hash_sentiment_jockers, "x")

#' Jockers Sentiment Key
#'
#' A dataset containing an imported version of Jocker's (2017)
#' sentiment lookup table used in \pkg{syuzhet}.
#'
#' @details
#' \itemize{
#'   \item word. Words
#'   \item value. Sentiment values ranging between -1 and 1.
#' }
#'
#' @keywords datasets
#' @name key_sentiment_jockers
#' @references Jockers, M. L. (2017). Syuzhet: Extract sentiment and plot arcs 
#' from Text. Retrieved from https://github.com/mjockers/syuzhet
#' @export
key_sentiment_jockers <- syuzhet::get_sentiment_dictionary(dictionary = "syuzhet")

