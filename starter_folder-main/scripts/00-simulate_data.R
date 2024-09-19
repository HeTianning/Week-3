#### Preamble ####
# Purpose: Simulates
# Author: He Tianning
# Date: 19 September 2024
# Contact: tianning.he@mail.utoronto.ca
# License: MIT
# Pre-requisites: None



#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(96)

start_date <- as.Date("2024-01-01")
end_date <- as.Date("2024-12-31")


number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 10)
  )
#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")


