#' SlangSD Sentiment Polarity Table
#'
#' A \pkg{data.table} dataset containing a filtered version of Wu, Morstatter, 
#' & Liu's (2016) positive/negative slang word list as sentiment lookup values.
#' All words containing other than \code{"[a-z ']"} have been removed as well as
#' any neutral words.
#'
#' @details
#' \itemize{
#'   \item x. Words
#'   \item y. Sentiment values (+1, -1)
#' }
#' 
#' @docType data 
#' @keywords datasets 
#' @name hash_sentiment_slangsd 
#' @usage data(hash_sentiment_slangsd) 
#' @format A data frame with 48,277 rows and 2 variables 
#' @references Wu, L., Morstatter, F.,  and Liu, H. (2016). SlangSD: Building 
#' and using a sentiment dictionary of slang words for short-text sentiment 
#' classification.  CoRR. abs/1168.1058.  1-15.  \cr \cr
#' \url{http://slangsd.com}
NULL 

