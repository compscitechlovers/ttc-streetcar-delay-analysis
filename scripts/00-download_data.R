#### Preamble ####
# Purpose: Download streetcar delay data from the OpenDataToronto portal
# Author: Sagith Kalaichelvam
# Date: 26 January 2023
# Contact: sagith.kalaichelvam@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Install required packages: opendatatoronto, tidyverse

#### Workplace set-up ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)

# get package
package <- show_package("b68cb71b-44a7-4394-97e2-5d2f41462a5d")
package

