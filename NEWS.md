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





lexicon 1.3.0 - 
----------------------------------------------------------------

**BUG FIXES**

**NEW FEATURES**

**MINOR FEATURES**

**IMPROVEMENTS**

**CHANGES**



lexicon 1.2.0 - 1.2.1
----------------------------------------------------------------

**BUG FIXES**

* `hash_emoticons` had '3' as 'laughing' when it should have been '=3'.  This
  has been corrected.

**NEW FEATURES**

* `cliches` added for comparison of common cliche phrases.

**MINOR FEATURES**

* `hash_nrc_emotion` added as a token to emotion lookup table.


**CHANGES**

* `profanity_zac_anger` contained 2 regexes marked as UTF-8 strings.  These were 
  dropped.

* `key_corporate_social_responsibility` contained 5 regexes & 5 tokens marked as 
  Latin-1 strings.  These were pretty apostrophes that were converted to ASCII 
  apostrophes.
  

lexicon 1.0.1 - 1.1.3
----------------------------------------------------------------

**BUG FIXES**

* `hash_lemmas` had the lemma of `as` to be `a`.  This was incorrect (spotted by
  Jonathan Bratt).
  
* `hash_lemmas` had Spaces before 2 tokens (" furtherst", " skilled") meaning.  
  This extra white space has been stripped.
  
* The `hash_sentiment_senticnett` dictionary contained "sparsely" which is also
  contained in `hash_valence_shifters`.  This term has been dropped from the 
  `hash_sentiment_senticnett` dictionary.  See # 12 for more info.

**NEW FEATURES**

* `profanity_zac_anger` added to provide a longer list of profane words.

* `profanity_racist` added to provide a profane list that is specific for 
  detecting racist terms.

* `key_regressive_imagery` added to provide R users with access to Colin 
  Martindale's (1975, 1990) English Regressive Imagery Dictionary (RID).  The 
  Regressive Imagery Dictionary (RID) is a text analysis coding taxonomy that 
  can be used to measure the degree to which a text is *primordial* vs. 
  *conceptual*.
  
* `key_corporate_social_responsibility` added to provide R users with access to 
  Pencle & Mălăescu's Corporate Social Responsibility (CSR) Dictionary. 

**MINOR FEATURES**

* `available_data` picks up a `regex` argument to search for specific substrings
  and return matching rows.

**IMPROVEMENTS**

* `hash_sentiment_jockers_rinker` now contains the word 'fuckin'.  Additionally,
  the word 'fucking' has a milder negative value because this word, though often 
  used as a negator, is also used as a amplifier.  By reducing it's weight it 
  allows more positive words to have more pull but if no polarized words exist 
  'fucking' will still keep the typical negative direction of the clause.


