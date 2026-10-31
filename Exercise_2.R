# exercices from https://alexd106.github.io/PU5058/exercise_2.html

x <- log(10)
x
y <- log(2)
y
z <- sqrt(12.23)
z
x <-log(12.43)
x
y <-log10(12.43)
y
z <- log2(12.43)
z
a <- sqrt(12.43)
a
b <- exp(12.43)
b
# area of a circle with a diameter of 20 cm and assign the result to an object called area_circle
# r = 0.1 m 
r <- 0.1
A <- r^2* pi
A
weight <- c(69, 62, 57, 59, 59, 64, 56, 66, 67, 66)
mean(weight)
var(weight)
sd(weight)
range(weight)
length(weight)
# Now read Section 2.4 of the R book to learn how to work with vectors. 
# After reading this section you should be able to extract the weights 
# for the first five children using Positional indexes and store these 
# weights in a new variable called first_five. Remember, you will need to 
# use the square brackets [ ] to extract (aka index, subset) elements from 
# a variable.

first_five <- weight[1:5]
first_five
height <- c(112, 102, 83, 84, 99, 90, 77, 112, 133, 112)
summary(height)
some_child <- height[c(2, 3, 9, 10)]
some_child
shorter_child <- height[height <= 99]
shorter_child
