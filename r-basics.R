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

m <- TRUE

N <- FALSE

class(m) # -> logical
typeof(N) # -> logical








