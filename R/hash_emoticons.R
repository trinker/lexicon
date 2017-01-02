#' Emoticons
#'
#' A \pkg{data.table} key containing common emoticons (adapted from
#' \href{http://www.lingo2word.com/lists/emoticon_listH.html}{Popular Emoticon List}).
#'
#' @details
#' \itemize{
#'   \item x. The graphic representation of the emoticon
#'   \item y. The meaning of the emoticon
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_emoticons
#' @usage data(hash_emoticons)
#' @format A data frame with 75 rows and 2 variables
#' @references \url{http://www.lingo2word.com/lists/emoticon_listH.html}
#' @examples
#' \dontrun{
#' library(data.table)
#' hash_emoticons[c(':-(', '0;)')]
#' }
NULL
