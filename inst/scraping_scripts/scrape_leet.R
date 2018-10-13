if (!require("pacman")) install.packages("pacman"); library(pacman)
p_load(tidyverse, magrittr, rvest, xml2)


txt <- 'https://www.paulbui.net/wl/Leetspeak_alphabet' %>%
    read_html()

tab <- txt %>%
    html_nodes(xpath = '//table[@class="wikitable"]') %>%
    html_table(fill = TRUE) %>%
    `[[`(1) %>%
    slice(1)


leet1 <- as.list(tab) %>%
    `[`(LETTERS) %>% #length()
    lapply(function(x){
        
        y <- trimws(unlist(strsplit(x, '\\s+')))
        grep('^\\s*$', y[!grepl('[^ -~]', y)][-1], invert = TRUE, value = TRUE) #remove non ascii 

    })


txt2 <- 'http://www.gamehouse.com/blog/leet-speak-cheat-sheet/' %>%
    read_html() 

xml_find_all(txt2, ".//br") %>% xml_add_sibling("p", "\n") 
xml_find_all(txt2, ".//br") %>% xml_remove()

dat <- txt2 %>%
    html_nodes(xpath = '//div[@class="letter col-md-4"]') %>%
    html_text()


leet2 <- dat %>%
    stringi::stri_replace_first_regex('^\\s+', '') %>%
    lapply(function(x){
        
        y <- trimws(unlist(strsplit(x, '\n')))
        grep('^\\s*$', y[!grepl('[^ -~]', y)][-1], invert = TRUE, value = TRUE)#remove non asci
        
    }) %>%
    setNames(LETTERS) 


leets <- Map(function(x, y) {sort(unique(c(x, y)))}, leet1, leet2)

unlist(leets)[duplicated(unlist(leets))]



leets


as_leet <- function(x, dictionary = leets, ...){
    
    nms <- names(dictionary)
    y <- strsplit(x, '')
    unlist(lapply(y, function(z) {
    
           locs <- match(toupper(z) , nms)
           z[!is.na(locs)] <- unlist(lapply(na.omit(locs), function(w) {
               sample(dictionary[[w]], 1)        
           }))
           
           paste(z, collapse = '')
            
    }))
}

cat(as_leet(c('I can speak leet.',  'Can your computer do the same?')), sep = '\n')








