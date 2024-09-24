#### Preamble ####
# Purpose: Simulates... sta304_paper1
# Author: Jiaqi Lai
# Date: 24 September 2024
# Contact: jiaqi.lai@mail.utoronto.ca
# License: MIT
# Pre-requisites: ##
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
set.seed(304)

### define the number of records to stimulate ###
number_of_record <- 1000

### define the date ###
start_date <- as.Date("2018-01-01")
end_date <- as.Date("2023-12-31")

###stimulate race bias###
race_bias1 <- c("Black", "White", "Asian", "None")
race_bias <- sample(race_bias1, number_of_record, replace = TRUE)

###stimulate sexual orientation bias###
sexual_orientation1 <- c("Gay", "Lesbian", "2SLGBTQ+")
sexual_orientation <- sample(sexual_orientation1, number_of_record, replace = TRUE)

###stimulate primary offense###
primary_offense1 <- c("Wilful Promotion of Hatred", "Assault", "Mischief Under $5000", "Uttering Threats", "Criminal Harassment", "Theft", "Indecent Communications") 
primary_offense <- sample(primary_offense, number_of_record, replace = TRUE)

###stimulate whether the assult was made###
assault_made <- sample(c("YES", "NO"), number_of_record, replace = TRUE, prob = c(0.3, 0.7))

###stimulated data frame###
stimulated_data <- tibble(
  id = 1:number_of_record,
  


