# Notes on Chapter 3 of introduction to R
# Author: Spencer Peterson
# Date: 7/9/2020

# There are five modes or types: numeric, complex, logical, character and raw
# Vectors must have values of the same mode but all vectors can have NA


z <- c(1i, 2+0i, 3+3i)
mode(z)
length(z)

# Lists are of the mode list. They have components which can also be lists so 
# so they are recursive
# functions and expression are also recursive 

z <- 0:9
digits <- as.character(z)
digits
d <- as.integer(digits)
d
d == z

# 3.2 changing the length of an object

e <- numeric() # make an empty numeric vector
e[3] <- 17 # makes the vector length 3 but makes the first two elements NA
e

alpha <- 1:10
length(alpha)
alpha <- alpha[2 * 1:5] # reassign the vector to get only even indicies
alpha
length(alpha) <- 3 # truncate the length to 3
alpha

# 3.3 getting and setting attributes
# use the attributes() function to get all attributes of an object
attributes(alpha)

# use attr(obejct, name) to select a specific attribute
z = 1:100
attr(z, "dim") <- c(10,10) # reset the dimensions of a vector. 
# has to have same number of elements
z

# 3.4 class of an object
# you can have lots of different classes beyond the five basic modes
class(z)
class(alpha)
class(e)

unclass(z)