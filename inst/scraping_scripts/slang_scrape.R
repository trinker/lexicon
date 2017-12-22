if (!require("pacman")) install.packages("pacman"); library(pacman)
pacman::p_load(rvest, magrittr, dplyr, xml2, robotstxt, textshape)

url <- 'http://www.smart-words.org/abbreviations/text.html'

## check robots.txt
paths_allowed(url)

rtxt <- robotstxt(domain='smart-words.org')
rtxt


## scrape

url %>%
    read_html() -> txt

## Parse

##break out into lengthened x (2 in one cell)
## replace slash parts
## remove stupid ones (SO)
## add missing B4
hash_internet_slang <- txt  %>%
    html_nodes(xpath = "//table[@class='tabdin']") %>%
    html_table() %>%
    setNames(c(rep('Acronym', 2), rep('Abbreviation', 2))) %>%
    #tidy_list('Type') %>%
    bind_rows() %>%
    filter(!grepl('^\\s*$', X1)) %>%
    filter(!grepl('^Abbrev|Acron', X1)) %>%
    setNames(c('x', 'y')) %>%
    mutate(
        x = x %>%
            {gsub('(\\()([^)]+)(\\))', '\\2', .)} %>%
            textclean::mgsub(c('J/K', 'N/A'), c('J/K / JK', 'N/A / NA')) %>%
            stringi::stri_split_regex(' / | '),
        y = y %>%
            tolower() %>%
            {gsub('[.?!, ]+$', '', .)} %>%
            trimws() %>%
            stringi::stri_replace_first_regex(
                '(fuck the world / )|(remember / )|( / remember)|( / honest)|(available / )|( \\(fr.+$)|(, original post)',
                ''
            ) %>%
            textclean::mgsub(
                c('thanks god', ' / sex / ', 'thread / .. text / .. transmission', 'whoomp, there it is; meaning "hooray"', 'its friday', 'fine manual', '(just)'),
                c('thank god', ', sex, ', 'text', 'hooray', "it's friday", 'fucking manual', 'just')
            ) %>%
            stringi::stri_replace_first_regex('\\s*/.+$', '')
    ) %>%
    filter(!x %in% c('SO')) %>%
    tidyr::unnest() %>%
    select(x, y) %>%
    mutate(
        y = case_when(x == "FYI" ~ 'for your information', TRUE ~ y) %>%
            trimws(),
        x = x %>% trimws()
    ) %>%
    rbind(
        data_frame(
            x = c('B4', 'LMAO', 'LMFAO', 'LMGTFY', 'LMK', 'LULZ', 'NVMD', 'PITA', 'PPL', 'TBH', 'TIL',
                'YOLO', 'KMS', 'KTHX', 'G2G', 'ETA', 'CYA', 'C-YA', 'BFN', 'BBS'
            ),
            y = c('before', 'laughing my ass off', 'laughing my fucking ass off', 'let me google that for you',
                'let me know', 'laugh out loud at bad evil', 'nevermind', 'pain in the ass', 'people',
                'to be honest', 'today i learned', 'you only live once', 'kill myself', 'ok thanks',
                'got to go', 'estimated time of arrival', rep('see you later', 2), 'bye for now', 'be back soon'
            )
        )
    ) %>%
    arrange(x) %>%
    distinct() %>%
    filter(y != 'end of day') %>%
    data.table::data.table()

data.table::setkey(hash_internet_slang, "x")
hash_internet_slang['TGIF']

pax::new_data(hash_internet_slang, stand.alone = TRUE)

