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
# Indexing vectors using numeric indices

# indexing a vector means accessing the vectors components

# the indices (subscripts) must be put between square brackets

x <- c(10, 20, 30, 40, 50, 60 , 70, 80, 90, 100)

# access one component

x[2]

# access several components

x[c(1,3,8)]

# access components in order

x[2:5] # => 20 30 40 50
x[5:2] # => 50 40 30 20 

# combine the methods above

x[c(1:4, 7)] # => 10 20 30 40 70

# access last component (when we dont know the length)

x[length(x)] # => 100 gives last component

# we can put the indices in a seperate vector

n <- 3:5
x[n]

# the negative indices help us to remove a component

#remove one component

x[-2] # => 10 30 40 50 60 etc...

# or several

x[c(-1, -3, -6)] # => 20 40 50 70 80 90 100

#remove components in order

x[-2:-4] # => 10  50  60  70  80  90 100

x[-4:-2] # => 10  50  60  70  80  90 100

# combine methods above

x[c(-1:-5, -9)] # => 60  70  80 100

#removes the last component (when we dont know the length)

x[-length(x)] # => 10 20 30 40 50 60 70 80 90

# cant do x[c(3, -7)] cant mix positive and negative indices

#only zeros can be mixed with negative indices

x[c(0, -7)] #or
x[-7]

# we can add components to a existing vector or edit components using indices

x <- c(7, 8, 9, 10)
x[5] <- 11 # the index and then the appended number
x

x[2] <- 100 # => 7 100   9  10  11
x

# we cannot do this if the vector was not pre-defined

p[1] <- 3

#must define vector first

p <- c()
p[1] <- 3
p[2] <- 7
p

# to insert a component into an existing vector we must "break" the vector

x <- c(9, 10, 11, 12)

# we want to insert 50 between 11 and 12

x <- c(x[1:3], 50, x[4])
x


# index vectors using logical indices

x <- c(1, 2, 3, 4, 5)

i <- c(FALSE, TRUE, TRUE, FALSE)
x[i]

# we can do this directly as well

x[c(FALSE, TRUE, TRUE, FALSE)]

####
# Naming Vector components

salary <- c(4000, 2700, 3200)

names(salary) <- c("John", "Mark", "Bob")

salary # => John Mark  Bob 
#           4000 2700 3200

salary["Mark"] # to select the component and see his salary

# to remove names we assign the null value to the names func

names(salary) <- NULL
salary

movie_ratings <- c("PG", "PG", "PG13")
names(movie_ratings) = c("God's not Dead", "Sense and Sensibility", "Holes")
movie_ratings

movie_ratings[1]
movie_ratings["God's not Dead"]

# filtering vectors

# vector filtering (or slicing) is the operation of selecting the components that meet one or more conditions
# the filtering conditions must be put between square brackets

x <- c(10, 20, 30, 40, 50, 60, 70, 80, 90 , 100)

# select the components that are greater than 45

y <- x[x>45]
y

y <- x[x<72]
y

y <- x[x==30]
y

y <- x[x!=30]
y

y <- x[x > 27 & x < 83]
y

y <- x[x < 35 | x > 71]
y

y <- x[x < 60 | x > 20]
y

y <- x[x > 20 & x != 80]
y

y <- x[x > 20 | x != 80]
y

# to find out the indices of the components that meet a condition we can use the which() function

which(x==40) # => 4 . The fourth component of the vector

which(x < 54)

which(x > 43)

# we can store these indices in a vector to use them later

i <- which(x > 43)
i

# to check whether a value can be found in a vector we can use the binary operator %in%

40 %in% x # => TRUE

86 %in% x # => FALSE

####

# all() checks whether all the components in a vector meet a certain condition
# the result is either true or false

x <- c(1,3,5,7,9,11,13,15)

# check whether all the components are greater than zero

all(x>0)

all(x<50)

all(x<8)

all(x>10)

# two conditions

all(x>0&x<10)

all(x>0&x<35)

all(x>0|x<7) # since one condtion is satified then it returns true

all(x>4|x<7) #  => True because any component is either greater than four or less than 7

all(x>4|x<2) # => False because 3 is not lower than two or greater than 4


# any() is a func that checks whether any component in a vector meets a certain condition

x

# Is there any component greater than 4?
any(x>4)

any(x<0)

any(x==11)

any(x==4)

any(x<10&x>3)

any(x<4&x>9)

any(x<4|x>9)

any(x<0|x>100)


# Sum and Product of vector componenta
# Basic statistical indicators

x <- c(2,4,6,15,17,19)

# to add the components of a numeric vector

sum(x)

y <- sum(x)
y

# to multiply the components
prod(x)

# to compute the cumulative sum => 2  6 12 27 44 63. ex. 2, 4+2=6,6+2=12,12+15=27, etc... 
cumsum(x)

# to compute the cumulative product =>  2 8 48 720 12240 232560. ex. 2, 4*2=8,6*8=48,15*48=720, etc...
cumprod(x)

