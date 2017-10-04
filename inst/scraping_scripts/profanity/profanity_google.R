pacman::p_load(xml2, rvest, tidyverse)

profanity_google <- 'https://raw.githubusercontent.com/alvations/expletives/master/data/gizmodo-google-473.txt' %>%
    textreadr::download() %>%
    readLines() %>%
    sort() %>%
    unique() %>%
    `[`(-1)



pax::new_data(profanity_google)
pax:::roxdat(profanity_google, 'profanity_google')
