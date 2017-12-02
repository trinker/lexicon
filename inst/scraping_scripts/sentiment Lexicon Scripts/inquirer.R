pacman::p_load(qdapRegex, dplyr, data.table, readr, textreadr, textshape, sentimentr, stansent, jsonlite)


inquirer <- 'https://raw.githubusercontent.com/williamleif/socialsent/master/socialsent/data/lexicons/inquirer.json' %>%
    textreadr::download() %>%
    fromJSON() %>%
    tidy_list('x', 'y') %>%
    tbl_df() %>%
    filter(!grepl('_', x)) %>%
    mutate(y = as.numeric(y)) %>%
    filter(!is.na(x) & !is.na(y) & y != 0) %>%
    as.data.frame(stringsAsFactors = FALSE)

hash_sentiment_inquirer <- sentimentr::as_key(inquirer)

pax::new_data(hash_sentiment_inquirer)
