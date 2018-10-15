#' Colin Martindale's English Regressive Imagery Dictionary
#' 
#' A dataset containing Colin Martindale's (1975, 1990) English Regressive Imagery 
#' Dictionary (RID).  The Regressive Imagery Dictionary (RID) is a text analysis
#' coding taxonomy that can be used to measure the degree to which a text is 
#' \emph{primordial} vs. \emph{conceptual}.  This acts as a proxy for assessing the 
#' illuctioner's mental thinking in producing the text. This dictionary is 
#' essentially a bucketed grouping of regexes'  The main level of bucketing is
#' \emph{thinking} and is either \emph{primordial} vs. \emph{conceptual}.
#' Under the primordial group is the \emph{primary} process group while the conceptual
#' thinking includes \emph{secondary} and \emph{emotional} process groups.  These
#' can be further broken into categories and subcategories (subcategories for 
#' primary process only).  Comparing the percentages of the buckets provides
#' insight into the writer's thinking.  This particular list was taken from 
#' https://github.com/jefftriplett/rid.py.
#' 
#' 
#' @section License: 
#' \emph{The data set was extracted from https://github.com/jefftriplett/rid.py.  
#' Below is the license from Wiseman's project.}
#' 
#' Copyright 2007 John Wiseman <jjwiseman@yahoo.com>
#' 
#' Permission is hereby granted, free of charge, to any person
#' obtaining a copy of this software and associated documentation files
#' (the "Software"), to deal in the Software without restriction,
#' including without limitation the rights to use, copy, modify, merge,
#' publish, distribute, sublicense, and/or sell copies of the Software,
#' and to permit persons to whom the Software is furnished to do so,
#' subject to the following conditions:
#' 
#' The above copyright notice and this permission notice shall be
#' included in all copies or substantial portions of the Software.
#' 
#' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
#' EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
#' MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
#' NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
#' BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
#' ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
#' CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#' SOFTWARE.
#' @details 
#' \itemize{ 
#'   \item thinking. Either primordial or conceptual
#'   \item process. One of three: primary (5 categories & 29 subcategories), secondary (7 categories), or emotional (7 categories)
#'   \item category. A level of bucketing lower than process
#'   \item subcategory.  A level of bucketing lower than category (only applies to rimary process)
#'   \item regex. An associated search regex
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name key_regressive_imagery 
#' @usage data(key_regressive_imagery) 
#' @format A data frame with 3,151 rows and 5 variables 
#' @references 
#' Martindale, C. (1975). Romantic progression: The psychology of literary history. Washington, D.C.: Hemisphere.\cr
#' Martindale, C. (1976). Primitive mentality and the relationship between art and society. Scientific Aesthetics, 1, 5218.\cr
#' Martindale, C. (1977). Syntactic and semantic correlates of verbal tics in Gilles de la Tourette's syndrome: A quantitative case study. Brain and Language, 4, 231-247.\cr
#' Martindale, C. (1990). The clockwork muse: The predictability of artistic change. New York: Basic Books. \cr
#' https://provalisresearch.com/products/content-analysis-software/wordstat-dictionary/regressive-imagery-dictionary/
NULL 
