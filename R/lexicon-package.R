#' qdapDictionaries
#'
#' A collection of dictionaries and Word Lists to Accompany the qdap Package
#' @docType package
#' @name qdapDictionaries
#' @aliases qdapDictionaries package-qdapDictionaries
NULL

#' Augmented List of Grady Ward's English Words and Mark Kantrowitz's Names List
#' 
#' A dataset containing a vector of Grady Ward's English words augmented with 
#' \code{\link[qdapDictionaries]{DICTIONARY}}, 
#' \href{http://www.cs.cmu.edu/afs/cs/project/ai-repository/ai/areas/nlp/corpora/names}{Mark Kantrowitz's names list}, 
#' other proper nouns, and contractions.  
#' 
#' @details A dataset containing a vector of Grady Ward's English words 
#' augmented with proper nouns (U.S. States, Countries, Mark Kantrowitz's Names List, 
#' and months) and contractions. That dataset is augmented for spell checking purposes. 
#'  
#' @docType data 
#' @keywords datasets 
#' @name GradyAugmented
#' @usage data(GradyAugmented) 
#' @format A vector with 122806 elements 
#' @references Moby Thesaurus List by Grady Ward \url{http://www.gutenberg.org} \cr \cr
#' List of names from Mark Kantrowitz \url{http://www.cs.cmu.edu/afs/cs/project/ai-repository/ai/areas/nlp/corpora/names/}.  
#' A copy of the \href{http://www.cs.cmu.edu/afs/cs/project/ai-repository/ai/areas/nlp/corpora/names/readme.txt}{README} 
#' is available \href{http://www.cs.cmu.edu/afs/cs/project/ai-repository/ai/areas/nlp/corpora/names/readme.txt}{here} 
#' per the author's request.
NULL

#' Buckley & Salton Stopword List
#' 
#' A stopword list containing a character vector of stopwords.
#' 
#' @details \href{http://www.lextek.com/manuals/onix/stopwords2.html}{From Onix Text Retrieval Toolkit API Reference}:
#' "This stopword list was built by Gerard Salton and Chris Buckley for the
#' experimental SMART information retrieval system at Cornell University.
#' This stopword list is generally considered to be on the larger side and so
#' when it is used, some implementations edit it so that it is better suited
#' for a given domain and audience while others use this stopword list as it
#' stands."
#' 
#' @note Reduced from the original 571 words to 546.
#' 
#' @docType data 
#' @keywords datasets 
#' @name BuckleySaltonSWL 
#' @usage data(BuckleySaltonSWL) 
#' @format A character vector with 546 elements 
#' @references \url{http://www.lextek.com/manuals/onix/stopwords2.html}
NULL
 
#' Nettalk Corpus Syllable Data Set
#' 
#' A dataset containing syllable counts.
#' 
#' @note This data set is based on the Nettalk Corpus but has some researcher 
#' word deletions and additions based on the needs of the 
#' \code{\link[qdap]{syllable_sum}} algorithm.
#' 
#' @details 
#' \itemize{ 
#'   \item word. The word
#'   \item syllables. Number of syllables
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name DICTIONARY 
#' @usage data(DICTIONARY) 
#' @format A data frame with 20137 rows and 2 variables 
#' @references Sejnowski, T.J., and Rosenberg, C.R. (1987). "Parallel networks 
#' that learn to pronounce English text" in Complex Systems, 1, 145-168. 
#' Retrieved from: \url{http://archive.ics.uci.edu/ml/datasets/Connectionist+Bench+(Nettalk+Corpus)}
#' 
#' \href{http://archive.ics.uci.edu/ml/machine-learning-databases/undocumented/connectionist-bench/nettalk/}{UCI Machine Learning Repository website}
NULL
 
#' Onix Text Retrieval Toolkit Stopword List 1
#' 
#' A stopword list containing a character vector of stopwords. 
#' 
#' @details \href{http://www.lextek.com/manuals/onix/stopwords1.html}{From Onix Text Retrieval Toolkit API Reference}:
#' "This stopword list is probably the most widely used stopword list. It
#' covers a wide number of stopwords without getting too aggressive and
#' including too many words which a user might search upon."
#' 
#' @note Reduced from the original 429 words to 404.
#' 
#' @docType data 
#' @keywords datasets 
#' @name OnixTxtRetToolkitSWL1 
#' @usage data(OnixTxtRetToolkitSWL1) 
#' @format A character vector with 404 elements 
#' @references \url{http://www.lextek.com/manuals/onix/stopwords1.html}
NULL
 
