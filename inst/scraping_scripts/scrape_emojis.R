###=====================================================================
if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, textreadr)
pacman::p_load_current_gh('hadley/emo')

## encoding function
to_byte <- function(x){
    Encoding(x) <- "latin1"
    iconv(x, "latin1", "ASCII", "byte")
}

# sentiment function from:
# P. Kralj Novak, J. Smailovic, B. Sluban, I. Mozetic,
# Sentiment of Emojis, PLoS ONE 10(12): e0144296, doi:10.1371/journal.pone.0144296, 2015.
senti_score <- function(neg, neu, pos){
    (-1*neg + 0*neu + pos)/(neg+neu+pos)
}


## read in sentiment emojis and merge with emo and convert encoding
set.seed(10)
emojis_sentiment <- jis %>%
    filter(lengths(runes) == 1) %>%
    select(name, emoji, category, runes) %>%
    mutate(
        category = tolower(category),
        uni = tolower(gsub('^U\\+', '0x', runes))
    ) %>%
    inner_join(readr::read_csv('inst/scraping_scripts/data/Emoji_Sentiment_Data_v1.0.csv'), by = 'uni') %>%
    mutate(
        sentiment = senti_score(negative, neutral, positive),
        polarity = ifelse(sentiment < 0, 'negative', ifelse(sentiment > 0, 'positive', 'neutral')),
        byte = to_byte(emoji),
        id = paste0('lexicon', stringi::stri_rand_strings(length(byte), 20, '[a-z]'))
    ) %>%
    select(-c(runes, uni, emoji, name2)) %>%
    select(byte, name, id, sentiment, polarity, everything())

View(emojis_sentiment)


hash_sentiment_emojis <- data.table::setDT(setNames(emojis_sentiment[c('id', 'sentiment')], c('x', 'y')))
data.table::setkey(hash_sentiment_emojis, "x")
pax::new_data(hash_sentiment_emojis)

emojis_sentiment <- as.data.frame(
    emojis_sentiment%>%
        dplyr::mutate(name = to_byte(name)) %>%
        dplyr::mutate(name = gsub('(<e2><80><9c>|<e2><80><99>|<e2><80><9d>)', "'", name)),
    stringsAsFactors = FALSE
)
pax::new_data(emojis_sentiment)


hash_emojis <- data.table::setDT(
    setNames(
        emojis_sentiment[c('byte', 'name')] %>%
            dplyr::mutate(name = to_byte(name)) %>%
            dplyr::mutate(name = gsub('(<e2><80><9c>|<e2><80><99>|<e2><80><9d>)', "'", name)),
        c('x', 'y')
    ))

data.table::setkey(hash_emojis, "x")
pax::new_data(hash_emojis)

hash_emojis_identifier <- data.table::setDT(setNames(emojis_sentiment[c('byte', 'id')], c('x', 'y')))
data.table::setkey(hash_emojis_identifier, "x")
pax::new_data(hash_emojis_identifier)

## create as a data set and as a sentiment hash table


## use this for making replacement function 9requires conversion with to_byte above)
pp <- gsub('[\t]', '    ', readLines("C://Users//Tyler//Desktop//new 2.txt"))





###=====================================================================

if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, textreadr)


emojis <- 'https://raw.githubusercontent.com/today-is-a-good-day/emojis/master/emDict.csv' %>%
    readr::read_delim(';') %>%
    setNames(gsub('[^a-z]+', '_', tolower(colnames(.)))) %>%
    rename(name = description) %>%
    mutate(
        name = tolower(name)
    )


















###=====================================================================
## script derived from: https://github.com/today-is-a-good-day/emojis

## dependencies
if (!require("pacman")) install.packages("pacman")
pacman::p_load(rvest, magrittr, dplyr)

# reference website
url <- "http://apps.timwhitlock.info/emoji/tables/unicode"



# get emoticons
emoticons1 <- url %>%
    read_html() %>%
    html_nodes(xpath='/html/body/div[2]/div/div/table[1]') %>%
    html_table() %>%
    `[[`(1) %>%
    {data_frame(
        .$Description,
        .$Unicode,
        .$Bytes
    )} %>%
    setNames(c('description', 'unicode', 'bytes'))


# get additional emoticons
emoticons2 <- url %>%
    read_html() %>%
    html_nodes(xpath='/html/body/div[2]/div/div/table[6]') %>%
    html_table() %>%
    `[[`(1) %>%
    {data_frame(
        .$Description,
        .$Unicode,
        .$Bytes
    )} %>%
    setNames(c('description', 'unicode', 'bytes'))


# get dingbats
dingbats <- url %>%
    read_html() %>%
    html_nodes(xpath='/html/body/div[2]/div/div/table[2]') %>%
    html_table() %>%
    `[[`(1) %>%
    {data_frame(
        .$Description,
        .$Unicode,
        .$Bytes
    )} %>%
    setNames(c('description', 'unicode', 'bytes'))


# get transports
transport1 <- url %>%
    read_html() %>%
    html_nodes(xpath='/html/body/div[2]/div/div/table[3]') %>%
    html_table() %>%
    `[[`(1) %>%
    {data_frame(
        .$Description,
        .$Unicode,
        .$Bytes
    )} %>%
    setNames(c('description', 'unicode', 'bytes'))


# get additional transports
transport2 <- url %>%
    read_html() %>%
    html_nodes(xpath='/html/body/div[2]/div/div/table[7]') %>%
    html_table() %>%
    `[[`(1) %>%
    {data_frame(
        .$Description,
        .$Unicode,
        .$Bytes
    )} %>%
    setNames(c('description', 'unicode', 'bytes'))


# get enclosed emoticons
enclosed <- url %>%
    read_html() %>%
    html_nodes(xpath='/html/body/div[2]/div/div/table[4]') %>%
    html_table() %>%
    `[[`(1) %>%
    {data_frame(
        .$Description,
        .$Unicode,
        .$Bytes
    )} %>%
    setNames(c('description', 'unicode', 'bytes'))


# get uncategorized emoticons
uncategorized <- url %>%
    read_html() %>%
    html_nodes(xpath='/html/body/div[2]/div/div/table[5]') %>%
    html_table() %>%
    `[[`(1) %>%
    {data_frame(
        .$Description,
        .$Unicode,
        .$Bytes
    )} %>%
    setNames(c('description', 'unicode', 'bytes'))


# get additional other emoticons
addothers <- url %>%
    read_html() %>%
    html_nodes(xpath='/html/body/div[2]/div/div/table[8]') %>%
    html_table() %>%
    `[[`(1) %>%
    {data_frame(
        .$Description,
        .$Unicode,
        .$Bytes
    )} %>%
    setNames(c('description', 'unicode', 'bytes'))





# combine all dataframes to overall dataframe
emojis <- bind_rows(
    emoticons1,
    emoticons2,
    dingbats,
    transport1,
    transport2,
    enclosed,
    uncategorized,
    addothers
)  %>%
    rename(name = description) %>%
    mutate(
        name = tolower(name),
        uni = tolower(gsub('^U\\+', '0x', unicode))
    ) %>%
    full_join(readr::read_csv('inst/scraping_scripts/data/Emoji_Sentiment_Data_v1.0.csv'), by = 'uni') %>%
    mutate(
        sentiment = senti_score(negative, neutral, positive)
    )


