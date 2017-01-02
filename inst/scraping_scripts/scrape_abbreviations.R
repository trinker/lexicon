p_load(rvest, xml2, dplyr)

key_abbreviation <- 'http://public.oed.com/how-to-use-the-oed/abbreviations/' %>%
    read_html() %>%
    html_nodes(xpath='//table') %>%
    lapply(html_table) %>%
    bind_rows() %>%
    filter(grepl("\\.", X1))  %>%
    mutate(
        X1 = tolower(X1),
        X2 = tolower(X2)
    ) %>%
    setNames(c('abbreviation', 'phrase')) %>%
    distinct() %>%
    bind_rows(ab %>%
    setNames(c('abbreviation', 'phrase')))  %>%
    mutate(
        abbreviation = tolower(abbreviation),
        phrase = tolower(phrase)
    ) %>%
    distinct() %>%
    `[`(-1,) %>%
    filter(duplicated(abbreviation)) 


key_abbreviation %>%
    filter(abbreviation == 'p.m.')


ab <- abbreviations[-c(4),]

rownames(ab) <- NULL