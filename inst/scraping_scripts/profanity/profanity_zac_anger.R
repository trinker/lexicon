pacman::p_load(xml2, rvest, tidyverse, jsonlite)

profanity_zac_anger <- 'https://raw.githubusercontent.com/zacanger/profane-words/master/words.json' %>%
    jsonlite::fromJSON() %>%
    tolower() %>%
    unique() %>%
    sort()


pax::new_data(profanity_zac_anger)
pax:::roxdat(profanity_zac_anger, 'profanity_zac_anger')
