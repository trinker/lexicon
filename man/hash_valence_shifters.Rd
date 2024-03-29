% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hash_valence_shifters.R
\docType{data}
\name{hash_valence_shifters}
\alias{hash_valence_shifters}
\title{Valence Shifters}
\format{
A data frame with 140 rows and 2 variables
}
\usage{
data(hash_valence_shifters)
}
\description{
A \pkg{data.table} dataset containing a vector of valence shifter words that
can alter a polarized word's meaning and a numeric key for negators (1),
amplifiers [intensifier] (2), de-amplifiers [downtoners] (3), and adversative
conjunctions (4).
}
\details{
Valence shifters are words that alter or intensify the meaning of the polarized
words and include negators and amplifiers. Negators are, generally, adverbs
that negate sentence meaning; for example the word like in the sentence, "I do
like pie.", is given the opposite meaning in the sentence, "I do not like
pie.", now containing the negator not. Amplifiers (intensifiers) are,
generally, adverbs or adjectives that intensify sentence meaning. Using our
previous example, the sentiment of the negator altered sentence, "I seriously
do not like pie.", is heightened with addition of the amplifier seriously.
Whereas de-amplifiers (downtoners) decrease the intensity of a polarized word
as in the sentence "I barely like pie"; the word "barely" deamplifies the
word like.  Adversative conjunction trump the previous clause (e.g., ``He's a
nice guy but not too smart.'').

\itemize{
  \item x. Valence shifter
  \item y. Number key value corresponding to:
\tabular{lr}{
  \bold{Valence Shifter}     \tab \bold{Value}\cr
  Negator     \tab 1 \cr
  Amplifier (intensifier)  \tab 2 \cr
 De-amplifier (downtoner)  \tab 3 \cr
 Adversative Conjunction \tab 4 \cr
}
}
}
\keyword{datasets}
