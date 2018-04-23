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
#' @section Copyright: 2015 - Department of Knowledge Technologies
#' @docType data
#' @keywords datasets
#' @name hash_sentiment_emojis
#' @usage data(hash_sentiment_emojis)
#' @format A data frame with 734 rows and 2 variables
#' @references Novak, P. K., Smailovic, J., Sluban, B., and Mozetic, I. (2015)
#' Sentiment of emojis. PLoS ONE 10(12). doi:10.1371/journal.pone.0144296 \cr \cr
#' http://kt.ijs.si/data/Emoji_sentiment_ranking/index.html \cr \cr
#' https://creativecommons.org/licenses/by-sa/4.0/
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
#' @section Copyright: 2015 - Department of Knowledge Technologies
#' @docType data
#' @keywords datasets
#' @name emojis_sentiment
#' @usage data(emojis_sentiment)
#' @format A data frame with 734 rows and 10 variables
#' @references Novak, P. K., Smailovic, J., Sluban, B., and Mozetic, I. (2015)
#' Sentiment of emojis. PLoS ONE 10(12). doi:10.1371/journal.pone.0144296 \cr \cr
#' http://kt.ijs.si/data/Emoji_sentiment_ranking/index.html \cr \cr
#' https://creativecommons.org/licenses/by-sa/4.0/
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
#' COPYRIGHT AND PERMISSION NOTICE
#' 
#' Copyright (c) 1991-2018 Unicode, Inc. All rights reserved.
#' Distributed under the Terms of Use in http://www.unicode.org/copyright.html.
#' 
#' Permission is hereby granted, free of charge, to any person obtaining
#' a copy of the Unicode data files and any associated documentation
#' (the "Data Files") or Unicode software and any associated documentation
#' (the "Software") to deal in the Data Files or Software
#' without restriction, including without limitation the rights to use,
#' copy, modify, merge, publish, distribute, and/or sell copies of
#' the Data Files or Software, and to permit persons to whom the Data Files
#' or Software are furnished to do so, provided that either
#' (a) this copyright and permission notice appear with all copies
#' of the Data Files or Software, or
#' (b) this copyright and permission notice appear in associated
#' Documentation.
#' 
#' THE DATA FILES AND SOFTWARE ARE PROVIDED "AS IS", WITHOUT WARRANTY OF
#' ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
#' WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
#' NONINFRINGEMENT OF THIRD PARTY RIGHTS.
#' IN NO EVENT SHALL THE COPYRIGHT HOLDER OR HOLDERS INCLUDED IN THIS
#' NOTICE BE LIABLE FOR ANY CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL
#' DAMAGES, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
#' DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
#' TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
#' PERFORMANCE OF THE DATA FILES OR SOFTWARE.
#' 
#' Except as contained in this notice, the name of a copyright holder
#' shall not be used in advertising or otherwise to promote the sale,
#' use or other dealings in these Data Files or Software without prior
#' written authorization of the copyright holder.
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
#' COPYRIGHT AND PERMISSION NOTICE
#' 
#' Copyright (c) 1991-2018 Unicode, Inc. All rights reserved.
#' Distributed under the Terms of Use in http://www.unicode.org/copyright.html.
#' 
#' Permission is hereby granted, free of charge, to any person obtaining
#' a copy of the Unicode data files and any associated documentation
#' (the "Data Files") or Unicode software and any associated documentation
#' (the "Software") to deal in the Data Files or Software
#' without restriction, including without limitation the rights to use,
#' copy, modify, merge, publish, distribute, and/or sell copies of
#' the Data Files or Software, and to permit persons to whom the Data Files
#' or Software are furnished to do so, provided that either
#' (a) this copyright and permission notice appear with all copies
#' of the Data Files or Software, or
#' (b) this copyright and permission notice appear in associated
#' Documentation.
#' 
#' THE DATA FILES AND SOFTWARE ARE PROVIDED "AS IS", WITHOUT WARRANTY OF
#' ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
#' WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
#' NONINFRINGEMENT OF THIRD PARTY RIGHTS.
#' IN NO EVENT SHALL THE COPYRIGHT HOLDER OR HOLDERS INCLUDED IN THIS
#' NOTICE BE LIABLE FOR ANY CLAIM, OR ANY SPECIAL INDIRECT OR CONSEQUENTIAL
#' DAMAGES, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE,
#' DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
#' TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
#' PERFORMANCE OF THE DATA FILES OR SOFTWARE.
#' 
#' Except as contained in this notice, the name of a copyright holder
#' shall not be used in advertising or otherwise to promote the sale,
#' use or other dealings in these Data Files or Software without prior
#' written authorization of the copyright holder.
#' @docType data
#' @keywords datasets
#' @name hash_emojis_identifier
#' @usage data(hash_emojis_identifier)
#' @format A data frame with 734 rows and 2 variables
#' @references \url{http://www.unicode.org/emoji/charts/full-emoji-list.html}
NULL

