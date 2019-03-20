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

## Testing vector equality

x <- c(7,10,3,9,6)

y <- c(2,14,5,15,6)

x > y # => TRUE FALSE FALSE FALSE FALSE

y > x # => FALSE  TRUE  TRUE  TRUE FALSE

y == x # => FALSE FALSE FALSE FALSE  TRUE

y != x # => TRUE  TRUE  TRUE  TRUE FALSE

x <- c(2,4,6)
y <- c(2,4,6)

all(y == x) # are ALL the components equal to there corresponding component => TRUE

x <- c(7,8,9)
y <- c(2,4,6)

all(x>y) # => TRUE because all of the components in x are greater than the components in y

all(y>x) # => FALSE

# any function is an alternative

x <- c(4,5,6,8)
y <- c(2,7,10,8)

# check whether at least one component in x is greater than it's corresponding component in y

any(x>y) # => TRUE i.e. 4 is greater than 2

any(y>x) #=> TRUE 10 is greater than 6

any(x==y) # => TRUE 8 == 8

# identical() is an alternative

x <- c(1,2,3)
y <- c(1,2,3)
z <- c(1,2,4)

identical(x, y)

identical(x,z)

# all.equal
# if the vectors are identical, it returns TRUE
# if not, it returns the mean difference between components

all.equal(x,y) # => TRUE

all.equal(x,z) # => "Mean relative difference: 0.3333333"

x <- c(4,5,6)
y <- 4:6

identical(x,y) # => FALSE because they are of different types. x is a double(real numbers). y is integer(whole numbers)

all.equal(x,y) # => TRUE because it's only interested in the values and not the vectors type

### creating matrices with the matrix function

# a matrix is a collection of data elements of the same type
# arranged in a two-dimensional rectangle

# to create a matrix we must indicate the elements, 
# as well as the number of rows (nrow) and columns (ncol)

m <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
m

# by default, any matrix is created column-wise
#to change that we set the byrow option to TRUE

m <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = TRUE)
m

# don't need to specify both rows and columns, we can do just one of them
# the number of elements must be a multiple of the number of rows or columns

m <- matrix(c(1,2,3,4,5,6), nrow = 2)
m
#Same result as above
m <- matrix(c(1,2,3,4,5,6), ncol = 3)
m

m2 <- matrix(c(1,2,3,4,5,6,7), nrow = 2) # => error

class(m) # => matrix

typeof(m) # => double

# matrix dimensions

dim(m) # => 2 3

nrow(m) # => 2

ncol(m) # => 3

m <- matrix(1:12, nrow = 4, byrow = TRUE)
m

typeof(m) # => integer because we used the colon operator

m <- matrix(rep(8,9), nrow = 3) # rep 8 nine times
m

m <- matrix(seq(1,5,length=20), nrow = 5, byrow = TRUE)
m

m <- matrix(rnorm(20), nrow = 5, byrow = TRUE) # mean 0, standard deviation of 1
m

# you can create matrices containing character or logical data elements

### rbind() and cbind() allow us to bind vectors in order to create a matrix

# these vectors must have the same length

x <- c(1,2,3,4)

y <- c(10,11,12,13)

z <- c(20,30,40,50)

# if we use the rbind func, our vectors will be in rows

m <- rbind(x,y,z) # 1  2  3  4
                  # 10 11 12 13
m                 # 20 30 40 50

class(m) # => matrix

typeof(m) # => double

# we can bind the vectors in any order 

m <- rbind(y,z,x)
m

# we can bind the same vector several times

m <- rbind(x,y,x,z)
m

# we can enter in the vectors directly into the rbind func

m <- rbind(c(1,2,3), c(7,8,9), c(21,22,23))
m

# if we use cbind() the vectors will be in columns

m <- cbind(x,y,z) # 1 10 20
m                 # 2 11 30
                  # 2 12 40
                  # 4 13 50

class(m) # => matrix

typeof(m) # => double

### Name matrices rows and columns

# dimnames option

m <- matrix(c(1,2,3,4,5,6), nrow = 2,
            dimnames = list(c("row1", "row2"), c("col1", "col2", "col3")))

m

#      col1 col2 col3
# row1    1    3    5
# row2    2    4    6

# alternatively we can name stuff after creating the matrix using rownames() and colnames()

