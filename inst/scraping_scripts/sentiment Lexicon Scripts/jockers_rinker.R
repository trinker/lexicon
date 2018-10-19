pacman::p_load(sentimentr, dplyr)

hash_sentiment_jockers_rinker <- dplyr::bind_rows(
    dplyr::anti_join(hash_sentiment_huliu, hash_sentiment_jockers[,1], by = 'x'),
    hash_sentiment_jockers,
    dplyr::data_frame(
        x = c("the shit", "the bomb", "bad ass", "yeah right",
              "cut the mustard", "kiss of death", "back handed", "blow smoke", 
            "blowing smoke", "break a leg", "effing", "in the black", 
            "in the red", "under the weather"),
        y = c(1, 1, 1, -1, 1, -1, -0.5, -0.5, -0.5, 0.5, -0.1, 0.5, -0.5, -0.5)
    )
) %>%
    sentimentr::as_key() %>%
    sentimentr::update_key(drop = 'fucking') %>%
    sentimentr::update_key(x = dplyr::data_frame(
        ## this was done b/c f bomb is more of a valence shifter usually....but 
        ## can be a negator.  By making it a small negator it will still pull a 
        ## sentence down but if it is paired with 'awesome' the awesome will 
        ## outweigh it and the polarity direction will be maintained.  The -in 
        ## version is almost always negative (we're more confident) 
        ## see: https://github.com/trinker/lexicon/issues/20
             
        x = c('fucking', 'fuckin'), 
        y = c(-.15, -.5)
    ))

pax::new_data(hash_sentiment_jockers_rinker)


# anti_join(
#     lexicon::hash_sentiment_jockers_rinker,
#     hash_sentiment_jockers_rinker, by = 'x'
# ) %>%
#     dput()
