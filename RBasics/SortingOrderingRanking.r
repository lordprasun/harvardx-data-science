library(dslabs)
data(murders)

# Access population values from the dataset and store it in pop
pop <- murders$population

# Sort the object and save it in the same object 
srt <- sort(pop)
# Report the smallest population size 
srt[1]

# Use the command order, to order pop and store in object o
o <- order(pop)
# Find the index number of the entry with the smallest population size
o[1]

# Find the smallest value for population
which.min(murders$population)

# Define a variable states to be the state names 
states <- murders$state
# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)
# Create a data frame my_df with the state name and its rank
my_df <- data.frame(name = state, rank = ranks)


# Define a variable states to be the state names from the murders data frame
states <- murders$state
# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population)
# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(state = states[ind], rank = ranks[ind] )


# Using new dataset 
library(dslabs)
data(na_example)
# Checking the structure 
str(na_example)
# Find out the mean of the entire dataset 
mean(na_example)
# Use is.na to create a logical index ind that tells which entries are NA
ind <- is.na(na_example)
# Determine how many NA ind has using the sum function
sum(ind)
# Compute the average, for entries of na_example that are not NA 
mean(na_example[!ind])
