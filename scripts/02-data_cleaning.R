#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Manjun Zhu
# Date: 26 September 2024
# Contact: karmen.zhu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None.

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
obv <- selected_columns <- Life_Expectancy_Data[, c("LifeExpectancy", "Status", "GDP", 
                                                "Polio", "Diphtheria", "IncomeComposition")]

cleaned_data <-
  selected_columns <- Life_Expectancy_Data[, c("LifeExpectancy", "Status", "GDP", 
                                               "Polio", "Diphtheria", "IncomeComposition")]

#### Remove NA data ####
cleaned_data <- na.omit(obv)

#### Save data ####
write_csv(cleaned_data, "~/STA302-group55/LifeExpectancy/LifeExpectancy/data/raw_data/raw_data.csv")

