pacman::p_load(xml2, rvest, tidyverse, textreadr, textshape)

cliche_page <- 'https://raw.githubusercontent.com/dunckr/retext-cliches/master/retext-cliches.js' %>%
    textreadr::download() 

cliches <- cliche_page %>%
    readLines() %>%
    textshape::grab_match(
        from = 'a chip off the old block',
        to = 'young and vibrant'
    ) %>%
    stringi::stri_replace_all_regex('^\\s*\'|\',\\s*$', '') %>%
    {gsub('[?!.]$', '', .)}



grep('[^ -~]', cliches, value = TRUE)
grep('[A-Za-z\' ]', cliches, value = TRUE, invert = TRUE)

pax::new_data(cliches, stand.alone = TRUE)
# pax:::roxdat(cliches)