#' Fry's  100 Most Commonly Used English Words
#' 
#' A stopword list containing a character vector of stopwords. 
#' 
#' @details Fry's Word List: The first 25 make up about one-third of all printed 
#' material in English. The first 100 make up about one-half of all printed 
#' material in English. The first 300 make up about 65\% of all printed 
#' material in English."
#' 
#' 
#' @docType data 
#' @keywords datasets 
#' @name Top100Words 
#' @usage data(Top100Words) 
#' @format A character vector with 100 elements 
#' @references Fry, E. B. (1997). Fry 1000 instant words. Lincolnwood, IL: 
#' Contemporary Books.
NULL
 
#' Fry's 200 Most Commonly Used English Words
#' 
#' A stopword list containing a character vector of stopwords. 
#' 
#' @details Fry's Word List: The first 25 make up about one-third of all printed 
#' material in English. The first 100 make up about one-half of all printed 
#' material in English. The first 300 make up about 65\% of all printed 
#' material in English."
#' 
#' 
#' @docType data 
#' @keywords datasets 
#' @name Top200Words 
#' @usage data(Top200Words) 
#' @format A character vector with 200 elements 
#' @references Fry, E. B. (1997). Fry 1000 instant words. Lincolnwood, IL: 
#' Contemporary Books.
NULL
 
#' Fry's 25 Most Commonly Used English Words
#' 
#' A stopword list containing a character vector of stopwords. 
#' 
#' @details Fry's Word List: The first 25 make up about one-third of all printed 
#' material in English. The first 100 make up about one-half of all printed 
#' material in English. The first 300 make up about 65\% of all printed 
#' material in English."
#' 
#' @docType data 
#' @keywords datasets 
#' @name Top25Words 
#' @usage data(Top25Words) 
#' @format A character vector with 25 elements 
#' @references Fry, E. B. (1997). Fry 1000 instant words. Lincolnwood, IL: 
#' Contemporary Books.
NULL

#' Fry's 1000 Most Commonly Used English Words
#' 
#' A stopword list containing a character vector of stopwords. 
#' 
#' @details Fry's 1000 Word List makes up 90\% of all printed text.
#' 
#' @docType data 
#' @keywords datasets 
#' @name Fry_1000 
#' @usage data(Fry_1000) 
#' @format A vector with 1000 elements 
#' @references Fry, E. B. (1997). Fry 1000 instant words. Lincolnwood, IL: 
#' Contemporary Books.
NULL
 
#' Leveled Dolch List of 220 Common Words
#' 
#' Edward William Dolch's list of 220 Most Commonly Used Words by reading level.
#' 
#' @details Dolch's Word List made up 50-75\% of all printed text in 1936.
#' \itemize{ 
#'   \item Word. The word
#'   \item Level. The reading level of the word
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name Leveled_Dolch 
#' @usage data(Leveled_Dolch) 
#' @format A data frame with 220 rows and 2 variables 
#' @references Dolch, E. W. (1936). A basic sight vocabulary. Elementary School
#' Journal, 36, 456-460.
NULL
 
#' Dolch List of 220 Common Words
#' 
#' Edward William Dolch's list of 220 Most Commonly Used Words.
#' 
#' @details Dolch's Word List made up 50-75\% of all printed text in 1936.
#' 
#' @docType data 
#' @keywords datasets 
#' @name Dolch 
#' @usage data(Dolch) 
#' @format A vector with 220 elements 
#' @references Dolch, E. W. (1936). A basic sight vocabulary. Elementary School
#' Journal, 36, 456-460.
NULL

#' Small Abbreviations Data Set
#' 
#' A dataset containing abbreviations and their qdap friendly form.
#' 
#' @details 
#' \itemize{ 
#'   \item abv. Common transcript abbreviations
#'   \item rep. qdap representation of those abbreviations
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name abbreviations 
#' @usage data(abbreviations) 
#' @format A data frame with 14 rows and 2 variables 
NULL
 
