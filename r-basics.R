# To import a library
# require(vcd) # or library(vcd)

# To "un-import" library
# detach(package:vcd)

# To print code
# print("Hello World")
# to get info on a method or something
# ?plot
# ?print # etc...

3+6

10-4

3*8

12/4

5^2

(7+3)*9

((3+2)*5+(10+5)/3)^3

7/0 # Divison by zero is forbidden in R => Inf

# 3 types of variables in R
# Numeric, Character, logical

x <- 5 

y <- 7

x + y

x - y

x ^ y

z <- x * y

z

w = x / y
w

# get the class and type of variable

# the class represents the abstract type of the object
# the type represents how the object is stored in the memory

class(x) # -> numeric

typeof(x) # -> double # uses double precision floating point format to store data

v <- "Tabby"
v

class(v) # -> character
typeof(v) # -> character

t <- "53"
t
class(t) # -> character
typeof(t) # -> character

# logical variables
#TRUE is 1 and FALSE i 0

m <- TRUE

N <- FALSE

class(m) # -> logical
typeof(N) # -> logical

m + N
m - N
m * N # etc...
m / N 

# variables and everything is case sensitive

X <- 100

# list of variables
ls()
# remove variable
rm(x)
# remove 2 or more variables
rm(y,z)
# remove all variable
rm(list=ls())

# a vector is a sequence of elements of the same type: numeric, character (string) or logical

# c stands for concatenate. and the characters are the parameters to the c function

x = c(10, 20, 30, 40, 50)

x

# the elements of a vector are called components

class(x)

typeof(x)

# a character vector

y <- c("a", "b", "c")

y

class(y)

typeof(y)

# a vector of logical values

z <- c(TRUE, FALSE, FALSE, TRUE)

z

class(z)
typeof(z)

# a vector with components of different types. If you create a vector with components of different types
# all of the components will be converted into strings

h <- c(1, 2, "a", "b", TRUE, FALSE)
h

class(h)
typeof(h)

# get a vector length (number of components)

length(x)
length(y)
length(z)

# we can add values to an existing vector

x <- c(x, 100)
x

# if we nest two or more c() functions the result is one vector only

w <- c(c(1, 2, 3), 25)
w

s <- c(c(2, 4, 6), c(10, 12, 14))
s

# creating vectors with the colon operator
# the colon operator helps us create sequences of integers

x <- 1:5
x

class(x)
typeof(x)

# another vector with the same values, using the c() func

y <- c(1, 2, 3, 4, 5)
y

class(y)
typeof(y)

# create a sequence in desc order

z <- 10:1
z

class(z)
typeof(z)

#we can also use variables with the colon operator

i <- 3

j <- 7

k <- i:j
k

class(k)
typeof(k)

#we can combine the colon operator with the c() func

w <- c(3:9, 70)
w

typeof(w)

z <- c(1:10, 20:-5)
z

typeof(z)

# create vectors with a rep() function

# with rep() we create vectors with replicated values

# we must specify the value and the number of times to replicate it

x <- rep(5, 3)
x

y <- rep("ab", 6)
y

# We can combine rep() with c() to replicate an entire vector

z <- rep(c(1, 2, 3),5)
z

# to replicate the vector element-wise we use the each argument

w <- rep(c(1, 2, 3), each = 5)
w

# using colon operator

q <- rep(2:5, 3)
q

# to repeat the sequence element-wise

s <- rep(2:5, each = 3)
s

# other funcs that replicate values
# the func numeric() will get us a vector of zeros

t <- numeric(4)
t

# the func character() will get us a vector of empty strings

k <- character(4)
k


#the function logical() will get us a vector of FALSE values

u <- logical(4)
u






























