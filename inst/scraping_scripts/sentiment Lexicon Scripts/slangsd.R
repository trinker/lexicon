pacman::p_load(qdapRegex, dplyr, data.table, readr, textreadr, sentimentr)

loc <- file.path(tempdir(), "slangsd")
dir.create(loc)

## encoding function
to_byte <- function(x){
    Encoding(x) <- "latin1"
    iconv(x, "latin1", "ASCII", "byte")
}


'http://slangsd.com/data/SlangSD.zip' %>%
    textreadr::download() %>%
    unzip(exdir = loc)

slangsd <- read.csv(file.path(loc, 'slangSD.txt'), sep="\t",
    header = FALSE, stringsAsFactors = FALSE) %>%
    setNames(c('x', 'y'))


## remove 0
## divide by 2

slangsd <- slangsd %>%
    tbl_df() %>%
    filter(y != 0) %>%
    mutate(
        y = y/2,
        x = tolower(x)
    ) %>%
    filter(grepl('^[a-z \']+$', x)) %>%
    mutate(y = as.numeric(y)) %>%
    filter(!is.na(x) & !is.na(y)) %>%
    as.data.frame(stringsAsFactors = FALSE)

hash_sentiment_slangsd <- sentimentr::as_key(slangsd)

pax::new_data(hash_sentiment_slangsd, stand.alone = TRUE)
