pacman::p_load(tidyverse)

pos_df_pronouns <- data_frame(

    pronoun = c(
        'I', 'me', 'we', 'us', 'you', 'you', 'she', 'he', 'her', 'him', 'it', 'they', 'them',
        'myself', 'ourselves', 'yourself', 'yourselves', 'himself', 'herself', 'itself', 'themselves',
        'my', 'your', 'his', 'her', 'hers', 'its', 'our', 'your', 'their', 'mine', 'yours', 'ours', 'yours'
    ),
    type = c(
        rep('personal', 13), rep('reflexive', 8), rep('possessive', 13)
    ),
    singular = as.logical(c(
        1, 1, 0, 0, 1, 0, rep(1, 5), 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, rep(1, 6), rep(0, 3), 1, 1, 0, 0
    )),
    point_of_view = c(
        rep('first', 4), rep('second', 2), rep('third', 7),
        rep('first', 2), rep('second', 2), rep('third', 4),
        'first', 'second', 'third', 'third', 'third', 'third', 'first', 'second', 'third',
        'first', 'second', 'first', 'second'
    )

) %>%
    data.table::as.data.table()

#
pax::new_data(pos_df_pronouns)


