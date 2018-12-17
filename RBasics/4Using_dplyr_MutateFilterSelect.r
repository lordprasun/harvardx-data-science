install.packages("dplyr")

# Loading data
library(dslabs)
data(murders)

# Loading dplyr
library(dplyr)

# Redefine murders so that it includes column named rate with the per 100,000 murder rates
murders <- mutate(murders,rate = (total/population)*100000)
# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders,rank =rank(-rate) )
# Redefine murders to include a column named rank
# with the ranks of rate from lowest to highest
murders <- mutate(murders,rank =rank(rate) )

# Use select to only show state names and abbreviations from murders
select(murders,state, abb)
# Filter to show the top 5 states with the highest murder rates
filter(murders,rank<6)

# Use filter to create a new data frame no_south
no_south <- filter(murders,region != "South")
# Use nrow() to calculate the number of rows
nrow(no_south)

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders,region %in% c("Northeast","West"), rate < 1)
# Use select to show only the state name, the murder rate and the rank
select(my_states,state,rate,rank)

# Create new data frame called my_states (with specifications in the instructions)
my_states <- murders %>% mutate( rate = total/population * 100000, rank = rank(-rate)) %>% filter(region %in% c("Northeast","West"), rate < 1) %>% select(state,rate,rank)
