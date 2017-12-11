#' Emoji Sentiment Polarity Lookup Table
#'
#' A dataset containing an emoji identifier key and sentiment value.  This data
#' comes from Novak, Smailovic, Sluban, & Mozetic's (2015) emoji sentiment data.
#' The authors used Twitter data and 83 coders to rate each of the the emoji
#' uses as negative, neutral, or positive to form a probability distribution
#' (\eqn{p_{-}, p_{0}, p_{+}})
#' (\url{http://journals.plos.org/plosone/article/file?id=10.1371/journal.pone.0144296&type=printable})..
#' The sentiment score is calculated via the authors' formula:
#' \eqn{\frac{\sum{(-1*p_{-}, 0 * p_{0}, p_{+}})}{\sum{(p_{-}, p_{0}, p_{+}})}}.
#' This polarity lookup table differs from the other ones included in the
#' \pkg{lexicon} package in the the first column are not words but identifiers.
#' These identifiers are found in the \code{emojis_sentiment} data set.  The
#' typical use case is to utilize the \pkg{textclean} or \pkg{sentimentr}
#' packages' \code{replace_emoji} to swap out emojis for a
#' more computer friendly identifier.
#'
#' @details
#' \itemize{
#'   \item x. Words
#'   \item y. Sentiment
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_sentiment_emojis
#' @usage data(hash_sentiment_emojis)
#' @format A data frame with 734 rows and 2 variables
#' @references Novak, P. K., Smailovic, J., Sluban, B., and Mozetic, I. (2015)
#' Sentiment of emojis. PLoS ONE 10(12). doi:10.1371/journal.pone.0144296 \cr \cr
#' http://kt.ijs.si/data/Emoji_sentiment_ranking/index.html
NULL


#' Emoji Sentiment Data
#'
#' A slightly modified version of Novak, Smailovic, Sluban, & Mozetic's (2015)
#' emoji sentiment data.  The authors used Twitter data and 83 coders to rate
#' each of the the emoji uses as negative, neutral, or positive to form a
#' probability distribution (\eqn{p_{-}, p_{0}, p_{+}})
#' (\url{http://journals.plos.org/plosone/article/file?id=10.1371/journal.pone.0144296&type=printable})..
#' The sentiment score is calculated via the authors' formula:
#' \eqn{\frac{\sum{(-1*p_{-}, 0 * p_{0}, p_{+}})}{\sum{(p_{-}, p_{0}, p_{+}})}}.
#'
#' @details
#' \itemize{
#'   \item byte. Byte code representation of emojis
#'   \item name. Description of the emoji
#'   \item id. An id for the emoji
#'   \item sentiment. Sentiment score of the emoji
#'   \item polarity. The direction of the sentiment
#'   \item category. A category for the emoji
#'   \item frequency. How often the emoji occurred in Novak et. al.'s (2015) data
#'   \item negative. How often Novak et al. (2015) observed the emoji being used negatively
#'   \item neutral. How often Novak et al. (2015) observed the emoji being used neutrally
#'   \item positive. How often Novak et al. (2015) observed the emoji being used positively
#' }
#'
#' @docType data
#' @keywords datasets
#' @name emojis_sentiment
#' @usage data(emojis_sentiment)
#' @format A data frame with 734 rows and 10 variables
#' @references Novak, P. K., Smailovic, J., Sluban, B., and Mozetic, I. (2015)
#' Sentiment of emojis. PLoS ONE 10(12). doi:10.1371/journal.pone.0144296 \cr \cr
#' http://kt.ijs.si/data/Emoji_sentiment_ranking/index.html
NULL


#' Emoji Description Lookup Table
#'
#' A dataset containing ASCII byte code representation of emojis and their
#' accompanying description (from unicode.org).
#'
#' @details
#' \itemize{
#'   \item x. Byte code representation of emojis
#'   \item y. Emoji description
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_emojis
#' @usage data(hash_emojis)
#' @format A data frame with 734 rows and 2 variables
#' @references \url{http://www.unicode.org/emoji/charts/full-emoji-list.html}
NULL




#' Emoji Identifier Lookup Table
#'
#' A dataset containing ASCII byte code representation of emojis and their
#' accompanying identifier (for use in the \pkg{textclean} or \pkg{sentimentr}
#' packages).
#'
#' @details
#' \itemize{
#'   \item x. Byte code representation of emojis
#'   \item y. Emoji description
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_emojis_identifier
#' @usage data(hash_emojis_identifier)
#' @format A data frame with 734 rows and 2 variables
#' @references \url{http://www.unicode.org/emoji/charts/full-emoji-list.html}
NULL

