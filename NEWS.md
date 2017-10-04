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


lexicon 0.4.0 -
----------------------------------------------------------------

**BUG FIXES**

* `function_words` contained duplicates that hve been been removed.


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