#' Get Available \pkg{lexicon} Data
#'
#' See available \pkg{lexicon} data a data.frame.
#'
#' @param regex A regex to search for within the data columns.
#' @param \ldots Other arguments passed to \code{grep}.
#' @return Returns a data.frame
#' @export
#' @examples
#' available_data()
#' available_data('hash_')
#' available_data('hash_sentiment')
#' available_data('python')
#' available_data('prof')
#' available_data('English')
#' available_data('Stopword')
available_data <- function(regex = NULL, ...){


    results <- utils::data(package = 'lexicon')[["results"]]
    dat <- stats::setNames(data.frame(results[, 3:4, drop = FALSE],
        stringsAsFactors = FALSE), c("Data", "Description"))

    ns <- getNamespaceExports(loadNamespace('lexicon'))
    ns <- ns[!ns %in% c("available_data", 'grady_pos_feature')]
    dat <- rbind.data.frame(
        dat,
        data.frame(
            Data = ns,
            Description = c('Jockers Sentiment Polarity Table', 'Jockers Sentiment Data Set'),
            stringsAsFactors = FALSE
        )
    )
    dat <- dat[order(dat[['Data']]),]
    row.names(dat) <- NULL

    if (!is.null(regex)){
        locs <- sort(unique(unlist( lapply(dat, function(x){ grep(regex, x, ...) }) )))

        if (length(locs) > 0) {
            dat <- dat[locs,]
        } else {
            warning('`regex` not found, returning all available data')
        }
    }

    dat 

}

