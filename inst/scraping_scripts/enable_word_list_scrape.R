pacman::p_load(dplyr)

enable_word_list <- enable_wl <- 'http://www.puzzlers.org/pub/wordlists/enable1.txt' %>%
    readLines()

setdiff(1:10, 7:11)
setdiff(7:11, 1:10)

enable_wl_directions <- list(
    extras = setdiff(enable_wl, lexicon::grady_augmented),
    drops = which(!lexicon::grady_augmented %in% enable_wl)
)

#  pax::new_data(enable_word_list, stand.alone = TRUE)

#devtools::use_data(enable_wl_directions , internal = TRUE)


