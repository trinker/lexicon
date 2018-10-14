pacman::p_load(xml2, rvest, tidyverse, jsonlite)

profanity_racist <- 'https://raw.githubusercontent.com/words/profanities/master/script/racial.txt' %>%
    readLines() %>%
    tolower() %>%
    unique() %>%
    sort()


pax::new_data(profanity_racist)
pax:::roxdat(profanity_racist, 'profanity_racist')
