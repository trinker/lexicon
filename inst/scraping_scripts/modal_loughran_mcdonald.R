p_load(textshape, tidyverse)

modal_loughran_mcdonald <- list(
weak = strsplit(tolower('ALMOST
APPARENTLY
APPEARED
APPEARING
APPEARS
CONCEIVABLE
COULD
DEPEND
DEPENDED
DEPENDING
DEPENDS
MAY
MAYBE
MIGHT
NEARLY
OCCASIONALLY
PERHAPS
POSSIBLE
POSSIBLY
SELDOM
SELDOMLY
SOMETIMES
SOMEWHAT
SUGGEST
SUGGESTS
UNCERTAIN
UNCERTAINLY'), '\\s+'
)[[1]],


moderate = strsplit(tolower('CAN
FREQUENTLY
GENERALLY
LIKELY
OFTEN
OUGHT
PROBABLE
PROBABLY
RARELY
REGULARLY
SHOULD
TENDS
USUALLY
WOULD'), '\\s+'
)[[1]],

strong = strsplit(tolower('USUALLY

ALWAYS
BEST
CLEARLY
DEFINITELY
DEFINITIVELY
HIGHEST
LOWEST
MUST
NEVER
STRONGLY
UNAMBIGUOUSLY
UNCOMPROMISING
UNDISPUTED
UNDOUBTEDLY
UNEQUIVOCAL
UNEQUIVOCALLY
UNPARALLELED
UNSURPASSED
WILL'), '\\s+'
)[[1]]
)

modal_loughran_mcdonald <- textshape::tidy_list(modal_loughran_mcdonald, 'strength' , 'modal') %>%
    select(modal, strength) %>%
    mutate(
        strength = factor(strength, levels = c('weak', 'moderate', 'strong')),
        modal = textclean::replace_non_ascii(modal)
    ) %>%
    arrange(strength, modal)

pax::new_data(modal_loughran_mcdonald)
