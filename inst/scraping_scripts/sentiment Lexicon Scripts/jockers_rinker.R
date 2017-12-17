pacman::p_load(sentimentr, dplyr)

hash_sentiment_jockers_rinker <- dplyr::bind_rows(
    dplyr::anti_join(hash_sentiment_huliu, hash_sentiment_jockers[,1], by = 'x'),
    hash_sentiment_jockers,
    dplyr::data_frame(
        x = c("the shit", "the bomb", "bad ass", "yeah right",
              "cut the mustard", "kiss of death"),
        y = c(1, 1, 1, -1, 1, -1)
    )
) %>%
sentimentr::as_key()

pax::new_data(hash_sentiment_jockers_rinker)


