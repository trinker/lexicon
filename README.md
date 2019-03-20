lexicon   
============


[![Project Status: Active - The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Build
Status](https://travis-ci.org/trinker/lexicon.svg?branch=master)](https://travis-ci.org/trinker/lexicon)
[![](https://cranlogs.r-pkg.org/badges/lexicon)](https://cran.r-project.org/package=lexicon)

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
<td><code>profanity_</code></td>
<td>A profane words <code>vector</code></td>
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

<table style="width:99%;">
<colgroup>
<col style="width: 52%" />
<col style="width: 45%" />
</colgroup>
<thead>
<tr class="header">
<th>Data</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>cliches</td>
<td>Common Cliches</td>
</tr>
<tr class="even">
<td>common_names</td>
<td>First Names (U.S.)</td>
</tr>
<tr class="odd">
<td>constraining_loughran_mcdonald</td>
<td>Loughran-McDonald Constraining Words</td>
</tr>
<tr class="even">
<td>emojis_sentiment</td>
<td>Emoji Sentiment Data</td>
</tr>
<tr class="odd">
<td>freq_first_names</td>
<td>Frequent U.S. First Names</td>
</tr>
<tr class="even">
<td>freq_last_names</td>
<td>Frequent U.S. Last Names</td>
</tr>
<tr class="odd">
<td>function_words</td>
<td>Function Words</td>
</tr>
<tr class="even">
<td>grady_augmented</td>
<td>Augmented List of Grady Ward’s English Words and Mark Kantrowitz’s Names List</td>
</tr>
<tr class="odd">
<td>hash_emojis</td>
<td>Emoji Description Lookup Table</td>
</tr>
<tr class="even">
<td>hash_emojis_identifier</td>
<td>Emoji Identifier Lookup Table</td>
</tr>
<tr class="odd">
<td>hash_emoticons</td>
<td>Emoticons</td>
</tr>
<tr class="even">
<td>hash_grady_pos</td>
<td>Grady Ward’s Moby Parts of Speech</td>
</tr>
<tr class="odd">
<td>hash_internet_slang</td>
<td>List of Internet Slang and Corresponding Meanings</td>
</tr>
<tr class="even">
<td>hash_lemmas</td>
<td>Lemmatization List</td>
</tr>
<tr class="odd">
<td>hash_nrc_emotions</td>
<td>NRC Emotion Table</td>
</tr>
<tr class="even">
<td>hash_sentiment_emojis</td>
<td>Emoji Sentiment Polarity Lookup Table</td>
</tr>
<tr class="odd">
<td>hash_sentiment_huliu</td>
<td>Hu Liu Polarity Lookup Table</td>
</tr>
<tr class="even">
<td>hash_sentiment_jockers</td>
<td>Jockers Sentiment Polarity Table</td>
</tr>
<tr class="odd">
<td>hash_sentiment_jockers_rinker</td>
<td>Combined Jockers &amp; Rinker Polarity Lookup Table</td>
</tr>
<tr class="even">
<td>hash_sentiment_loughran_mcdonald</td>
<td>Loughran-McDonald Polarity Table</td>
</tr>
<tr class="odd">
<td>hash_sentiment_nrc</td>
<td>NRC Sentiment Polarity Table</td>
</tr>
<tr class="even">
<td>hash_sentiment_senticnet</td>
<td>Augmented SenticNet Polarity Table</td>
</tr>
<tr class="odd">
<td>hash_sentiment_sentiword</td>
<td>Augmented Sentiword Polarity Table</td>
</tr>
<tr class="even">
<td>hash_sentiment_slangsd</td>
<td>SlangSD Sentiment Polarity Table</td>
</tr>
<tr class="odd">
<td>hash_sentiment_socal_google</td>
<td>SO-CAL Google Polarity Table</td>
</tr>
<tr class="even">
<td>hash_valence_shifters</td>
<td>Valence Shifters</td>
</tr>
<tr class="odd">
<td>key_contractions</td>
<td>Contraction Conversions</td>
</tr>
<tr class="even">
<td>key_corporate_social_responsibility</td>
<td>Nadra Pencle and Irina Malaescu’s Corporate Social Responsibility Dictionary</td>
</tr>
<tr class="odd">
<td>key_grade</td>
<td>Grades Data Set</td>
</tr>
<tr class="even">
<td>key_rating</td>
<td>Ratings Data Set</td>
</tr>
<tr class="odd">
<td>key_regressive_imagery</td>
<td>Colin Martindale’s English Regressive Imagery Dictionary</td>
</tr>
<tr class="even">
<td>key_sentiment_jockers</td>
<td>Jockers Sentiment Data Set</td>
</tr>
<tr class="odd">
<td>modal_loughran_mcdonald</td>
<td>Loughran-McDonald Modal List</td>
</tr>
<tr class="even">
<td>nrc_emotions</td>
<td>NRC Emotions</td>
</tr>
<tr class="odd">
<td>pos_action_verb</td>
<td>Action Word List</td>
</tr>
<tr class="even">
<td>pos_df_irregular_nouns</td>
<td>Irregular Nouns Word Dataframe</td>
</tr>
<tr class="odd">
<td>pos_df_pronouns</td>
<td>Pronouns</td>
</tr>
<tr class="even">
<td>pos_interjections</td>
<td>Interjections</td>
</tr>
<tr class="odd">
<td>pos_preposition</td>
<td>Preposition Words</td>
</tr>
<tr class="even">
<td>profanity_alvarez</td>
<td>Alejandro U. Alvarez’s List of Profane Words</td>
</tr>
<tr class="odd">
<td>profanity_arr_bad</td>
<td>Stackoverflow user2592414’s List of Profane Words</td>
</tr>
<tr class="even">
<td>profanity_banned</td>
<td>bannedwordlist.com’s List of Profane Words</td>
</tr>
<tr class="odd">
<td>profanity_racist</td>
<td>Titus Wormer’s List of Racist Words</td>
</tr>
<tr class="even">
<td>profanity_zac_anger</td>
<td>Zac Anger’s List of Profane Words</td>
</tr>
<tr class="odd">
<td>sw_dolch</td>
<td>Leveled Dolch List of 220 Common Words</td>
</tr>
<tr class="even">
<td>sw_fry_100</td>
<td>Fry’s 100 Most Commonly Used English Words</td>
</tr>
<tr class="odd">
<td>sw_fry_1000</td>
<td>Fry’s 1000 Most Commonly Used English Words</td>
</tr>
<tr class="even">
<td>sw_fry_200</td>
<td>Fry’s 200 Most Commonly Used English Words</td>
</tr>
<tr class="odd">
<td>sw_fry_25</td>
<td>Fry’s 25 Most Commonly Used English Words</td>
</tr>
<tr class="even">
<td>sw_jockers</td>
<td>Matthew Jocker’s Expanded Topic Modeling Stopword List</td>
</tr>
<tr class="odd">
<td>sw_loughran_mcdonald_long</td>
<td>Loughran-McDonald Long Stopword List</td>
</tr>
<tr class="even">
<td>sw_loughran_mcdonald_short</td>
<td>Loughran-McDonald Short Stopword List</td>
</tr>
<tr class="odd">
<td>sw_lucene</td>
<td>Lucene Stopword List</td>
</tr>
<tr class="even">
<td>sw_mallet</td>
<td>MALLET Stopword List</td>
</tr>
<tr class="odd">
<td>sw_python</td>
<td>Python Stopword List</td>
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
