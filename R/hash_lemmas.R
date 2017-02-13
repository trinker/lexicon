#' Lemmatization List
#'
#' A dataset based on M\u{e}chura's (2016) English lemmatization list.  This
#' data set can be useful for join style lemma replacement of inflected token
#' forms to their root lemmas.  While this is not a true morphalogical analysis
#' this style of lemma replacement is fast and typically still robust.
#'
#' @details
#' \itemize{
#'   \item token. An inflected token with affixes
#'   \item lemma. A base form
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_lemmas
#' @usage data(hash_lemmas)
#' @format A data frame with 41,533 rows and 2 variables
#' @references M\u{e}chura, M. B. (2016). \emph{Lemmatization list: English (en)} [Data file]. Retrieved from \url{http://www.lexiconista.com}
NULL
