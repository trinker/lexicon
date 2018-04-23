p_load(tidyverse, zoo)

'https://en.wikipedia.org/wiki/List_of_emoticons' %>%
    htmltab()


readxl::read_excel('Book1.xlsx', col_names = FALSE) %>%
    mutate(X__12 = trimws(gsub(' or .+$', '', gsub('(^[A-Za-z ]+)([^A-Za-z ].+$)', '\\1', X__12, perl = TRUE)))) %>%
    gather(a, x, -X__12) %>%
    select(x, X__12) %>%
    rename(y = X__12) %>%
    mutate_all(trimws) %>%
    mutate(y =zoo::na.locf(y)) %>%
    mutate(y = gsub('^Evil$', 'devilish', y)) %>%
    dplyr::filter(!grepl('[^ -~]', x)) %>%
    distinct() %>%
    dplyr::filter(!is.na(x)) %>%
    mutate(y = tolower(y)) %>%
    bind_rows(data_frame(
        x = c('~(_8^(I)', '*<|:-)', '</3', '<\\3', '<3', '@};-', '@}->--', '@}-;-\'---', '@>->--',
            'O_O', 'o-o', 'O_o', 'o_O', 'o_o', 'O-O', '\\o/', '*\\0/*'),
        y = c('homer simpson', 'santa claus', rep('broken heart', 2), 'heart', rep('rose', 4),
            rep('surprise', 6), 'cheer', 'cheerleader')
    ))  %>%
    dplyr::filter(!grepl('[^ -~]', x)) %>%
    distinct() %>%
    arrange(y) %>%
    #dput()
    print(n = Inf)


hash_emoticons <- structure(list(x = c("O:-)", "O:)", "0:-3", "0:3", "0:-)", "0:)", 
"0;^)", ":-###..", ":###..", "</3", "<\\3", "\\o/", "*\\0/*", 
"|;-)", "|-O", ":'-(", ":'(", ">:-)", ">:)", "}:-)", "}:)", "3:-)", 
"3:)", ">;)", "%-)", "%)", "<:-|", ":$", ":-(", ":(", ":-c", 
":c", ":-<", ":<", ":-[", ":[", ":-||", ">:[", ":{", ":@", ">:(", 
"<3", "~(_8^(I)", "D-':", "D:<", "D:", "D8", "D;", "D=", "DX", 
":-*", ":*", ":-D", ":D", "8-D", "8D", "x-D", "xD", "X-D", "XD", 
"3", "B^D", "#-)", "@};-", "@}->--", "@}-;-'---", "@>->--", "*<|:-)", 
"',:-|", "',:-l", ":-X", ":X", ":-#", ":#", ":-&", ":&", "<_<", 
">_>", ":-/", ":/", ":-.", ">:\\", ">:/", ":\\", "=/", ":L", 
":S", ":-)", ":)", ":-]", ":]", ":-3", ":3", ":->", ":>", "8-)", 
"8)", ":-}", ":}", ":o)", ":c)", ":^)", "=]", "=)", ":-|", ":|", 
":-O", ":O", ":-o", ":o", ":-0", "8-0", ">:O", "O_O", "o-o", 
"O_o", "o_O", "o_o", "O-O", ":'-)", ":')", ":-J", ":-P", ":P", 
"X-P", "XP", "x-p", "xp", ":-p", ":p", ":-b", ":b", "d:", ">:P", 
":-))", ";-)", ";)", "*-)", "*)", ";-]", ";]", ";^)", ":-,", 
";D"), y = c("angel", "angel", "angel", "angel", "angel", "angel", 
"angel", "being sick", "being sick", "broken heart", "broken heart", 
"cheer", "cheerleader", "cool", "cool", "crying", "crying", "devilish", 
"devilish", "devilish", "devilish", "devilish", "devilish", "devilish", 
"drunk", "drunk", "dumb", "embarrassed", "frown", "frown", "frown", 
"frown", "frown", "frown", "frown", "frown", "frown", "frown", 
"frown", "frown", "frown", "heart", "homer simpson", "horror", 
"horror", "horror", "horror", "horror", "horror", "horror", "kiss", 
"kiss", "laughing", "laughing", "laughing", "laughing", "laughing", 
"laughing", "laughing", "laughing", "laughing", "laughing", "partied all night", 
"rose", "rose", "rose", "rose", "santa claus", "scepticism", 
"scepticism", "sealed lips", "sealed lips", "sealed lips", "sealed lips", 
"sealed lips", "sealed lips", "sideways look", "sideways look", 
"skeptical", "skeptical", "skeptical", "skeptical", "skeptical", 
"skeptical", "skeptical", "skeptical", "skeptical", "smiley", 
"smiley", "smiley", "smiley", "smiley", "smiley", "smiley", "smiley", 
"smiley", "smiley", "smiley", "smiley", "smiley", "smiley", "smiley", 
"smiley", "smiley", "straight face", "straight face", "surprise", 
"surprise", "surprise", "surprise", "surprise", "surprise", "surprise", 
"surprise", "surprise", "surprise", "surprise", "surprise", "surprise", 
"tears of happiness", "tears of happiness", "tongue", "tongue sticking out", 
"tongue sticking out", "tongue sticking out", "tongue sticking out", 
"tongue sticking out", "tongue sticking out", "tongue sticking out", 
"tongue sticking out", "tongue sticking out", "tongue sticking out", 
"tongue sticking out", "tongue sticking out", "very happy", "wink", 
"wink", "wink", "wink", "wink", "wink", "wink", "wink", "wink"
)), class = c( "data.frame"), row.names = c(NA, 
-144L), .Names = c("x", "y"))


library(data.table)
hash_emoticons[c(':-(', '0:)')]

hash_emoticons <- data.table::data.table(hash_emoticons)

data.table::setDT(hash_emoticons)
    hash_emoticons <- hash_emoticons[order(y),]

    data.table::setkey(hash_emoticons, "x")
    