#' @encoding UTF-8
#' @title Nadra Pencle and Irina Mălăescu's Corporate Social Responsibility Dictionary
#' 
#' @description  A dataset containing Pencle & Mălăescu's Corporate 
#' Social Responsibility (CSR) Dictionary.  The Corporate Social Responsibility 
#' Dictionary is a text analysis coding taxonomy that was used to predict initial
#' public offerings for new companies.  This particular list was taken from 
#' http://www.catscanner.net/dictionaries.php.
#' 
#' @details 
#' \itemize{ 
#'   \item dimension. One of: "human_rights", "employee", "social_and_community", or "environment"
#'   \item regex. An associated search regex
#'   \item token. An associated word/token
#' } 
#' 
#' @docType data 
#' @keywords datasets 
#' @name key_corporate_social_responsibility 
#' @usage data(key_corporate_social_responsibility) 
#' @format A data frame with 1,421 rows and 3 variables 
#' @references 
#' Pencle, N. and Mălăescu, I. (2016) What’s in the words? Development 
#' and validation of a multidimensional dictionary for CSR and application using 
#' prospectuses. Journal of Emerging Technologies in Accounting, 13(2), 109-127.\cr
#' http://www.catscanner.net/dictionaries.php
NULL 
