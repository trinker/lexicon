#' Get Available \pkg{lexicon} Data
#'
#' See available \pkg{lexicon} data a data.frame.
#'
#' @return Returns a data.frame
#' @export
#' @examples
#' available_data()
available_data <- function(){


    results <- utils::data(package = 'lexicon')[["results"]]
    dat <- stats::setNames(data.frame(results[, 3:4, drop = FALSE],
        stringsAsFactors = FALSE), c("Data", "Description"))

    ns <- getNamespaceExports(loadNamespace('lexicon'))
    ns <- ns[!ns %in% c("available_data")]
    dat <- rbind.data.frame(dat,
    data.frame(
        Data = ns,
        Description = c('Jockers Sentiment Polarity Table', 'Jockers Sentiment Data Set'),
        stringsAsFactors = FALSE
    ))
    dat <- dat[order(dat[['Data']]),]
    row.names(dat) <- NULL
    dat
}



