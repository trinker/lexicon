lexicon   [![Follow](https://img.shields.io/twitter/follow/tylerrinker.svg?style=social)](https://twitter.com/intent/follow?screen_name=tylerrinker)
============


[![Project Status: Active - The project has reached a stable, usable
state and is being actively
developed.](http://www.repostatus.org/badges/0.1.0/active.svg)](http://www.repostatus.org/#active)
[![Build
Status](https://travis-ci.org/trinker/lexicon.svg?branch=master)](https://travis-ci.org/trinker/lexicon)
<a href="https://img.shields.io/badge/Version-0.0.1-orange.svg"><img src="https://img.shields.io/badge/Version-0.0.1-orange.svg" alt="Version"/></a>
</p>
<img src="inst/lexicon_logo/r_lexicon.png" width="135" alt="lexicon Logo">

**lexicon** is a collection of lexical hash tables, dictionaries, and
word lists. The data prefixes help to categorize the data types:

<table>
<thead>
<tr class="header">
<th align="left">Prefix</th>
<th align="left">Meaning</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><code>hash_</code></td>
<td align="left">A <code>data.frame</code> with a lookup and return value</td>
</tr>
<tr class="even">
<td align="left"><code>key_</code></td>
<td align="left">A keyed <code>data.table</code> hash table</td>
</tr>
<tr class="odd">
<td align="left"><code>pos_</code></td>
<td align="left">A part of speech <code>vector</code></td>
</tr>
<tr class="even">
<td align="left"><code>sw_</code></td>
<td align="left">A stopword <code>vector</code></td>
</tr>
</tbody>
</table>


Table of Contents
============

-   [Data](#data)
-   [Installation](#installation)
-   [Contact](#contact)

Data
============


<table style="width:88%;">
<colgroup>
<col width="41%" />
<col width="45%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Data</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><code>common_names</code></p></td>
<td align="left"><p>First Names (U.S.)</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>discourse_markers_alemany</code></p></td>
<td align="left"><p>Alemany's Discourse Markers</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>dodds_sentiment</code></p></td>
<td align="left"><p>Language Assessment by Mechanical Turk Sentiment Words</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>function_words</code></p></td>
<td align="left"><p>Function Words</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>grady_augmented</code></p></td>
<td align="left"><p>Augmented List of Grady Ward's English Words and Mark Kantrowitz's Names List</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>hash_abbreviation</code></p></td>
<td align="left"><p>Common Abbreviations</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>hash_contractions</code></p></td>
<td align="left"><p>Contraction Conversions</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>hash_grade</code></p></td>
<td align="left"><p>Grades Hash</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>key_emoticons</code></p></td>
<td align="left"><p>Emoticons</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>key_power</code></p></td>
<td align="left"><p>Power Lookup Key</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>key_sentiment</code></p></td>
<td align="left"><p>Sentiment Lookup Key</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>key_strength</code></p></td>
<td align="left"><p>Strength Lookup Key</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>key_syllable</code></p></td>
<td align="left"><p>Syllable Counts</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>key_valence_shifters</code></p></td>
<td align="left"><p>Valence Shifters</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>pos_action_verb</code></p></td>
<td align="left"><p>Action Word List</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>pos_adverb</code></p></td>
<td align="left"><p>Adverb Word List</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>pos_interjections</code></p></td>
<td align="left"><p>Interjections</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>pos_preposition</code></p></td>
<td align="left"><p>Preposition Words</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>sw_buckley_salton</code></p></td>
<td align="left"><p>Buckley &amp; Salton Stopword List</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>sw_dolch</code></p></td>
<td align="left"><p>Leveled Dolch List of 220 Common Words</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>sw_fry_100</code></p></td>
<td align="left"><p>Fry's 100 Most Commonly Used English Words</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>sw_fry_1000</code></p></td>
<td align="left"><p>Fry's 1000 Most Commonly Used English Words</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>sw_fry_200</code></p></td>
<td align="left"><p>Fry's 200 Most Commonly Used English Words</p></td>
</tr>
<tr class="even">
<td align="left"><p><code>sw_fry_25</code></p></td>
<td align="left"><p>Fry's 25 Most Commonly Used English Words</p></td>
</tr>
<tr class="odd">
<td align="left"><p><code>sw_onix</code></p></td>
<td align="left"><p>Onix Text Retrieval Toolkit Stopword List 1</p></td>
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
