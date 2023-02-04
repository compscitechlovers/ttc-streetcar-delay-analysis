#### Preamble ####
# Purpose: TTC Streetcar Delay Dataset
# Author: Sagith Kalaichelvam
# Date: 2 February 2023
# Contact: sagith.kalaichelvam@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(janitor)
library(here)

#### Simulate ####
set.seed(853)

simulated_delay_data <-
  tibble(
    date = rep(x = as.Date("2022-01-01") + c(0:364), times = 3),
    line = c(
      rep(x = "Line 501", times = 365),
      rep(x = "Line 504", times = 365),
      rep(x = "Line 505", times = 365)
    ),
    min_delay =
      rpois(
        n = 365 * 3,
        lambda = 30
      ) 
  )

head(simulated_delay_data)

#### clean the data and only take the information we wish to use ####
ttc_streetcar_clean <-
  clean_names(ttc_streetcar) |>
  select(line, day, incident, min_delay)

head(ttc_streetcar_clean)

# Write the CSV file to be created and used in other files
write_csv(
  x = ttc_streetcar_clean,
  file = here::here("inputs/data/cleaned_ttc_streetcar.csv")
)

#### Testing ####
# If there is TRUE outputting, then test is assumed to be passed
# All of the test are passing with return value of True
# For those with multiple data outputting, there might be some false outputing
# after the True value, those can be ignored because as long the first value
# is outputting True, then that means it is passing the test, since we are only
# checking for first value to be outputted as True in the data
simulated_delay_data$line |> unique() == c('Line 501')

# Checking if the first 2 routes matches the routes listed in the dataset
ttc_streetcar_clean$line |> unique() == c('504', '501')

# Checking if the day listed as first in dataset and clean file matches
ttc_streetcar_clean$day |> unique() == c('Saturday')

# Checking if this incident listed as first in dataset and clean file matches
ttc_streetcar_clean$incident |> unique() == c('Collision - TTC Involved')

# Checking if this incident listed as first in dataset and clean file matches
ttc_streetcar_clean$min_delay |> unique() == c('30')

# Checking if the min sample matches with total samples
ttc_streetcar_clean$min_delay|> min() <= 1

# Checking if the max sample matches with total samples
ttc_streetcar_clean$min_delay|> max() <= 17655

# Test that line data is a character
ttc_streetcar_clean$line |> class() == "character"

# Test that day data is a character
ttc_streetcar_clean$day |> class() == "character"

# Test that incident data is a character
ttc_streetcar_clean$incident |> class() == "character"

# Test that min_delay data is a number
ttc_streetcar_clean$min_delay |> class() == "numeric"

