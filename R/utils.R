# .pkgenv <- new.env(parent=emptyenv())
# 
# 
# .onAttach<- function(libname, pkgname) {
# 
#     flloc <- system.file(package='lexicon', 'data/hash_valence_shifters.rda')
#     load(flloc, envir = .pkgenv, verbose = FALSE)
#     # data("hash_valence_shifters", package = "lexicon", envir = .pkgenv) # this limits to pkg env
#     .pkgenv[["hash_valence_shifters2"]] <- .pkgenv[['hash_valence_shifters']]
#     rm('hash_valence_shifters', envir = .pkgenv)
# }


as_key <- function(x, comparison = TRUE,  sentiment = TRUE, ...){

    stopifnot(is.data.frame(x))
    class(x) <- 'data.frame'
    
    culprits <- NULL
    if (length(x[[1]]) != length(unique(x[[1]]))) {
        x <- x[!duplicated(x[[1]]), ]
    }

    if (any(grepl("[A-Z]", x[[1]]))) {
        x[[1]] <- tolower(x[[1]])
    }

    
    if (is.factor(x[[1]])) {
        x[[1]] <- as.character(x[[1]])
    }

    if (!is.character(x[[1]])) stop("Column 1 must be character")
    if (isTRUE(sentiment) && !is.numeric(x[[2]])) stop("Column 2 must be numeric")

    colnames(x) <- c("x", "y")

    if (!is.null(comparison)) {
         
        x <- x[!x[["x"]] %in% c("acute", "acutely", "ain't", "although", "aren't", "barely", 
            "but", "can't", "cannot", "certain", "certainly", "colossal", 
            "colossally", "couldn't", "deep", "deeply", "definite", "definitely", 
            "didn't", "doesn't", "don't", "enormous", "enormously", "extreme", 
            "extremely", "faintly", "few", "greatly", "hardly", "hasn't", 
            "haven't", "heavily", "heavy", "high", "highly", "however", "huge", 
            "hugely", "immense", "immensely", "incalculable", "incalculably", 
            "isn't", "least", "little", "massive", "massively", "mightn't", 
            "more", "much", "mustn't", "neither", "never", "no", "nobody", 
            "none", "nor", "not", "only", "particular", "particularly", "purpose", 
            "purposely", "quite", "rarely", "real", "really", "seldom", "serious", 
            "seriously", "severe", "severely", "shan't", "shouldn't", "significant", 
            "significantly", "slightly", "sparesly", "sporadically", "sure", 
            "surely", "totally", "true", "truly", "vast", "vastly", "very", 
            "very few", "very little", "wasn't", "weren't", "won't", "wouldn't"
        ), ]
    }
    data.table::setDT(x)
    x <- x[order(x),]

    data.table::setkey(x, "x")
    x
}   
    
# comparison <- le
    
    
    
    