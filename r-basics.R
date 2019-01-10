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

# Creating vectors with the seq() function

# the seq() function creates sequences of real numbers
# the start value, the end value and the step (distance between components)
# the default step is 1 (step i.e. interval)

x <- seq(from=1, to=10, by=0.5)
x

# we dont have to write their names if we enter the arguments in the right order (start, stop, step)

y <- seq(1, 10, 0.5)
y

z <- seq(0, 20, 2)
z

w <- seq(1, 10, 2)
w

# sequences in reversed order using a negative step

t <- seq(11, 1, -2)
t

# instead of specifying the step, we can specify the number of components
# in the sequence (the program will compute the step)
# we indicate the number of components using the length argument

# create a sequence of 10 numbers between 1 and 5
# the step is computed by dividing the difference between the stop and stop values
# to the number of components minus one

# in this case, the step is (5-1)/9 = 0.4444

q <- seq(1, 5, length = 10)
q

# create a seq of 100 numbers from -3 to 25

# the step is (25+3)/99 = 0.282828

x <- seq(-3, 25, length = 100)
x

# we can combine the seq() function with c() and rep()

y <- c(seq(1,10, length=5), 30, 40)
y

z <- rep(seq(1, 3, 0.5), 3) 
z # => 1.0 1.5 2.0 2.5 3.0 1.0 1.5 2.0 2.5 3.0 1.0 1.5 2.0 2.5 3.0

w <- rep(seq(1, 3, 0.5), each= 3)
w # => 1.0 1.0 1.0 1.5 1.5 1.5 2.0 2.0 2.0 2.5 2.5 2.5 3.0 3.0 3.0

# Vectors of random numbers
# useful in simulations and other statistical applications

# create a vector of discrete random numbers with the sample() function

# we must indicate the population and the number of values to be generated(sample)

# generate 12 random numbers from 1 to 100

n <- sample(100, 12) # same as 1:100. (range, number of values in the vector)
n

# the population can be any vector

h <- 100:300

n <- sample(h, 10)
n

# replace TRUE can show duplicated values. replace = FALSE is default in the sample() func.

n <- sample(30, 15, replace = TRUE)
n

# if the sample is greater than the population 
# the replace option must be set to TRUE e.i sample(100, 300)

m <- sample(10, 50, replace = TRUE)
m

# generating vectors of continuous random numbers
# using a few common statistical distributions 

# to generate a vector of random numbers with a normal distribution we use the rnorm() function

# we must specify the number of values (trials), mean and standard deviation
# standard deviation - how spread out the data is
# low standard deviation is where the data is closely clustered around the mean or average
# high standard deviation means that the data is dispersed over a wide range of values
# by default, mean is equal to 0 and standard deviation to 1

x <- rnorm(100, 10, 5) # => (100 numbers, mean of 10, standard deviation of 5)
x

x <- rnorm(100) # => same as (100, 0, 1) which is the default
x

# runif function - to generate a vector of uniform random numbers
# specify the number of trials and the range (lower and upper limit)
# by default, range is 0-1

y <- runif(100, 1, 5) # => (100 numbers, 1 lowest number, 5 highest number)
y

# to generate a vector of exponential random numbers
# We use the rexp() function

# we must specify the number of trials and the rate (1/mean)
# (100 numbers, rate)

z <- rexp(100, 1/50)
z

# creating empty vectors

# in some cases we need to initialize a vector before using it, like with loops

x <- c()
x

typeof(x)
length(x)

y <- NULL
y

typeof(y)

z <- vector() # will get us a logical empty vector
z

typeof(z)

# to add values to the empty vectors

x <- c(x, 1, 2)
x

typeof(x)

y <- c(y, 1, 2)
y

z <- c(z, 1, 2)
z

typeof(z)

###







