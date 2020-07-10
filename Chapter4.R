# Notes on Chapter four of introduction to R
# Author: Spencer Peterson
# Date 7/10/2020
# Ordered and unordered factors

# a factor is a vector object used to specify a discrete classification of the components of other vectors of the same length

#4.1 specific example
# State of origin for some australian accountants
state <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa",
"qld", "vic", "nsw", "vic", "qld", "qld", "sa", "tas",
"sa", "nt", "wa", "vic", "qld", "nsw", "nsw", "wa",
"sa", "act", "nsw", "vic", "vic", "act")

state

# use factor to create factors. 
statef <- factor(state)
statef
levels(statef)

# 4.2 the function tapply()
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
59, 46, 58, 43)

incomes

# to calculate the sample mean income for each state we can use tapply
incmeans <- tapply(incomes, statef, mean)
incmeans

# tapply applies a function (the last argument) to a vector labeled by the 
# factors

# we can create functions to apply using tapply
stdError <- function(x) sqrt(var(x)/length(x))

incster <- tapply(incomes, statef, stdError)
incster

# A vector and labeling factor is called a ragged array because the
# vector sizes may be different for different labels

# 4.3 ordered factors
# use the ordered() function
# essentially the same but the results are printed showing the ordering specified
