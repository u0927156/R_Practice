# Notes for chapter 5 of introduction to R
# Author: Spencer Peterson
# Date: 7/10/2020
# Arrays and matrices

# 5.1 Arrays
# A vector can only be an array if it has a dimension vector
# as as its dim attribute
z <- 1:1500
dim(z) <- c(3,5,100) # makes a 3x5x100 array

# you can use matrix() and array()

# Arrays are in column major order. The first subscript moving fastest
# access (1,1) (2,1) (3,1) (1,2) (2,2) and so on
a <- 1:24
dim(a) <- c(3,4,2)
a

# 5.2 Array indexing. Subsections of an array

a[2,,] # gets a 4x2 array with all of the second rows 
# equivalent to:
# c(a[2,1,1], a[2,2,1], a[2,3,1], a[2,4,1],
# a[2,1,2], a[2,2,2], a[2,3,2], a[2,4,2])

5.3 index matrices
X = array(1:20, dim = c(4,5))
X
i <- array(c(1:3,3:1), dim=c(3,2)) # i is a 3 by 2 index array
i
X[i] # extract those elements
X[i] <- 0
X

# negative indices are not allowed

% 5.4 the array() function

# has form:
# Z <- array(data_vector, dim_vector)

# array will recycle values in a columnwise fashion
x1 <- array(1:4, c(5,5,1))
x1

# you can use arrays in elementwise math

# Mixed vector and array math is complicated

# 5.5 outer product of two arrays
# has a special operator %o%

a <- array(1:5, c(5,1))
b <- array(5:1, c(1,5))
ab <- a %o% b
ab
# can also use outer()
ab <- outer(a, b, "*")
ab

# can also use functions
f <- function(x,y) cos(y)/(1+x^2)
z <- outer(a, b, f)
z

# Generalized transpose of an array
# aperm(a, perm) can permute an array
# perm must be a permutation of integers 1...k where k is the number of
# subscripts (or dimensions or array)

# if you want to transpose something just use t. It's simpler
A <- array(1:25, c(5,5))
A
B <- t(A)
B

# nrow(A) and ncol(A) give number of rows and columns in A
nrow(A)
ncol(A)

# 5.7.1 Matrix multiplication
# * is the matrix of element by element products and
# %*% is the matrix product
A * B
A %*% B

# crossprod(X, y) forms crossproducts. Same as t(X) %*% y but it's more efficent

# 5.7.2 Solving linear equations 
# b <- A %*% x
# solve(A,b) returns x and is the most efficient 

# 5.7.3 eigenvalues and eigenvectors
ev <- eigen(A*B) # use eigen
evals <- eigen(A*B)$values
evals

# 5.7.4 Singular value decomposition and determinants
# use svd(M)

# 5.7.5 least squars fitting and the qr decomposition
# use lsfit() to get results from least squares fitting
# use qr for QR decomposition

# 5.8 cbind and rbind
# cbind forms bigger matrices by binding matrices horizontally or column-wise
# rbind() binds vertically

# 5.9 c() function with arrays
# c doesn't respect dim functions
# can use as.vector(X) or c(X)

# 5.10 frequency tables from factor
#  you can make frequency tables using table() tapply() and factor()