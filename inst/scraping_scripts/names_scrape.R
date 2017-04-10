pacman::p_load(tidyverse, qdapRegex, xml2, rvest)

'http://names.mongabay.com'

freq_first_names <- bind_rows(
    lapply(c("", 1:3), function(i){

        'http://names.mongabay.com/female_names%s.htm' %>%
            sprintf(i) %>%
            read_html() %>%
            html_table() %>%
            `[[`(1) %>%
            tbl_df()
    }) %>%
        bind_rows() %>%
        rename(n = ApproximateNumber) %>%
        select(Name, n) %>%
        mutate(
            Name = gsub("(.)(.+)", "\\U\\1\\L\\2", Name, perl = TRUE),
            n = as_numeric2(n),
            prop = n/sum(n),
            sex = 'female'
        )
,
    lapply(c("", 3, 6, 9), function(i){

        'http://names.mongabay.com/male_names%s.htm' %>%
            sprintf(i) %>%
            read_html() %>%
            html_table() %>%
            `[[`(1) %>%
            tbl_df()
    }) %>%
        bind_rows() %>%
        rename(n = ApproximateNumber) %>%
        select(Name, n) %>%
        mutate(
            Name = gsub("(.)(.+)", "\\U\\1\\L\\2", Name, perl = TRUE),
            n = as_numeric2(n),
            prop = n/sum(n),
            sex = 'male'
        )
) %>%
    data.table::as.data.table()


freq_last_names <- lapply(c("", 1, 2, 5, 8, 16), function(i){

    'http://names.mongabay.com/most_common_surnames%s.htm' %>%
        sprintf(i) %>%
        read_html() %>%
        html_table() %>%
        `[[`(1) %>%
        tbl_df()
}) %>%
    bind_rows() %>%
    rename(n = ApproximateNumber) %>%
    select(Surname, n) %>%
    mutate(
        Surname = gsub("(.)(.+)", "\\U\\1\\L\\2", Surname, perl = TRUE),
        n = as_numeric2(n),
        prop = n/sum(n)
    ) %>%
    data.table::as.data.table()

pax::new_data(freq_first_names)
pax::new_data(freq_last_names)
