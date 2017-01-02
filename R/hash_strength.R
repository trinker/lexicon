#' Strength Lookup Key
#'
#' A \pkg{data.table} containing a strength lookup key.
#'
#' @details
#' \itemize{
#'   \item x. A power word
#'   \item y. A positive or negative value indicating the direction of strength in relation to the subject
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_strength
#' @usage data(hash_strength)
#' @format A data frame with 2085 rows and 2 variables
#' @references \url{http://www.wjh.harvard.edu/~inquirer/inqdict.txt}
#' @examples
#' \dontrun{
#' library(data.table)
#' hash_strength[c('yield', 'admonish', 'abdicate')]
#' }
NULL
