#' Pronouns
#'
#' A dataset containing pronouns categorized by type, singular, point_of_view,
#' and use.  Note that 'you', and 'yours' appear twice because 'you' can be
#' singular or plural.
#'
#' @details
#' \itemize{
#'   \item pronoun. The pronoun.
#'   \item type. The pronoun type; either "personal", "reflexive", or "possessive".
#'   \item singular. logical.  If \code{TRUE} the pronoun is singular, otherwise it's plural.
#'   \item point_of_view. The point of view; either "first", "second", or "third".
#' }
#'
#' @docType data
#' @keywords datasets
#' @name pos_df_pronouns
#' @usage data(pos_df_pronouns)
#' @format A data frame with 34 rows and 5 variables
#' @references
#' http://www.english-grammar-revolution.com/list-of-pronouns.html
NULL
