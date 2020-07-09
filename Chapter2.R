# Chapter 2 of An Introduction to R 
# notes and copying for learning and suchlike
# Author: Spencer Peterson
# Date: 7/8/2020

# c is a function which can make a vector by concatenating everything together
x <- c(10.4, 5.6, 3.1, 6.4, 21.7)
x
# scalars don't exist and instead you have a vector of length one.

# you can also use the assign function
assign("x", c(10.4, 5.6, 3.1, 6.4, 21.7))
x

# assigments can be made in either direction.

# if we just print a value none of the information is saved
1/x

# make a vector of length 11 with two copies of x and a 0
y <- c(x, 0, x)
y

# Vector arithmetic 

# you can do math with shorter vectors. It will simply recycle the values 
# until they match the longer vector. But will give a warning message

v <- 2*x + y + 1
v

# max and min work like in matlab
max(x)
min(y)

# you can also do log, exp, sin, cos, tan, sqrt with vectors

#length give length
length(x)

# range returns a vector of length two with the ending
# and beginning being the two arguments
range(1,100)


# sum, mean, and var also work like you expect

# If you want to get a complex number make sure 
# you include it in function calls
sqrt(-17)
sqrt(-16+0i)


# seq makes sequence and you can make them like matlab
30:1
1:30

seq(1,30)
# can specify step
seq(-5, 5, by=.2) -> s3
s3

## logical vectors

# you can make logical values with < <- > >- ==
temp <- x > 10
temp
# you can use these vectors in normal arithmetic and they work like 0 and 1

## missing values
# some parts of vectors can be a missing value and is assigned NA

z <- c(1:3, NA); ind<-is.na(z)
ind

## Character vectors
# basically just strings or arrays of strings
labs <- paste(c("X","Y"), 1:10, sep="")
labs

## index vectors
y <- x[!is.na(x)] # get all non NA values
y

(x+1)[(!is.na(x)) & x>0] -> z
z

# first 10 elements
x[1:10]

# negative indicies exclude
y <- x[-(1:4)]
y

## Other objects

# matrices are multidimensional vectors
# factors are a way to handle categorical data
# lists are general vector with mixed types
# data frames are matrix like strucutres but columns can be different types
# functions are functions but are also objects