#' Action Word List
#' 
#' A dataset containing a vector of action words.  This is a subset of the 
#' \href{http://icon.shef.ac.uk/Moby/}{Moby project: Moby Part-of-Speech}.
#' 
#' @details 
#' \href{http://icon.shef.ac.uk/Moby/}{From Grady Ward's Moby project:}
#' "This second edition is a particularly thorough revision of the original Moby
#' Part-of-Speech. Beyond the fifteen thousand new entries, many thousand more
#' entries have been scrutinized for correctness and modernity. This is
#' unquestionably the largest P-O-S list in the world. Note that the many included
#' phrases means that parsing algorithms can now tokenize in units larger than a
#' single word, increasing both speed and accuracy."
#' 
#' @docType data 
#' @keywords datasets 
#' @name action.verbs 
#' @usage data(action.verbs) 
#' @format A vector with 1569 elements 
#' @references 
#' \url{http://icon.shef.ac.uk/Moby/mpos.html}
NULL
 
#' Adverb Word List
#' 
#' A dataset containing a vector of adverbs words.  This is a subset of the 
#' \href{http://icon.shef.ac.uk/Moby/}{Moby project: Moby Part-of-Speech}.
#' 
#' @details 
#' \href{http://icon.shef.ac.uk/Moby/}{From Grady Ward's Moby project:}
#' "This second edition is a particularly thorough revision of the original Moby
#' Part-of-Speech. Beyond the fifteen thousand new entries, many thousand more
#' entries have been scrutinized for correctness and modernity. This is
#' unquestionably the largest P-O-S list in the world. Note that the many included
#' phrases means that parsing algorithms can now tokenize in units larger than a
#' single word, increasing both speed and accuracy."
#' 
#' @docType data 
#' @keywords datasets 
#' @name adverb 
#' @usage data(adverb) 
#' @format A vector with 13398 elements 
#' @references 
#' \url{http://icon.shef.ac.uk/Moby/mpos.html}
NULL

#' Contraction Conversions
#' 
#' A dataset containing common contractions and their expanded form.
#' 
#' @details 
#' \itemize{ 
#'   \item contraction. The contraction word.
#'   \item expanded. The expanded form of the contraction.
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name contractions 
#' @usage data(contractions) 
#' @format A data frame with 70 rows and 2 variables 
NULL


#' Emoticons Data Set
#' 
#' A dataset containing common emoticons (adapted from 
#' \href{http://www.lingo2word.com/lists/emoticon_listH.html}{Popular Emoticon List}).
#' 
#' @details 
#' \itemize{ 
#'   \item meaning. The meaning of the emoticon
#'   \item emoticon. The graphic representation of the emoticon
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name emoticon 
#' @usage data(emoticon) 
#' @format A data frame with 81 rows and 2 variables 
#' @references 
#' \url{http://www.lingo2word.com/lists/emoticon_listH.html}
NULL
 
#' Syllable Lookup Key
#' 
#' A dataset containing a syllable lookup key (see \code{DICTIONARY}).
#' 
#' @details For internal use.
#' 
#' @docType data 
#' @keywords datasets 
#' @name key.syl 
#' @usage data(key.syl) 
#' @format A hash key with a modified DICTIONARY data set.  
#' @references 
#' \href{http://archive.ics.uci.edu/ml/machine-learning-databases/undocumented/connectionist-bench/nettalk/}{UCI Machine Learning Repository website}
NULL

 
#' Amplifying Words
#' 
#' A dataset containing a vector of words that amplify word meaning.
#' 
#' @details 
#' Valence shifters are words that alter or intensify the meaning of the polarized
#' words and include negators and amplifiers. Negators are, generally, adverbs
#' that negate sentence meaning; for example the word like in the sentence, "I do
#' like pie.", is given the opposite meaning in the sentence, "I do not like
#' pie.", now containing the negator not. Amplifiers are, generally, adverbs or
#' adjectives that intensify sentence meaning. Using our previous example, the
#' sentiment of the negator altered sentence, "I seriously do not like pie.", is
#' heightened with addition of the amplifier seriously.  Whereas de-amplifiers 
#' decrease the intensity of a polarized word as in the sentence "I barely like
#' pie"; the word "barely" deamplifies the word like.
#' 
#' @docType data 
#' @keywords datasets 
#' @name amplification.words 
#' @usage data(amplification.words) 
#' @format A vector with 49 elements 
NULL
 
