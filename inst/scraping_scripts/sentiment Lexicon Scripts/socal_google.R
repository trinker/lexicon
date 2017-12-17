pacman::p_load(qdapRegex, dplyr, data.table, readr, textreadr, textshape, sentimentr, stansent, jsonlite)

loc <- 'https://raw.githubusercontent.com/sfu-discourse-lab/SO-CAL/master/Resources/dictionaries/English/google_dict.txt'

socal_google <- read.csv(loc, sep="\t", header = FALSE, stringsAsFactors = FALSE) %>%
    setNames(c('x', 'a', 'y')) %>%
    select(-a) %>%
    tbl_df() %>%
    mutate(
        y = as.numeric(y),
        x = gsub('-', ' ', x)
    ) %>%
    filter(!is.na(x) & !is.na(y) & y != 0) %>%
    filter(grepl('^[a-zA-Z]', x)) %>%
    as.data.frame(stringsAsFactors = FALSE)

hash_sentiment_socal_google <- sentimentr::as_key(socal_google)

pax::new_data(hash_sentiment_socal_google)
