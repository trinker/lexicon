pacman::p_load(xml2, rvest, tidyverse)

profanity_banned <- 'http://www.bannedwordlist.com/lists/swearWords.txt'  %>%
    readLines() %>%
    sort() %>%
    unique()



pax::new_data(profanity_banned)
pax:::roxdat(profanity_banned, 'profanity_banned')