#' De-amplifying Words
#' 
#' A dataset containing a vector of words that de-amplify word meaning.
#' 
#' @details 
#' Valence shifters are words that alter or intensify the meaning of the polarized
#' words and include negators and amplifiers. Negators are, generally, adverbs
#' that negate sentence meaning; for example the word like in the sentence, "I do
#' like pie.", is given the opposite meaning in the sentence, "I do not like
#' pie.", now containing the negator not. Amplifiers are, generally, adverbs or
#' adjectives that intensify sentence meaning. Using our previous example, the
#' sentiment of the negator altered sentence, "I seriously do not like pie.", is
#' heightened with addition of the amplifier seriously.  Whereas de-amplifiers 
#' decrease the intensity of a polarized word as in the sentence "I barely like
#' pie"; the word "barely" deamplifies the word like.
#' 
#' @docType data 
#' @keywords datasets 
#' @name deamplification.words 
#' @usage data(deamplification.words) 
#' @format A vector with 13 elements 
NULL

#' Interjections
#' 
#' A dataset containing a character vector of common interjections.
#' 
#' @docType data 
#' @keywords datasets 
#' @name interjections
#' @usage data(interjections) 
#' @format A character vector with 139 elements 
#' @references
#' \url{http://www.vidarholen.net/contents/interjections/}
NULL
 
 
#' Negating Words
#' 
#' A dataset containing a vector of words that negate word meaning.
#' 
#' @details 
#' Valence shifters are words that alter or intensify the meaning of the polarized
#' words and include negators and amplifiers. Negators are, generally, adverbs
#' that negate sentence meaning; for example the word like in the sentence, "I do
#' like pie.", is given the opposite meaning in the sentence, "I do not like
#' pie.", now containing the negator not. Amplifiers are, generally, adverbs or
#' adjectives that intensify sentence meaning. Using our previous example, the
#' sentiment of the negator altered sentence, "I seriously do not like pie.", is
#' heightened with addition of the amplifier seriously.  Whereas de-amplifiers 
#' decrease the intensity of a polarized word as in the sentence "I barely like
#' pie"; the word "barely" deamplifies the word like.
#' 
#' @docType data 
#' @keywords datasets 
#' @name negation.words 
#' @usage data(negation.words) 
#' @format A vector with 23 elements 
NULL
 
#' Negative Words
#' 
#' A dataset containing a vector of negative words.
#' 
#' @details 
#' A sentence containing more negative words would be deemed a negative sentence,
#' whereas a sentence containing more positive words would be considered positive.
#' 
#' @docType data 
#' @keywords datasets 
#' @name negative.words 
#' @usage data(negative.words) 
#' @format A vector with 4776 elements 
#' @references Hu, M., & Liu, B. (2004). Mining opinion features in customer 
#' reviews. National Conference on Artificial Intelligence. 
#' 
#' \url{http://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html}
NULL
 
#' Positive Words
#' 
#' A dataset containing a vector of positive words.
#' 
#' @details 
#' A sentence containing more negative words would be deemed a negative sentence,
#' whereas a sentence containing more positive words would be considered positive.
#' 
#' @docType data 
#' @keywords datasets 
#' @name positive.words 
#' @usage data(positive.words) 
#' @format A vector with 2003 elements 
#' @references Hu, M., & Liu, B. (2004). Mining opinion features in customer 
#' reviews. National Conference on Artificial Intelligence. 
#' 
#' \url{http://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html}
NULL
 
#' Preposition Words
#' 
#' A dataset containing a vector of common prepositions.
#' 
#' @docType data 
#' @keywords datasets 
#' @name preposition 
#' @usage data(preposition) 
#' @format A vector with 162 elements 
NULL
 
#' Polarity Lookup Key
#' 
#' A dataset containing a polarity lookup key (see \code{\link[qdap]{polarity}}).
#' 
#' 
#' @docType data 
#' @keywords datasets 
#' @name key.pol 
#' @usage data(key.pol) 
#' @format A hash key with words and corresponding values.
#' @references Hu, M., & Liu, B. (2004). Mining opinion features in customer 
#' reviews. National Conference on Artificial Intelligence. 
#' 
#' \url{http://www.cs.uic.edu/~liub/FBS/sentiment-analysis.html}
NULL

