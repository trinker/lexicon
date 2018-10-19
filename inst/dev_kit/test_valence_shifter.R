if (!require("pacman")) install.packages("pacman")
pacman::p_load(lexicon)


test_valence_shifter <- function(
        valence_shifter_table = lexicon::hash_valence_shifters,
        sentiment_tables = lexicon::available_data('hash_sentiment')[['Data']]
    ){

    valence_words <- valence_shifter_table[['x']]

    overlaps <- lapply(sentiment_tables, function(x){

        sent_hash <- eval(parse(text = paste0('lexicon::', x)))
        intersect(sent_hash[['x']], valence_words)
        
    })

    names(overlaps) <- sentiment_tables

    class(overlaps) <- 'test_valence_shifter'
    overlaps

}

print.test_valence_shifter <- function(x, ...){

    class(x) <- 'list'
    bads <- x[lengths(x) > 0]

    if (length(bads) == 0) {
        textclean:::all_good()
    }

    intersecting <- Map(function(x, y){
        
        paste0(x,':\n\n    - ', y, '\n')

    }, names(bads), lapply(bads, function(x) paste(shQuote(x), collapse = ', ')))

    cat(paste0(
        "The following tables contained these words\n", 
        "overlapping with the supplied valence shifter table:\n\n"
    ))
    cat(paste(unlist(intersecting), collapse = '\n\n\n'))
}




test_valence_shifter(lexicon::hash_valence_shifters)