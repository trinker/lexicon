NEWS
====

Versioning
----------

Releases will be numbered with the following semantic versioning format:

&lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;

And constructed with the following guidelines:

* Breaking backward compatibility bumps the major (and resets the minor
  and patch)
* New additions without breaking backward compatibility bumps the minor
  (and resets the patch)
* Bug fixes and misc changes bumps the patch



lexicon 0.7.0 - 0.7.4
----------------------------------------------------------------

**BUG FIXES**

* `emojis_sentiment` & `hash_emojis` contained non-ASCII characters.  These have
  been removed.


**NEW FEATURES**

* `hash_sentiment_socal_google` and `hash_sentiment_slangsd` sentiment hash
  tables added for use in the **sentimentr** package.

* `hash_internet_slag` added as a <a href="https://github.com/trinker/lexicon" target="_blank">lexicon</a> to map slang to understood meaning.

* `enable_word_list` added.  This is the Enhanced North American Benchmark
  Lexicon (ENABLE) which is used in the game Words With Friends
  (https://en.wikipedia.org/wiki/Words_with_Friends).



**CHANGES**

* The columns `n_pos`, `space`, & `primary` have been removed from the
  `hash_grady_pos` data set to save space.  The `grady_pos_feature` function can
  be used to re-add these columns.



lexicon 0.5.0 - 0.6.3
----------------------------------------------------------------

**NEW FEATURES**

* `sw_mallete`, `sw_jockers`, `sw_python`, `sw_lucene`, `sw_loughran_mcdonald_short`,
  & `sw_loughran_mcdonald_long` stopword lists added.

* `hash_sentiment_senticnet` `hash_sentiment_vadar`, `hash_sentiment_inquirer`,
  `hash_sentiment_loughran_mcdonald`, `hash_sentiment_emojis` &
  `hash_sentiment_jockers_rinker` sentiment hash tables added for use in the
  **sentimentr** package.

* `modal_loughran_mcdonald` added; a data.table of weak, moderate, and strong
  modal verbs.

* `constraining_loughran_mcdonald` added, a vector of words that are associated
  with constraining.

* `hash_emojis` and `emojis_sentiment` data sets added for text analysis with
  emojis.


**IMPROVEMENTS**

* `hash_valence_shifters` added following negators: "daren't", "hadn't",
  "needn't", "oughtn't"; the following amplifiers: "absolutely", "considerably",
  "decidedly", "especially", "majorly", "most", "uber"; the following
  de-amplifiers: "almost", "kind of", "kinda", "partly", "somewhat", "sort of",
  "sorta".  In addition, all contraction negators were re-added
  to the `hash_valence_shifters` sans apostrophe as cleaning or less formal
  writing may result in contractions without apostrophes.

**CHANGES**

*  The word "incredibly" was removed from `hash_sentiment_jockers`,
  `hash_sentiment_huliu`, & `hash_sentiment_sentiword` and added as an amplifier
  to `hash_valence_shifters`.  Spotted by AbdulMajedRaja:
  https://github.com/trinker/sentimentr/issues/58#issuecomment-343373693



lexicon 0.4.0 - 0.4.1
----------------------------------------------------------------

**BUG FIXES**

* `function_words` contained duplicates that have been been removed.

* `hash_lemmas` contained an erroneous token-lemma pair (also-conjurer).  This
  was spotted by Mitchell Linegar (see https://github.com/trinker/textstem/issues/5).
  The token `also` has been removed from the dictionary.


**NEW FEATURES**

* `pos_df_irregular_nouns` and `pos_unchanging_nouns` added.  The former is a
  data.frame of singular and plural forms of irregular nouns.  The latter is
  a simple list of irregular nouns that have the same singular and plural forms.

* `profanity_alvarez`, `profanity_arr_bad`, `profanity_banned`,
  `profanity_google`, & `profanity_von_ahn` added to give access to profanity
  word lists.



lexicon 0.3.0 - 0.3.1
----------------------------------------------------------------

**BUG FIXES**

* `freq_first_names` and `freq_last_names` were just a string of the data set
  name.  This has been updated with the actual data set.


**NEW FEATURES**

* `available_data` added to see what data sets are available in **lexicon**.


lexicon 0.2.0
----------------------------------------------------------------

**NEW FEATURES**

* `hash_sentiment_jockers` and `key_sentiment_jockers` added as objects though
  they are not data objects but for all purposes act the same.  These data sets
  come from **syuzhet**'s custom dictionary built by Jockers.


**CHANGES**

* `hash_sentiment` and `hash_sentiword` renamed to `hash_sentiment_huliu` and
  `hash_sentiment_sentiword` for consistency.


lexicon 0.1.1
----------------------------------------------------------------

**NEW FEATURES**

* `hash_grady_pos` added to provide a lookup of Grady's parts of speech for words.

* `hash_lemmas` added to provide a lookup of Mechura's lemmatization list.

* `hash_sentiment_jockers` and `key_sentiment_jockers` added as objects though
  they are not data objects but for all purposes act the same.  These data sets
  come from **syuzhet**'s custom dictionary built by Jockers.


lexicon 0.1.0
----------------------------------------------------------------

**NEW FEATURES**

* The `ratings` and `grades` keys from **sentimentr** have been moved to the
  **lexicon** package and renamed to `key_rating` and `key_grade`.

**IMPROVEMENTS**

* Added the positve terms 'spot on', 'on time', & 'on point' to `hash_sentiment`.


lexicon 0.0.1
----------------------------------------------------------------

This package is a collection of lexical hash tables, dictionaries, and word
lists.