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

#### clean the data and only take the information we wish to use ####

ttc_streetcar_clean <-
  clean_names(ttc_streetcar) |>
  select(line, day, incident, min_delay)

head(ttc_streetcar_clean)



write_csv(
  x = ttc_streetcar_clean,
  file = here::here("inputs/data/cleaned_ttc_streetcar.csv")
)