m <- matrix(c(1,2,3,4,5,6), nrow = 2)

m

rownames(m) <- c("row1", "row2")
m

colnames(m) <- c("col1", "col2", "col3")
m

# to remove names

rownames(m) <- NULL

m

colnames(m) <- NULL
m


### indexing matrices

# means accessing one or several matrix elements

# indices must be put between square brackets

# we must use two indices: one for the row and the other for the column

m <- matrix(1:16, nrow = 4, byrow = TRUE)
m

# access element on row 2, column 3

m[2,3]

m[4,1]

c(m[2,2], m[4,3]) # to get two of them

m[2,] # to access the whole row 2 => 5 6 7 8

# we can put the elements in this row in a vector

x <- m[2,]
x

# access entire column

m[,3]

# access elements on row 2 and columns 2,3,4

m[2, 2:4]
m

# to access the elements on column3, rows 1 and 4

m[c(1,4),3]

# to access the elements on rows 2 and 4 and columns 2 and 4

m[c(2,4), c(2,4)]

# access the elements on rows 2,3,4 and columns 3 and 4

m[2:4, 3:4]

# access the elements at the intersection of rows 1, 2 with columns 1,2.
# and the elements at the intersection or rows 3,4 with columns 3 and 4

c(m[1:2, 1:2], m[3:4, 3:4])

# access fifth element in column-wise order

m[5] #=> 2

# to access fifth and seventh element

m[c(5,7)] # => 2 10

# 5, 6, 7 element

m[5:7]

# to remove elements using negative indices
#access the row 2 less the element on the third column

m[2,-3] # => 5,6,8

# row 4, remove elements in on 2 and 4 column
m[4, c(-2, -4)] # => 13 15

# remove top row
m[2:4, -1]

### Filtering Matrices

# means accessing elements that meet a certain condition

# create a 4 by 4 matrix of 16 discrete random numbers between 1 to 100

i <- sample(100, 16, replace = TRUE)

m <- matrix(i, nrow = 4, byrow = TRUE)
m

# filter

m[m>50] # => 52 70 70 87 91

m[m<70] # => 43 11 43 23 23  8 13 27 52 11  8 40

m[m<70&m>30]

m[m>70|m<20] # meet any of these conditions

m[m==43]

m[m==99|m<30]

# to find out the indices of the elements that meet a condition we use the which() func

which(m==43) # => 1 3 

which(m>50) # => 9 11 12 14 16

# Editing elements in Matrices

m <- matrix(1:16, nrow = 4, byrow = TRUE)
 
# assign the value 100 to the element on row 3, column 4

m[3,4] <- 100
m

m[7] <- 100 # column-wise
m

m[1, 2:4] <- 100 # assign 100 to elements on row 1, columns 2,3,4
m

# assign column 0 to entire second row

m[2,] <- 0
m

# assigning mulitple values

m[1, 2:4] <- c(31,32,33)
m

# assign values to entire third column

m[,3] <- 51:54
m

m[c(7,9)] <- c(1000, 2000) 
m                         #         1   31 2000   33
                          # [2,]    0    0   52    0
                          # [3,]    9 1000   53  100
                          # [4,]   13   14   54   16

### Adding and deleting columns from a matrix

m <- matrix(1:16, nrow = 4, byrow = TRUE)
m

# to add rows use rbind()

m <- rbind(m, c(50,60,70,80))

# the vector length must be equal to the number of columns in the matrix

m

alternatively

x <- c(8,10,12,14)
m <- rbind(m,x)
m

# to remove the vector name from the row
rownames(m) <- NULL

m

m2 <- matrix(21:28, nrow = 2, byrow = TRUE)
m2

m <- rbind(m, m2)
m

# to add columns in a matrix we use cbind()

m <- matrix(1:16, nrow = 4,  byrow = TRUE)
m

m <- cbind(m, c(100,101,102,103))
m

# the vector length must be equal to the number of rows in the matrix

# We can use the cbind() to bind two or more matrices
# these matrices must have the same number of rows

m2 <- matrix(51:58, nrow = 4, byrow = TRUE)
m2

m <- cbind(m, m2)
m # the last two columns were added to matrix m

# to remove rows and columns we simply use negative indices

m <- matrix(1:16, nrow = 4, byrow = TRUE)