#' Language Assessment by Mechanical Turk (labMT) Sentiment Words
#' 
#' A dataset containing words, average happiness score (polarity), standard 
#' deviations, and rankings. 
#' 
#' @details 
#' \itemize{ 
#'   \item word. The word.
#'   \item happiness_rank. Happiness ranking of words based on average happiness 
#'   scores.
#'   \item happiness_average. Average happiness score.
#'   \item happiness_standard_deviation. Standard deviations of the happiness 
#'   scores.
#'   \item twitter_rank. Twitter ranking of the word.
#'   \item google_rank. Google ranking of the word.
#'   \item nyt_rank. New York Times ranking of the word.
#'   \item lyrics_rank. lyrics ranking of the word.
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name labMT 
#' @usage data(labMT) 
#' @format A data frame with 10222 rows and 8 variables 
#' @references 
#' Dodds, P.S., Harris, K.D., Kloumann, I.M., Bliss, C.A., & Danforth, C.M. (2011) 
#' Temporal patterns of happiness and information in a global social network: 
#' Hedonometrics and twitter. PLoS ONE 6(12): e26752. 
#' doi:10.1371/journal.pone.0026752
#' 
#' \url{http://www.plosone.org/article/fetchSingleRepresentation.action?uri=info:doi/10.1371/journal.pone.0026752.s001}
NULL
 
 

#' Synonym Lookup Key
#' 
#' A dataset containing a synonym lookup key.
#' 
#' 
#' @docType data 
#' @keywords datasets 
#' @name key.syn 
#' @usage data(key.syn) 
#' @format A hash key with 10976 rows and 2 variables (words and synonyms).
#' @references Scraped from:
#' \href{http://dictionary.reverso.net/english-synonyms/}{Reverso Online Dictionary}.
#' The word list fed to \href{http://dictionary.reverso.net/english-synonyms/}{Reverso} 
#' is the unique words from the combination of \code{DICTIONARY} and
#' \code{labMT}.
NULL

#' First Names and Gender (U.S.)
#' 
#' A dataset containing 1990 U.S. census data on first names.
#' 
#' @details 
#' \itemize{ 
#'   \item name. A first name.
#'   \item per.freq. Frequency in percent of the name by gender.
#'   \item cum.freq. Cumulative frequency in percent of the name by gender.
#'   \item rank. Rank of the name by gender.
#'   \item gender. Gender of the combined male/female list (M/F).
#'   \item gender2. Gender of the combined male/female list with "B" in place of 
#'   overlapping (M/F) names.
#'   \item pred.sex. Predicted gender of the names with B's in \code{gender2} 
#'   replaced with the gender that had a higher \code{per.freq}.
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name NAMES 
#' @usage data(NAMES) 
#' @format A data frame with 5493 rows and 7 variables 
#' @references \url{http://www.census.gov}
NULL
 
#' First Names and Predictive Gender (U.S.)
#' 
#' A truncated version of the \code{NAMES} dataset used for predicting.
#' 
#' @details 
#' \itemize{ 
#'   \item name. A first name. 
#'   \item gender2. Gender of the combined male/female list with "B" in place of 
#'   overlapping (M/F) names.
#'   \item pred.sex. Predicted gender of the names with B's in \code{gender2} 
#'   replaced with the gender that had a higher \code{per.freq}.
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name NAMES_SEX 
#' @usage data(NAMES_SEX) 
#' @format A data frame with 5162 rows and 3 variables 
#' @references \url{http://www.census.gov}
NULL

#' First Names and Predictive Gender (U.S.) List
#' 
#' A list version of the \code{NAMES_SEX} dataset broken down by 
#' first letter.
#' 
#' @details Alphabetical list of dataframes with the following variables:
#' \itemize{ 
#'   \item name. A first name. 
#'   \item gender2. Gender of the combined male/female list with "B" in place of 
#'   overlapping (M/F) names.
#'   \item pred.sex. Predicted gender of the names with B's in \code{gender2} 
#'   replaced with the gender that had a higher \code{per.freq}.
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name NAMES_LIST 
#' @usage data(NAMES_LIST) 
#' @format A list with 26 elements 
#' @references \url{http://www.census.gov}
NULL

#' Function Words
#' 
#' A vector of function words from 
#' \href{http://myweb.tiscali.co.uk/wordscape/museum/funcword.html}{John and Muriel Higgins's list} 
#' used for the text game ECLIPSE.  The lest is augmented with additional 
#' contractions from \code{\link[qdapDictionaries]{contractions}}.
#' 
#' 
#' @docType data 
#' @keywords datasets 
#' @name function.words 
#' @usage data(function.words) 
#' @format A vector with 350 elements 
#' @references \url{http://myweb.tiscali.co.uk/wordscape/museum/funcword.html}
NULL


