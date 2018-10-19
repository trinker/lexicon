pacman::p_load(qdapRegex, dplyr, data.table, readr, textreadr, sentimentr, stansent)

loc <- file.path(tempdir(), "senticnet")
dir.create(loc)

'http://sentic.net/senticnet-4.0.zip' %>%
    textreadr::download() %>%
    unzip(exdir = loc)

senticnet <- read.csv(file.path(loc, 'senticnet-4.0/senticnet4.txt'), sep="\t",
    header = FALSE, stringsAsFactors = FALSE) %>%
    setNames(c('x', 'w', 'y'))




senticnet <- senticnet %>%
    tbl_df() %>%
    select(-w) %>%
    filter(!grepl('_', x)) %>%
    mutate(y = as.numeric(y)) %>%
    filter(!is.na(x) & !is.na(y)) %>%
    as.data.frame(stringsAsFactors = FALSE)

hash_sentiment_senticnet <- sentimentr::update_polarity_table(senticnet)


hash_sentiment_senticnet <- sentimentr::update_key(hash_sentiment_senticnet, drop = "sparsely")

pax::new_data(hash_sentiment_senticnet, , stand.alone = TRUE)