mean(x) # => 10.5

median(x)

# to get the variance
var(x)

#to get the standard deviation
sd(x)

# to get the statitics for a numeric vector

summary(x)

# vectorized operations
# operations that apply to all of the components in a vector simultaneously (in parallel)

# this is very effective feature of R and saves from writing a lot of loops
# vectorized operations are actually loops

# the result of a vectorized operation is a vector

#here's the main vectorized operations

# adding a vector to a scalar

x <- c(1,2,3,4,5)

y <- x + 10
y

# multiplying a vector bya scalar
y <- x * 3
y

# computing the modulo values of the components
# the remainders from dividing each component to a scalar

y <- x %% 2 # => 1 0 1 0 1
y

# raising  the vector components at a power # g(x) = x3


y <- x ^ 2 
y

# exponentiate each component # ex. f(x) = 3x

exp(x) 

# extraction of a square root

sqrt(x)

x ^ (1/2) # the same

# the extraction of any root

x ^ (1/3)

# compute the natural logarithm ex. 2(4)=16⟺log 2(16)=4  log base two of sixteen is four"
log(x)

# trigonometrical functions (sin, cos, etc.)

sin(x)

cos(x)


# to compute the absolute value

abs(x)

# round the vector components

z <- c(1.3, 3.7, 9.5)

round(z)

# round to the closets lower integer

floor(z)

# round to the closets higher integer

ceiling(z)

# round to the specified number of significant digits
# using the signif() function
# we have to specify the vector and the number of digits

w <- c(3.954, 7.200, 9.028)

signif(w, 1) # => 4, 7, 9

signif(w ,2)
 # => 4.0 7.2 9.0

signif(w, 3)
# => 3.95, 7.20, 9.03

# compute the factorial of each component

factorial(x) # ex. 4! = 4 × 3 × 2 × 1 = 24

# missing values in vectors, NA symbol

sal <- c(3500, 2800, 2400, NA, 2900)

mean(sal) # -> NA

sal2 <- na.omit(sal) # -> removes it
sal2
mean(sal2)

#easier way to do it

mean(sal, na.rm = TRUE)

# the missing values count for the vector length

length(sal)  # -> 5 values(including missing values)

# to identify the missing values we can use the function is.na()

y <- is.na(sal)
y # -> FALSE FALSE FALSE  TRUE FALSE fourth component is the missing value

### Sorting vectors

x <- c(6,8,3,11,5,10,2,17)

sort(x) # orders in ascending order
x

y <- sort(x)
y # -> 1 2 3 4 5

# to get the order of indices we can use the order() function

order(x) # -> 7 3 5 1 2 6 4 8

y <- sort(x, decreasing = TRUE) # orders in descending order
y

# sort characters and logical vectors too

w <- c("2", "a", "n", "d")
sort(w) # -> "2" "a" "d" "n"

sort(w, decreasing = TRUE) # -> "n" "d" "a" "2"

q <- c(TRUE, FALSE, TRUE, FALSE)
sort(q) # ascending order -> FALSE FALSE  TRUE  TRUE

sort(q, decreasing = TRUE) # -> TRUE  TRUE FALSE FALSE

### Minimum and Max values in a vector

x <- c(4,1,7,5,12,6)

min(x)

max(x)

# to determine the indices of the minimum and maximum values

which.min(x) # => 2

which.max(x) # => 5

# pmin() and pmax() allow us to determine the minima and maxima from pairs of vector values.

x

y <- c(2,9,7,6,10,14)
y

# it compares (x: 4 with y:2 and 2 is the lowest)
pmin(x,y) # => 2  1  7  5 10  6

pmax(x,y) # => 4  9  7  6 12 14

#### conditionals

# ifelse(condition, action if true, action if false)

x <- c(6, 10, 9, 5, 20, 7, 16)

y <- ifelse(x%%2==0, x/2, x)
y # => 3  5  9  5 10  7  8

x <- c(2,6,15,10,20,14)
y <- ifelse(x<=12, x*5, x*3)
y # => 10 30 45 50 60 42

x <- c(25, -36, 100, 0, -1, 49, 4, -68)
y <- ifelse(x>=0, sqrt(x), sqrt(-x))
y # => 5.000000  6.000000 10.000000  0.000000  1.000000  7.000000  2.000000  8.246211

# to remove warnings to this:

y <- sqrt(ifelse(x>=0, x, -x))
y

x <- c(15, 6, 10, 30, 4)
y <- ifelse(x^2>100, 1, 0)
y # => 1 0 0 1 0

### Adding and Multiplying vectors

X <- c(2,4,6,8)
y <- c(10,20,30,40)
z <- X + y
z

X-y
X * y
X / y
y / X
X %% y
y %% X

# if vectors have different lengths the shorter vector is recycled 

x <- c(1,2,3,4)
y <- c(9,10)
x + y # => 10 12 12 14 , ("1+9, 2+10, 3+9, 4+10")

x * y # => 9 20 27 40

y %% x # => 0 0 0 2








