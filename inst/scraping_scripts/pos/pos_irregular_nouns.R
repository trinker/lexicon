irv <- 'GetDocumentFile.pdf' %>%
    textreadr::read_document()

library(textshape)
library(textclean)
library(dplyr)

pos_df_irregular_nouns1 <- irv %>%
    {grep('ELL', ., value = TRUE)}%>%
    {grep('^(\\(|[A-Za-z]+\\s+ELL)', ., value = TRUE, invert = TRUE)} %>%
    `[`(1:85) %>%
    {gsub('\\s+ELL\\s.+$', '', .)} %>%
    trimws() %>%
    tolower() %>%
    strsplit('\\s+') %>%
    {do.call(rbind, .)} %>%
    as_tibble() %>%
    setNames(c('singular', 'plural')) %>%
    arrange(singular)

wikipedia <- data_frame(
    singular = c('die', 'person', 'appendix', 'apparatus', 'status', 'alumna', 'beau', 
        'cello', 'tableau', 'bureau',
        c('bison', "buffalo", "carp", "cod", "deer", "duck", "fish", "moose", 
            "pike", "salmon", "sheep", "shrimp", "squid", "trout"),
        'syllabus', 'corpus', 'fireman', 'genus', 'radius', 'hippopotamus',
        'fungus', 'index', 'matrix', 'vertex', 'millennium', 'nemesis', 'medium',
        'stratum', 'ovum', 'radius', 'pants', 'panties', 'pantyhose', 'pliers', 
        'scissors', 'shorts', 'suspenders', 'tongs', 'trousers', 'tableau'

    ),
    plural = c('dice', 'people', 'appendices', 'apparatus', 'status', 'alumnae', 'beaux',
        'celli', 'tableaux', 'bureaux',
        c('bison', "buffalo", "carp", "cod", "deer", "duck", "fish", "moose", 
            "pike", "salmon", "sheep", "shrimp", "squid", "trout"),
        'syllabi', 'corpora', 'fireman', 'genera', 'radii', "hippopotamuses",
        'fungi', 'indices', 'matrices', 'vertices', 'millennia', 'nemeses', 'media',
        'strata', 'ova', 'radii', 'pants', 'panties', 'pantyhose', 'pliers', 
        'scissors', 'shorts', 'suspenders', 'tongs', 'trousers', 'tableaux'
    )
)

pos_df_irregular_nouns <- pos_df_irregular_nouns1 %>%
    bind_rows(
        wikipedia %>%
            arrange(singular) %>%
            group_by(singular) %>%
            slice(1) %>%
            dplyr::filter(!singular %in% pos_df_irregular_nouns1[[1]])
    ) %>%
    arrange(singular)



setdiff(lexicon::pos_df_irregular_nouns[[1]], pos_df_irregular_nouns2[[1]])
setdiff(pos_df_irregular_nouns1[[1]], lexicon::pos_df_irregular_nouns[[1]])

https://cms.azed.gov
https://cms.azed.gov/home/GetDocumentFile?id=54de1d89aadebe14a8707103
Arizona Department of Education




pos_df_irregular_nouns <- structure(list(singular = c("addendum", "alga", "alumna", "alumnus", 
"analysis", "antenna", "apparatus", "appendix", "axis", "baby", 
"bacterium", "basis", "beau", "bison", "box", "buffalo", "bureau", 
"bush", "cactus", "calf", "carp", "cello", "child", "cod", "corpus", 
"crisis", "criterion", "curriculum", "datum", "deer", "diagnosis", 
"die", "duck", "dwarf", "echo", "elf", "ellipsis", "fireman", 
"fish", "focus", "foot", "formula", "fungus", "genus", "glass", 
"goose", "half", "hero", "hippopotamus", "hoof", "hypothesis", 
"index", "kangaroo", "knife", "larva", "leaf", "life", "loaf", 
"louse", "man", "matrix", "medium", "memorandum", "millennium", 
"moose", "mouse", "nemesis", "nucleus", "oasis", "octopus", "offspring", 
"ovum", "ox", "panties", "pants", "pantyhose", "parenthesis", 
"penny", "person", "phenomenon", "pike", "pliers", "poppy", "potato", 
"radius", "salmon", "scarf", "scissors", "self", "series", "sheep", 
"shelf", "shorts", "shrimp", "species", "spy", "squid", "status", 
"stimulus", "stratum", "suspenders", "switch", "syllabus", "synopsis", 
"synthesis", "tableau", "tattoo", "thesis", "thief", "tomato", 
"tongs", "tooth", "torpedo", "trousers", "trout", "vertebra", 
"vertex", "veto", "volcano", "watch", "wife", "wolf", "woman", 
"zoo"), plural = c("addenda", "algae", "alumnae", "alumni", "analyses", 
"antennae", "apparatus", "appendices", "axes", "babies", "bacteria", 
"bases", "beaux", "bison", "boxes", "buffalo", "bureaux", "bushes", 
"cacti", "calves", "carp", "celli", "children", "cod", "corpora", 
"crises", "criteria", "curricula", "data", "deer", "diagnoses", 
"dice", "duck", "dwarves", "echoes", "elves", "ellipses", "fireman", 
"fish", "foci", "feet", "formulae", "fungi", "genera", "glasses", 
"geese", "halves", "heroes", "hippopotamuses", "hooves", "hypotheses", 
"indices", "kangaroos", "knives", "larvae", "leaves", "lives", 
"loaves", "lice", "men", "matrices", "media", "memoranda", "millennia", 
"moose", "mice", "nemeses", "nuclei", "oases", "octopi", "offspring", 
"ova", "oxen", "panties", "pants", "pantyhose", "parentheses", 
"pennies", "people", "phenomena", "pike", "pliers", "poppies", 
"potatoes", "radii", "salmon", "scarves", "scissors", "selves", 
"series", "sheep", "shelves", "shorts", "shrimp", "species", 
"spies", "squid", "status", "stimuli", "strata", "suspenders", 
"switches", "syllabi", "synopses", "syntheses", "tableaux", "tattoos", 
"theses", "thieves", "tomatoes", "tongs", "teeth", "torpedoes", 
"trousers", "trout", "vertebrae", "vertices", "vetoes", "volcanoes", 
"watches", "wives", "wolves", "women", "zoos")), class = c( "data.frame"), row.names = c(NA, -124L), .Names = c("singular", 
"plural"))


pax::new_data(pos_df_irregular_nouns)