m1 <- m[-2,] # to remove 2nd row
m1

# to remove 1st column

m1 <- m[,-1]
m1

# to remove first and third row
m1 <- m[c(-1,-3),]
m1

# to remove first and third column
m1 <- m[,c(-1,-3)]
m1

# to remove first, second and third row
m1 <- m[-1:-3,]
m1

# to remove first, second and third column
m1 <- m[,-1:-3]
m1


### Minima and Maxima

i <- sample(100,20)

m <- matrix(i,nrow = 4, byrow = TRUE)
m  

# get minimum and maximum value, overall
min(m)  
  
max(m)

min(m[3,])  # minimum value of the third row

max(m[,4]) # maximum value in the fourth column

# to get the indices of the minimum and maximum values we use 
# the funcs which.min() and which.max()

# the indices of the overall minimum and maximum values

m

which.min(m)

which.max(m)
  
#the index of the minimun value of the third row

which.min(m[3,]) # lowest number within the row
  
which.max(m[,5])# highest number within the column

# we can use the pmin() and pmax() to get the minima and maxima 
# for pairs of rows and columns

# get the minima for the rows 2 and 3

pmin(m[2,], m[3,])

# get the max for the rows 2 and 3

pmax(m[2,],m[3,])

### Applying Functions to matrices

# the arguments of the apply function are:
# the matrix name
# the dimension we apply the function to (1 for rows, 2 for columns)
# the function to apply

# create a 4x4 matrix

m <-matrix(1:16, nrow = 4)
m

# compute the sum of the elements on each row and column, respectively

apply(m, 1, sum)

apply(m, 2, sum)

apply(m, 1, prod)

apply(m, 2, prod)

apply(m, 1, mean)

apply(m, 2, mean)

apply(m, 1, sd) # standard deviation

apply(m,2, sd)  

# to compute the cumulative sums for the data values in each row
apply(m, 1, cumsum)

# the cumsums are computed my row, but the matrix is built column-wise( R default)

# to build the same matrix row-wise we have to use the matrix() func

m1 <- matrix(apply(m, 1, cumsum), nrow = 4, byrow = TRUE)
m1

# compute the cumlative sums for each column

m

apply(m, 2, cumsum) # the cumsums are computed by columns and the matrix is built column-wise

m

# square roots, first row's square roots are in the first column, etc... because R builds the matrix column-wise
apply(m, 1, sqrt)

# compute the natural logarithms by row
apply(m, 1, log)

# compute the natural antilogarithms by row
apply(m, 1, exp)

# to get row-wise matrix using the sqrt func

m1 <- matrix(apply(m, 1, sqrt), nrow = 4, byrow = TRUE)
m1

# to get row-wise matrix using the log func

m1 <- matrix(apply(m, 1, log), nrow = 4, byrow = TRUE)
m1

# the same happens when we use a custom function applied by row

f <- function (x) { 2*x + 3 }
m

apply(m, 1, f) # data is set column-wise. Data in 2nd column is from the 2nd row of matrix m which is the (x) for the f function

m1 <- matrix(apply())

# to get a row-wise matrix

m1 <- matrix(apply(m, 1, f), nrow = 4, byrow = TRUE) 
m1


# with cumsum, log, exp, sqrt, sin, cos by column then no problems arise

# to get the matrix row-wise with these funcs you have to use the matrix() function

### sweep()

m <- matrix(1:12, nrow = 3, byrow = TRUE)


# for the sweep() function we must specify:

# the data source (our matrix)
# the dimension (1 for rows, 2 for columns)
# the vector of values (its length must be equal to the number of columns/rows)
# a binary operator between quotation marks: "+", "-", "=", or "/"

# add 10, 20, and 30 to each row, respectively

sweep(m, 1, c(10,20,30), "+")

# subtract 10, 20, and 30 to each row, respectively

sweep(m, 1, c(10,20,30), "-")


# multiply 10, 20, and 30 to each row, respectively

sweep(m, 1, c(10,20,30), "*")


# divide 10, 20, and 30 to each row, respectively

sweep(m, 1, c(10,20,30), "/")

# add 10, 20, and 30 to each column, respectively

sweep(m, 2, c(10,20,30, 40), "+")

# subtract 10, 20, and 30 to each column, respectively

sweep(m, 2, c(10,20,30,40), "-")

