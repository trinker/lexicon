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
#' Original Licensing:
#' The dictionary is free to use. If you use it for an academic publication, we 
#' ask that you cite it using the citation below. If it is used in anything other 
#' than an academic publication, we ask that you provide a credit and link to SlangSD.com.
#' 
#' article{DBLP:journals/corr/Wu-etal16,
#'   author    = {Liang Wu and Fred Morstatter and Huan Liu},
#'   title     = {SlangSD: Building and Using a Sentiment Dictionary of Slang 
#'                Words for Short-Text Sentiment Classification},
#'   journal   = {CoRR},
#'   volume    = {abs/1608.05129},
#'   year      = {2016},
#'   url       = {http://arxiv.org/abs/1608.05129},
#'   timestamp = {Wed, 17 Aug 2016 23:32:57 GMT}
#' }
#' @docType data 
#' @keywords datasets 
#' @name hash_sentiment_slangsd 
#' @usage data(hash_sentiment_slangsd) 
#' @format A data frame with 48,277 rows and 2 variables 
#' @references Wu, L., Morstatter, F.,  and Liu, H. (2016). SlangSD: Building 
#' and using a sentiment dictionary of slang words for short-text sentiment 
#' classification.  CoRR. abs/1168.1058.  1-15.  \cr \cr
#' http://slangsd.com
NULL 

