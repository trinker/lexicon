pacman::p_load(xml2, rvest, tidyverse)

profanity_von_ahn <- 'http://www.cs.cmu.edu/~biglou/resources/bad-words.txt' %>%
    readLines() %>%
    tolower() %>%
    unique() %>%
    sort()


pax::new_data(profanity_von_ahn)
pax:::roxdat(profanity_von_ahn, 'profanity_von_ahn')