# multiply 10, 20, and 30 to each column, respectively

sweep(m, 2, c(10,20,30,40), "*")

# divide 10, 20, and 30 to each column, respectively

sweep(m, 2, c(10,20,30,40), "/")

### add or multiply matrices

m1 <- matrix(1:9, nrow = 3, byrow = TRUE)

m2 <- matrix(101:109, nrow = 3, byrow = TRUE)

m <- m1 + m2
m

m <- m1 * m2
m

# use %*% to perform real matrix multiplication

m1 <- matrix(1:15, nrow = 3, byrow = TRUE) 

m1

m2 <- matrix(1:20, nrow = 5, byrow = TRUE)

m2

m <- m1 %*% m2
m # the result is a 3x4 matrix

# to transpose a matrix use the t()

M <- matrix(1:20, nrow = 5, byrow = TRUE)
M

t(M) # now it has 5 columns and 4 rows instead of having 4 columns and 5 rows

# to compute the determinant of a quadratic matrix we use the det() function

m <- matrix(c(2,4,8,12,5,7,9,15,10), nrow = 3, byrow = TRUE)

m

det(m)

m <- matrix(c(2,4,8,12,5,7,9,15,10), nrow = 3, byrow = FALSE)
m

# to compute the inverse of a quardratic matrix we use the solve()
# only works if the determinant is different from zero

mi <- solve(m)

mi

m %% mi

# to extract the elements on the main diagonal of a quadratic matrix
# we use the diag()

m

x <- diag(m)
x

class(x)# numeric

x <- c(10,12,14,16,18)

diag(x) # creates a table where the components are going in a diagonal
# line down the table

# to create an identity matrix

# this will create a 5 * 5 identity matrix

diag(rep(1,5)) # replicate the number 1 five times

### Multi-dimensional arrays

# stores several matrices 

# the matrices must have the dame dimension

# 3 brands that sell in two markets

# create a matrix that contain the brands codes and prices in the first market

market1 <- matrix(c(22,44,66,9,12,5), nrow = 3)
rownames(market1) <- c("brand1", "brand2", "brand3")
colnames(market1) <- c("code", "price")

market1

market2 <- matrix(c(55,77,66,99,10,5), nrow = 3)
rownames(market2) <- c("brand1", "brand2", "brand3")
colnames(market2) <- c("code", "price")
market2

# the order of the dimensions are rows, columns, layers  example: 3, 2, 2

markets <- array(data=c(market1, market2), dim=c(3,2,2))
# if we dont specify the dimensions the result will be a vector and not an array

markets2 <- array(data=c(market1, market2))
markets2  

markets

markets <- array(data=c(market1, market2), dim=c(3,2,2),
  dimnames = list(c("brand1", "brand2", "brand3"), c("code", "price"), c("smark1", "smark2")))

markets  

dim(markets)  # to get dimensions

dimnames(markets)  # to get dimension names

###  Lists

# a data structure that can contain objects of different types
  
# 4 employess. Name, age, gender, annual salary, whether they're managers or not
  
employees <- list(names=c("Mark", "Tom", "Laura", "Tabitha"),
                 age=c(49, 28, 35, 25),
                 gender=c("m", "m", "f","f"),
                 salary=c(75000, 62000, 55000, 46000),
                 manager=c(TRUE, FALSE, FALSE, TRUE))
employees  

# can create a list without object names as well

employees2 <- list(c("Mark", "Tom", "Laura", "Tabitha"),
                  c(49, 28, 35, 25),
                  c("m", "m", "f","f"),
                  c(75000, 62000, 55000, 46000),
                  c(TRUE, FALSE, FALSE, TRUE))
employees2

class(employees)  # => list

typeof(employees)  # => list

# to print list structure

str(employees)

names(employees)

# lists dont have to be the same length

lunch <- list(Tabitha=c("omelette", "fried potatoes"),
              Aurora=c("salad", "beef steak"),
              Felix=c("salad", "lasagna", "pancakes"),
              Ruby= 100) # the bill value
lunch

str(lunch)

### Lists with the vector()

employ <- vector(mode = "list") 
class(employ)

# now add objects to the list

employ[["names"]] <- c("Mark", "Tabs", "Ruby", "Felix")

employ[["age"]] <- c(49,28,35,25)

