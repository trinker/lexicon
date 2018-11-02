pacman::p_load_gh('trinker/textreadr', 'trinker/sentimentr')
pacman::p_load(dplyr, tidyr)

x <- 'http://www.saifmohammad.com/Lexicons/NRC-Emotion-Lexicon-v0.92.zip' %>%
    download() 

temp <- tempdir()

x %>%
    unzip(exdir = temp) 

reg <- termco::colo("NRC-Emotion-Lexicon", not='\\.zip$')
loc <- dir(temp, full.names = TRUE)[grepl(reg, dir(temp), ignore.case=TRUE, perl=TRUE)]
fl <- dir(loc, full.names = TRUE)[grepl('NRC-Emotion-Lexicon', dir(loc), ignore.case=TRUE, perl=TRUE)]


skip <- grep("anger.+\\d", readLines(fl))[1] - 1

nrc_long <- read.table(fl, sep ="\t", header=FALSE, skip = skip) %>%
    setNames(c('term', 'emotion', 'value')) %>%
    tbl_df() %>%
    mutate(term = as.character(term))


nrc <- spread(nrc_long, emotion, value) 

hash_sentiment_nrc <- nrc %>%
    select(term, positive, negative) %>%
    mutate(sentiment = positive - negative) %>%
    filter(sentiment != 0) %>%
    select(term, sentiment) %>%
    sentimentr::as_key()

nrc_emotions <- nrc %>%
    select(-positive, -negative)

# pack.skel(hash_sentiment_nrc, nrc_emotions)


pax:::roxdat(hash_sentiment_nrc, 'hash_sentiment_nrc')
pax:::roxdat(nrc_emotions, 'nrc_emotions')

library(tidyverse)
hash_nrc_emotions <- lexicon::nrc_emotions %>%
    gather(emotion, indicator, -term) %>%
    filter(indicator > 0) %>%
    select(-indicator) %>%
    rename(token = term) %>%
    distinct() %>%
    data.table::as.data.table()


data.table::setkey(hash_nrc_emotions, 'token')



pax::new_data(hash_nrc_emotions)
pax:::roxdat(hash_nrc_emotions, 'hash_nrc_emotions')
