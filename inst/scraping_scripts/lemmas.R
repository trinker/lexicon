#' Lemmatization List
#'
#' A dataset based on M\u{e}chura's (2016) English lemmatization list.  This
#' data set can be useful for join style lemma replacement of inflected token
#' forms to their root lemmas.  While this is not a true morphalogical analysis
#' this style of lemma replacement is fast and typically still robust.
#'
#' @details
#' \itemize{
#'   \item token. An inflected token with affixes
#'   \item lemma. A base form
#' }
#'
#' @docType data
#' @keywords datasets
#' @name hash_lemmas
#' @usage data(hash_lemmas)
#' @format A data frame with 41,533 rows and 2 variables
#' @references M\u{e}chura, M. B. (2016). \emph{Lemmatization list: English (en)} [Data file]. Retrieved from \url{http://www.lexiconista.com}
NULL




p_load(textreadr, rvest, xml2, data.table, dplyr)

zips <- 'http://www.lexiconista.com/datasets/lemmatization/' %>%
    read_html() %>%
    html_nodes(xpath = "//div[@class='link zip']/a") %>%
    html_attr('href')

lapply(zips[5], function(x){

#    x <- zips[5]

    loc <- sprintf("http://www.lexiconista.com/%s", x) %>%
        textreadr::download()

    unzip(loc, exdir = dirname(loc))

    hash_lemmas1 <- readLines(sub("zip$", "txt", loc)) %>%
        {read.csv(text = ., sep = "\t", header=FALSE, stringsAsFactors = FALSE)} %>%
        setNames(c('lemma', 'token')) %>%
        tbl_df() %>%
        mutate_all(funs(tolower)) %>%
        filter(!grepl("[^ -~]", lemma) & !grepl("[^ -~]", token))%>%
        select(token,lemma)

    hash_lemmas <- hash_lemmas1 %>%
        filter(
            !(token == "'d" & lemma == 'have'),
            !token %in% c("'s", "ai", "axes", 'bottle-fed', 'bottle-feeding',
                'canvasses', 'dying', 'ellipses', "matter", "mattest", "putting",
                'staves', 'willies'),
            !(token == "altercations" & lemma == 'alteration'),
            !(token == "analyses" & lemma == 'analyse'),
            !(token %in% c("annexed", "annexes", "annexing") & lemma == 'annexe'),
            !(token %in% c("appalled", "appalling") & lemma == 'appal'),
            !(token == "arses" & lemma == 'arsis'),
            !(token == "asses" & lemma == 'asse'),
            !(token == "attaches" & lemma == 'attache'),
            !(token == "aunties" & lemma == 'auntie'),
            !(token %in% c("axed", "axes", "axing") & lemma == 'axe'),
            !(token == "bases" & lemma == 'basis'),
            !(token %in% c("bathed", "bathing") & lemma == 'bathe'),
            !(token %in% c("belied", "belies", "belying") & lemma == 'belie'),
            !(token %in% c("best", "better") & lemma == 'well'),
            !(token %in% c("blondest", "blonder") & lemma == 'blonde'),
            !(token %in% c("boded") & lemma == 'bide'),
            !(token %in% c("bogies") & lemma == 'bogy'),
            !(token %in% c("caddies") & lemma == 'caddie'),
            !(token %in% c("calories") & lemma == 'calory'),
            !(token %in% c("calves") & lemma == 'calve'),
            !(token %in% c("catalyses") & lemma == 'catalyse'),
            !(token %in% c("chaperoning", "chaperoned") & lemma == 'chaperon'),
            !(token %in% c("cookies") & lemma == 'cooky'),
            !(token %in% c("coolies") & lemma == 'coolie'),
            !(token %in% c("criteria") & lemma == 'criterium'),
            !(token %in% c("crosses") & lemma == 'crosse'),
            !(token %in% c("curries") & lemma == 'currie'),
            !(token %in% c("dearies") & lemma == 'dearie'),
            !(token %in% c("developed", "developing") & lemma == 'develope'),
            !(token %in% c("diagnoses") & lemma == 'diagnosis'),
            !(token %in% c("dialyses") & lemma == 'dialyse'),
            !(token %in% c("discusses") & lemma == 'discus'),
            !(token %in% c("distilled", "distilling") & lemma == 'distil'),
            !(token %in% c("does") & lemma == 'doe'),
            !(token %in% c("doggies") & lemma == 'doggie'),
            !(token %in% c("doses") & lemma == 'dos'),
            !(token %in% c("eerier", "eeriest") & lemma == 'eery'),
            !(token %in% c("elytra") & lemma == 'elytrum'),
            !(token %in% c("enrolled", "enrolling") & lemma == 'enrol'),
            !(token %in% c("enthralled", "enthralling") & lemma == 'enthral'),
            !(token %in% c("fantasies") & lemma == 'fantasie'),
            !(token %in% c("fortes") & lemma == 'fortis'),
            !(token %in% c("forties") & lemma == 'fourty'),
            !(token %in% c("freebies") & lemma == 'freeby'),
            !(token %in% c("fulfilling", "fulfilled") & lemma == 'fulfil'),
            !(token %in% c("gelled", "gelling") & lemma == 'gel'),
            !(token %in% c("goodies") & lemma == 'goodie'),
            !(token %in% c("grannies") & lemma == 'grannie'),
            !(token %in% c("groupies") & lemma == 'groupie'),
            !(token %in% c("halves") & lemma == 'halve'),
            !(token %in% c("hankies") & lemma == 'hankie'),
            !(token %in% c("hippies") & lemma == 'hippy'),
            !(token %in% c("horsier", "horsiest") & lemma == 'horsy'),
            !(token %in% c("hydrolyses") & lemma == 'hydrolyse'),
            !(token %in% c("imagines") & lemma == 'imago'),
            !(token %in% c("insignias") & lemma == 'insigne'),
            !(token %in% c("installed", "installing") & lemma == 'instal'),
            !(token %in% c("instilled", "instilling") & lemma == 'instil'),
            !(token %in% c("junkies") & lemma == 'junky'),
            !(token %in% c("lambasted", "lambasting") & lemma == 'lambast'),
            !(token %in% c("least") & lemma == 'little'),
            !(token %in% c("leaves") & lemma == 'leaf'),
            !(token %in% c("lefties") & lemma == 'leftie'),
            !(token %in% c("lenses") & lemma == 'lense'),
            !(token %in% c("lives") & lemma == 'live'),
            !(token %in% c("luxes") & lemma == 'luxe'),
            !(token %in% c("lyses") & lemma == 'lyse'),
            !(token %in% c("maladies") & lemma == 'maladie'),
            !(token %in% c("masses") & lemma == 'masse'),
            !(token %in% c("metamorphoses") & lemma == 'metamorphose'),
            !(token %in% c("mimicked", "mimicking") & lemma == 'mimick'),
            !(token %in% c("misdiagnoses") & lemma == 'misdiagnosis'),
            !(token %in% c("more", "most") & lemma == 'many'),
            !(token %in% c("nannies") & lemma == 'nannie'),
            !(token %in% c("ora") & lemma == 'oris'),
            !(token %in% c("orgies") & lemma == 'orgie'),
            !(token %in% c("paled", "paling") & lemma == 'pal'),
            !(token %in% c("palled", "palling") & lemma == 'pall'),
            !(token %in% c("panties") & lemma == 'pantie'),
            !(token %in% c("paralyses") & lemma == 'paralyse'),
            !(token %in% c("paraphrases") & lemma == 'paraphrasis'),
            !(token %in% c("phalanges") & lemma == 'phalanx'),
            !(token %in% c("phases") & lemma == 'phasis'),
            !(token %in% c("phoniest", "phonier") & lemma == 'phoney'),
            !(token %in% c("phases") & lemma == 'phasis'),
            !(token %in% c("pinkies") & lemma == 'pinkie'),
            !(token %in% c("pixies") & lemma == 'pixy'),
            !(token %in% c("pre-sets") & lemma == 'pre-set'),
            !(token %in% c("premiered", "premiering") & lemma == 'premiere'),
            !(token %in% c("programmed", "programming") & lemma == 'programme'),
            !(token %in% c("proof-reading", "proof-reads") & lemma == 'proofread'),
            !(token %in% c("protozoa") & lemma == 'protozoon'),
            !(token %in% c("psyched", "psyches", "psyching") & lemma == 'psyche'),
            !(token %in% c("psychoanalyses") & lemma == 'psychoanalyse'),
            !(token %in% c("rases") & lemma == 'ras'),
            !(token %in% c("re-analyses") & lemma == 're-analyse'),
            !(token %in% c("reprogrammed", 'reprogramming') & lemma == 'reprogramme'),
            !(token %in% c("routing", "routed") & lemma == 'rout'),
            !(token %in% c("nighties") & lemma == 'nighty'),
            !(token %in% c("shelves") & lemma == 'shelve'),
            !(token %in% c("shorties") & lemma == 'shortie'),
            !(token %in% c("singing") & lemma == 'singe'),
            !(token %in% c("skied") & lemma == 'sky'),
            !(token %in% c("sledge-hammers") & lemma == 'sledge-hammer'),
            !(token %in% c("softies") & lemma == 'softie'),
            !(token %in% c("spelled") & lemma == 'conjurer'),
            !(token %in% c("spun") & lemma == 'spin-dry'),
            !(token %in% c("stonier", "stoniest") & lemma == 'stoney'),
            !(token %in% c("swinging") & lemma == 'swinge'),
            !(token %in% c("synapses") & lemma == 'synapsis'),
            !(token %in% c("syringes") & lemma == 'syrinx'),
            !(token %in% c("taxes") & lemma == 'taxis'),
            !(token %in% c("tempi") & lemma == 'tempus'),
            !(token %in% c("testes") & lemma == 'teste'),
            !(token %in% c("thieves") & lemma == 'thieve'),
            !(token %in% c("thromboses") & lemma == 'thrombose'),
            !(token %in% c("tinged", "tinging") & lemma == 'ting'),
            !(token %in% c("whirred", "whirring") & lemma == 'whirr'),
            !(token %in% c("whizzes", "whizzing", "whizzed") & lemma == 'whizz'),
            !(token %in% c("worse", "worst") & lemma %in% c('wrong', 'ill')),
            !(token %in% c("yuppies") & lemma == 'yuppy'),
            !(token %in% c("zoonoses") & lemma == 'zoonose'),
            !(token %in% c('also'))
                    ) %>%
        data.table::as.data.table()

    data.table::setkey(hash_lemmas, 'token')

    uDT <- unique(hash_lemmas)
    if (nrow(uDT) != nrow(hash_lemmas)){
        hash_lemmas[, "primary":=FALSE]
        hash_lemmas[uDT, primary:=TRUE, mult="first"][]

        hash_lemmas[hash_lemmas[primary != TRUE,][['token']]] %>% as.data.frame()
    }

    #hash_lemmas['goodies']
    hash_lemmas

})


clipr::write_clip(capture.output(acc.roxygen2::dat4rox(hash_lemmas)))
clipr::write_clip(paste(paste0("\\code{", names(table(hash_lemmas$pos)), "}"), collapse = ", "))

pax::new_data(hash_lemmas)

## removed `as` and sorted alphabetically on 2018-10-13
hash_lemmas <- lexicon::hash_lemmas

hash_lemmas <- hash_lemmas[token != 'as',][, token := trimws(token)][, lemma := trimws(lemma)][order(token),]

data.table::setkey(hash_lemmas, 'token')
hash_lemmas['skilled']


pax::new_data(hash_lemmas)



