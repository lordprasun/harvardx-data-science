# Write code to calculate the sum of the first 100 integers
n <- 100
n*(n+1)/2

# Compute log to the base 10 (log10) of the sqrt of 100. Do not use variables.
log10(sqrt(100))

getwd()
setwd("F:/harvardx-data-science/RBasics")
#install.packages("dslabs")
library(dslabs)
data("murders")
str(murders)

# Use the function names to extract the variable names 
names(murders)

# Use the accessor to extract state abbreviations and assign it to a
a <- murders$abb
# Determine the class of a
class(a)

# Use square brackets to extract `abb` from `murders` and assign it to b
a <- murders$abb
b <- murders[["abb"]]
# Check if `a` and `b` are identical
identical(a,b)

" We can use the square brackets [[ instead of the accessor $. 
  R returns a subset of the original data frame containing just this column. 
  This new object will be of class data.frame rather than a vector. 
  To access the column itself you need to use either the $ accessor or the double square brackets [[.
  Use square brackets to extract `abb` from `murders` and assign it to b
"


# We can see the class of the region variable using class
class(murders$region)

# Determine the number of regions included in this variable 
length(levels(murders$region))

# Write one line of code to show the number of states per region
table(murders$region)

sort(murders$total)
index <- order(murders$total)
murders$total[index]