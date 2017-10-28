lexicon   
============


[![Project Status: Active - The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Build
Status](https://travis-ci.org/trinker/lexicon.svg?branch=master)](https://travis-ci.org/trinker/lexicon)
[![](http://cranlogs.r-pkg.org/badges/lexicon)](https://cran.r-project.org/package=lexicon)

![](tools/lexicon_logo/r_lexicon.png)


Table of Contents
============

-   [Description](#description)
-   [Data](#data)
-   [Installation](#installation)
-   [Contact](#contact)

Description
============


**lexicon** is a collection of lexical hash tables, dictionaries, and
word lists. The data prefixes help to categorize the data types:

<table>
<thead>
<tr class="header">
<th>Prefix</th>
<th>Meaning</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><code>key_</code></td>
<td>A <code>data.frame</code> with a lookup and return value</td>
</tr>
<tr class="even">
<td><code>hash_</code></td>
<td>A keyed <code>data.table</code> hash table</td>
</tr>
<tr class="odd">
<td><code>freq_</code></td>
<td>A <code>data.table</code> of terms with frequencies</td>
</tr>
<tr class="even">
<td><code>profanity</code></td>
<td>A vector of profane words</td>
</tr>
<tr class="odd">
<td><code>pos_</code></td>
<td>A part of speech <code>vector</code></td>
</tr>
<tr class="even">
<td><code>pos_df_</code></td>
<td>A part of speech <code>data.frame</code></td>
</tr>
<tr class="odd">
<td><code>sw_</code></td>
<td>A stopword <code>vector</code></td>
</tr>
</tbody>
</table>

Data
====

<table style="width:85%;">
<colgroup>
<col width="38%" />
<col width="45%" />
</colgroup>
<thead>
<tr class="header">
<th>Data</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>common_names</p>
</td>
<td><p>First Names (U.S.)</p>
</td>
</tr>
<tr class="even">
<td><p>discourse_markers_alemany</p>
</td>
<td><p>Alemany's Discourse Markers</p>
</td>
</tr>
<tr class="odd">
<td><p>dodds_sentiment</p>
</td>
<td><p>Language Assessment by Mechanical Turk Sentiment Words</p>
</td>
</tr>
<tr class="even">
<td><p>freq_first_names</p>
</td>
<td><p>Frequent U.S. First Names</p>
</td>
</tr>
<tr class="odd">
<td><p>freq_last_names</p>
</td>
<td><p>Frequent U.S. Last Names</p>
</td>
</tr>
<tr class="even">
<td><p>function_words</p>
</td>
<td><p>Function Words</p>
</td>
</tr>
<tr class="odd">
<td><p>grady_augmented</p>
</td>
<td><p>Augmented List of Grady Ward's English Words and Mark Kantrowitz's Names List</p>
</td>
</tr>
<tr class="even">
<td><p>hash_emoticons</p>
</td>
<td><p>Emoticons</p>
</td>
</tr>
<tr class="odd">
<td><p>hash_grady_pos</p>
</td>
<td><p>Grady Ward's Moby Parts of Speech</p>
</td>
</tr>
<tr class="even">
<td><p>hash_lemmas</p>
</td>
<td><p>Lemmatization List</p>
</td>
</tr>
<tr class="odd">
<td><p>hash_power</p>
</td>
<td><p>Power Lookup Key</p>
</td>
</tr>
<tr class="even">
<td><p>hash_sentiment_huliu</p>
</td>
<td><p>Hu Liu Polarity Lookup Table</p>
</td>
</tr>
<tr class="odd">
<td><p>hash_sentiment_jockers</p>
</td>
<td><p>Jockers Sentiment Polarity Table</p>
</td>
</tr>
<tr class="even">
<td><p>hash_sentiment_nrc</p>
</td>
<td><p>NRC Sentiment Polarity Table</p>
</td>
</tr>
<tr class="odd">
<td><p>hash_sentiment_sentiword</p>
</td>
<td><p>Augmented Sentiword Polarity Table</p>
</td>
</tr>
<tr class="even">
<td><p>hash_strength</p>
</td>
<td><p>Strength Lookup Key</p>
</td>
</tr>
<tr class="odd">
<td><p>hash_syllable</p>
</td>
<td><p>Syllable Counts</p>
</td>
</tr>
<tr class="even">
<td><p>hash_valence_shifters</p>
</td>
<td><p>Valence Shifters</p>
</td>
</tr>
<tr class="odd">
<td><p>key_abbreviation</p>
</td>
<td><p>Common Abbreviations</p>
</td>
</tr>
<tr class="even">
<td><p>key_contractions</p>
</td>
<td><p>Contraction Conversions</p>
</td>
</tr>
<tr class="odd">
<td><p>key_grade</p>
</td>
<td><p>Grades Hash</p>
</td>
</tr>
<tr class="even">
<td><p>key_rating</p>
</td>
<td><p>Ratings Data Set</p>
</td>
</tr>
<tr class="odd">
<td><p>key_sentiment_jockers</p>
</td>
<td><p>Jockers Sentiment Data Set</p>
</td>
</tr>
<tr class="even">
<td><p>nrc_emotions</p>
</td>
<td><p>NRC Emotions</p>
</td>
</tr>
<tr class="odd">
<td><p>pos_action_verb</p>
</td>
<td><p>Action Word List</p>
</td>
</tr>
<tr class="even">
<td><p>pos_adverb</p>
</td>
<td><p>Adverb Word List</p>
</td>
</tr>
<tr class="odd">
<td><p>pos_df_irregular_nouns</p>
</td>
<td><p>Irregular Nouns Word Dataframe</p>
</td>
</tr>
<tr class="even">
<td><p>pos_df_pronouns</p>
</td>
<td><p>Pronouns</p>
</td>
</tr>
<tr class="odd">
<td><p>pos_interjections</p>
</td>
<td><p>Interjections</p>
</td>
</tr>
<tr class="even">
<td><p>pos_preposition</p>
</td>
<td><p>Preposition Words</p>
</td>
</tr>
<tr class="odd">
<td><p>pos_unchanging_nouns</p>
</td>
<td><p>Nouns that are the Same Plural/Singular</p>
</td>
</tr>
<tr class="even">
<td><p>profanity_alvarez</p>
</td>
<td><p>Alejandro U. Alvarez's List of Profane Words</p>
</td>
</tr>
<tr class="odd">
<td><p>profanity_arr_bad</p>
</td>
<td><p>Stackoverflow user2592414's List of Profane Words</p>
</td>
</tr>
<tr class="even">
<td><p>profanity_banned</p>
</td>
<td><p>bannedwordlist.com's List of Profane Words</p>
</td>
</tr>
<tr class="odd">
<td><p>profanity_google</p>
</td>
<td><p>Google's List of Profane Words</p>
</td>
</tr>
<tr class="even">
<td><p>profanity_von_ahn</p>
</td>
<td><p>Luis von Ahn's List of Profane Words</p>
</td>
</tr>
<tr class="odd">
<td><p>sw_buckley_salton</p>
</td>
<td><p>Buckley &amp; Salton Stopword List</p>
</td>
</tr>
<tr class="even">
<td><p>sw_dolch</p>
</td>
<td><p>Leveled Dolch List of 220 Common Words</p>
</td>
</tr>
<tr class="odd">
<td><p>sw_fry_100</p>
</td>
<td><p>Fry's 100 Most Commonly Used English Words</p>
</td>
</tr>
<tr class="even">
<td><p>sw_fry_1000</p>
</td>
<td><p>Fry's 1000 Most Commonly Used English Words</p>
</td>
</tr>
<tr class="odd">
<td><p>sw_fry_200</p>
</td>
<td><p>Fry's 200 Most Commonly Used English Words</p>
</td>
</tr>
<tr class="even">
<td><p>sw_fry_25</p>
</td>
<td><p>Fry's 25 Most Commonly Used English Words</p>
</td>
</tr>
<tr class="odd">
<td><p>sw_onix</p>
</td>
<td><p>Onix Text Retrieval Toolkit Stopword List 1</p>
</td>
</tr>
</tbody>
</table>

Installation
============

To download the development version of **lexicon**:

Download the [zip
ball](https://github.com/trinker/lexicon/zipball/master) or [tar
ball](https://github.com/trinker/lexicon/tarball/master), decompress and
run `R CMD INSTALL` on it, or use the **pacman** package to install the
development version:

    if (!require("pacman")) install.packages("pacman")
    pacman::p_load_gh("trinker/lexicon")

Contact
=======

You are welcome to:    
- submit suggestions and bug-reports at: <https://github.com/trinker/lexicon/issues>    
- send a pull request on: <https://github.com/trinker/lexicon/>    
- compose a friendly e-mail to: <tyler.rinker@gmail.com>    