employ[["gender"]] <- c("m", "f", "f", "m")

employ[["salary"]] <- c(75000, 62000, 55000, 46000)

employ[["manager"]] <- c(TRUE, TRUE, FALSE, FALSE)

employ

### indexing lists. 
# To access objects we use double brackets
# To access individual elements we use simple brackets

employees <- list(names=c("Mark", "Tabby", "Felix", "Ruby"),
                  age=c(27, 31, 3, 4),
                  gender=c("m", "f", "m", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, TRUE, FALSE, FALSE))

# to extract the vector of names

employees[["names"]]

x <- employees[["names"]]
x

class(x)
typeof(x)

employees[["age"]]

employees[[1]] # to extract the object if it has no name, use the object indices

employees[[5]]

# to access an element. Three ways to do it

employees[["names"]][3]
employees[[1]][3]
employees[[c(1,3)]]

employees[["salary"]][2]
employees[[4]][2]
employees[[c(4,2)]]

# to get multiple employee salaries

employees[["salary"]][1:3]
employees[["salary"]][c(1,4)]

# to remove second salary from the list
employees[["salary"]][-2]

employees[["age"]][-1:-3]

### Indexing lists using the objects names

employees <- list(names=c("Mark", "Tabby", "Felix", "Ruby"),
                  age=c(27, 31, 3, 4),
                  gender=c("m", "f", "m", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, TRUE, FALSE, FALSE))

employees

# to access the vectors of names, gender and salary

employees$names

employees$gender

employees$salary

# get someones salary

employees$salary[2]

employees$salary[2:4]

# remove elements
employees$salary[-1]

# create  sub list with ages and salaries only
emp2 <- list(age=employees$age, salary=employees$salary)
class(emp2)
emp2

# editing lists

employees <- list(names=c("Mark", "Tabby", "Felix", "Ruby"),
                  age=c(27, 31, 3, 4),
                  gender=c("m", "f", "m", "f"),
                  salary=c(75000, 62000, 55000, 46000),
                  manager=c(TRUE, TRUE, FALSE, FALSE))

employees


# change toms salary from 62000 to 64000
employees[["salary"]][2] <- 64000
#or
employees$salary[2] <- 64000

employees[["manager"]][3] <- TRUE
employees

# change all the salaries

employees[["salary"]] <- c(85000, 75000, 450000, 34000)
employees

### Adding and removing list objects

employees

# add the number of monthly working hours for each employee
employees$hours <- c(200, 220, 235, 215)
employees

employees

#to remove an object

employees$hours <- NULL
employees

# can add new elements to existing objects

employees[["names"]][5] <- "Felix"

employees[["age"]][5] <- 3

employees[["gender"]][5] <- "m"

employees[["salary"]][5] <- 43000

employees[["manager"]][5] <- FALSE

employees

### applying functions to lists

# use lapply()

# can only be used when the elements are of the same type numeric

carspec <- list(engine=c(1.8, 3.2, 3.5, 1.8, 2.8, 4.2),
                horse=c(140, 225, 210, 150, 200, 310),
                weight=c(2639, 3517, 3850, 2998, 3561, 3902))
carspec

# compute average value for each object
# soecify the list name and the function
lapply(carspec, mean)

l <- lapply(carspec,mean)
l

class(l)
typeof(l)

lapply(carspec, sd)

lapply(carspec, sum)

lapply(carspec, prod)

lapply(carspec, cumsum)

lapply(carspec, cumprod)

lapply(carspec, log)

f <- function (x) { x^2 + 3 * x}
lapply(carspec, f)

# sapply() is a simplified version of lapply() but it returns a vector and not a list

sapply(carspec, mean)

s <- sapply(carspec, mean)
class(s)
typeof(s)
s

names(s)

s <- sapply(carspec, mean, simplify = FALSE) # now it will return a list
s

carspec2 <- list(make=c("toyota", "nissan", "ford", "cooper", "bmw", "dodge"),
                engine=c(1.8, 3.2, 3.5, 1.8, 2.8, 4.2),
                horse=c(140, 225, 210, 150, 200, 310),
                weight=c(2639, 3517, 3850, 2998, 3561, 3902))
carspec2

lapply(carspec2, mean) # error its not numeric or logical

sapply(carspec2, mean) # same error











