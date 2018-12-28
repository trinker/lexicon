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
         
        x <- x[!x[["x"]] %in% c(
            "absolutely", "acute", "acutely", "ain't", "aint", "almost", 
            "although", "aren't", "arent", "barely", "but", "can't", "cannot", 
            "cant", "certain", "certainly", "colossal", "colossally", "considerably", 
            "couldn't", "couldnt", "daren't", "darent", "decidedly", "deep", 
            "deeply", "definite", "definitely", "despite all that", "despite all this", 
            "despite that", "despite this", "didn't", "didnt", "doesn't", 
            "doesnt", "don't", "dont", "enormous", "enormously", "especially", 
            "extreme", "extremely", "faintly", "few", "greatly", "hadn't", 
            "hadnt", "hardly", "hasn't", "hasnt", "haven't", "havent", "heavily", 
            "heavy", "high", "highly", "however", "huge", "hugely", "immense", 
            "immensely", "incalculable", "incalculably", "incredibly", "isn't", 
            "isnt", "kind of", "kinda", "least", "little", "majorly", "massive", 
            "massively", "mightn't", "mightnt", "more", "most", "much", "mustn't", 
            "mustnt", "needn't", "neednt", "neither", "never", "no", "nobody", 
            "none", "nor", "not", "only", "oughtn't", "oughtnt", "particular", 
            "particularly", "partly", "purpose", "purposely", "quite", "rarely", 
            "real", "really", "seldom", "serious", "seriously", "severe", 
            "severely", "shan't", "shant", "shouldn't", "shouldnt", "significant", 
            "significantly", "slightly", "somewhat", "sort of", "sorta", 
            "sparsely", "sporadically", "sure", "surely", "that being said", 
            "totally", "true", "truly", "uber", "vast", "vastly", "very", 
            "very few", "very little", "wasn't", "wasnt", "weren't", "werent", 
            "whereas", "won't", "wont", "wouldn't", "wouldnt"
        ), ]
    }
    data.table::setDT(x)
    x <- x[order(x),]

    data.table::setkey(x, "x")
    x
}   
    
# comparison <- le
    
    
    
    