#' Words that Indicate Strength
#' 
#' A subset of the 
#' \href{http://www.wjh.harvard.edu/~inquirer/inqdict.txt}{Harvard IV Dictionary} 
#' containing a vector of words indicating strength.
#' 
#' @docType data 
#' @keywords datasets 
#' @name strong.words 
#' @usage data(strong.words) 
#' @format A vector with 1474 elements 
#' @references \url{http://www.wjh.harvard.edu/~inquirer/inqdict.txt}
NULL
 
#' Words that Indicate Weakness
#' 
#' A subset of the 
#' \href{http://www.wjh.harvard.edu/~inquirer/inqdict.txt}{Harvard IV Dictionary} 
#' containing a vector of words indicating weakness.
#' 
#' @docType data 
#' @keywords datasets 
#' @name weak.words 
#' @usage data(weak.words) 
#' @format A vector with 647 elements 
#' @references \url{http://www.wjh.harvard.edu/~inquirer/inqdict.txt} 
NULL
 
#' Words that Indicate Power
#' 
#' A subset of the 
#' \href{http://www.wjh.harvard.edu/~inquirer/inqdict.txt}{Harvard IV Dictionary} 
#' containing a vector of words indicating power.
#' 
#' @docType data 
#' @keywords datasets 
#' @name power.words 
#' @usage data(power.words) 
#' @format A vector with 624 elements 
#' @references \url{http://www.wjh.harvard.edu/~inquirer/inqdict.txt} 
NULL
 
#' Words that Indicate Submission
#' 
#' A subset of the 
#' \href{http://www.wjh.harvard.edu/~inquirer/inqdict.txt}{Harvard IV Dictionary} 
#' containing a vector of words indicating submission.
#' 
#' @docType data 
#' @keywords datasets 
#' @name submit.words 
#' @usage data(submit.words) 
#' @format A vector with 262 elements 
#' @references \url{http://www.wjh.harvard.edu/~inquirer/inqdict.txt} 
NULL
 
#' Strength Lookup Key
#' 
#' A dataset containing a strength lookup key. 
#' 
#' @docType data 
#' @keywords datasets 
#' @name key.strength 
#' @usage data(key.strength) 
#' @format A hash key with strength words.
#' @references \url{http://www.wjh.harvard.edu/~inquirer/inqdict.txt} 
NULL
 
#' Power Lookup Key
#' 
#' A dataset containing a power lookup key.
#' 
#' 
#' @docType data 
#' @keywords datasets 
#' @name key.power 
#' @usage data(key.power) 
#' @format A hash key with power words.
#' @references \url{http://www.wjh.harvard.edu/~inquirer/inqdict.txt} 
NULL

#' Alemany's Discourse Markers
#' 
#' A dataset containing discourse markers
#' 
#' @details A dictionary of \emph{discourse markers} from 
#' \href{http://www.cs.famaf.unc.edu.ar/~laura/shallowdisc4summ/tesi_electronica.pdf}{Alemany (2005)}. 
#' "In this lexicon, discourse markers are characterized by their structural 
#' (continuation or elaboration) and semantic (revision, cause, equality, 
#' context) meanings, and they are also associated to a morphosyntactic class 
#' (part of speech, PoS), one of adverbial (A), phrasal (P) or conjunctive (C)...
#' Sometimes a discourse marker is \bold{underspecified} with respect to a 
#' meaning. We encode this with a hash. This tends to happen with structural 
#' meanings, because these meanings can well be established by discursive 
#' mechanisms other than discourse markers, and the presence of the discourse 
#' marker just reinforces the relation, whichever it may be." (p. 191).
#' \itemize{ 
#'   \item marker. The discourse marker
#'   \item type. The semantic type (typically overlaps with \code{semantic} except in the special types
#'   \item structural. How the marker is used structurally
#'   \item semantic. How the marker is used semantically
#'   \item pos. Part of speech: adverbial (A), phrasal (P) or conjunctive (C)
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name discourse.markers.alemany 
#' @usage data(discourse.markers.alemany) 
#' @format A data frame with 97 rows and 5 variables 
#' @references Alemany, L. A. (2005). Representing discourse for automatic text summarization via 
#' shallow NLP techniques (Unpublished doctoral dissertation). Universitat de Barcelona, Barcelona.\cr 
#' \cr
#' \url{http://www.cs.famaf.unc.edu.ar/~laura/shallowdisc4summ/tesi_electronica.pdf} \cr
#' \url{http://russell.famaf.unc.edu.ar/~laura/shallowdisc4summ/discmar/#description}
NULL