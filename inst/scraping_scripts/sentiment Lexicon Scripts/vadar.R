pacman::p_load(qdapRegex, dplyr, data.table, readr, textreadr, textshape, sentimentr, stansent, jsonlite)

loc <- 'https://raw.githubusercontent.com/cjhutto/vaderSentiment/master/vaderSentiment/vader_lexicon.txt'

vadar <- read.csv(loc, sep="\t", header = FALSE, stringsAsFactors = FALSE) %>%
    setNames(c('x', 'y', 'w', 'z'))


vadar <- vadar %>%
    tbl_df() %>%
    select(x, y) %>%
    filter(!grepl('_', x)) %>%
    mutate(y = as.numeric(y)) %>%
    filter(!is.na(x) & !is.na(y) & y != 0) %>%
    filter(grepl('^[a-zA-Z]', x)) %>%
    as.data.frame(stringsAsFactors = FALSE)

hash_sentiment_vadar <- sentimentr::as_key(vadar)

pax::new_data(hash_sentiment_vadar)
