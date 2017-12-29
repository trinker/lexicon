pacman::p_load(dplyr)

enable_word_list <- 'http://www.puzzlers.org/pub/wordlists/enable1.txt' %>%
    readLines()


pax::new_data(enable_word_list, stand.alone = TRUE)
