# Create a numeric vector to store the temperatures listed in the instructions into a vector named temp
temp <- c(35,88,42,84,81,30)

# Create a character vector called city to store the city names
city <- c("Beijing","Lagos","Paris","Rio de Janeiro","San Juan","Toronto")

# Associate the temperature values with its corresponding city
names(temp) <- city

# temperatures of the first three cities in the list:
temp[1:3]

# Access the temperatures of Paris and San Juan
temp[c("Paris","San Juan")]

# Create a vector containing all the positive odd numbers smaller than 100.
seq(1,100,2)

# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length
length(seq(6,55,4/7))


# The argument length.out lets us generate sequences that are increasing by the same amount but are of the prespecified length.
a <- seq(1,10,length.out = 100)

# Determine the class of a
class(a)

# Check the class of 1, assigned to the object a
class(1)
# Confirm the class of 1L is integer
class(1L)
"The main difference is that integers occupy less space in the computer memory, so for big computations using integers can have a substantial impact."

# Define the vector x
x <- c(1, 3, 5,"a")
# Typecast the vector to get an integer vector
# You will get a warning but that is ok
x <- as.numeric(x)


## ARITHMATIC

# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- (5/9)*(temp-32)
# Create a data frame `city_temps` 
city_temps <- data.frame(city,temp)

# Define an object `x` with the numbers 1 through 100
x <- 1:100
# Compute the sum 
sum(1/x^2)