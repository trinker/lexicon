pacman::p_load(xml2, rvest, tidyverse)

singular_same_plural_list <- 'https://www.vappingo.com/word-blog/101-words-that-are-both-plural-and-singular/' %>%
    read_html() %>%
    html_nodes('.list-1') %>%
    html_nodes('li') %>%
    html_text() %>%
    {grep('\\(', ., value = TRUE, invert = TRUE)} %>%
    tolower()
