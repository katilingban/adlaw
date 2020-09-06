## Libraries
library(readxl)
library(dplyr)
library(tibble)

## Read MEAL dataset
meal <- read_xlsx(path = "data-raw/meal/MEAL-2019-Dataset-Sep2019.xlsx",
                  sheet = 2)

meal_vars <- read_xlsx(path = "data-raw/meal/MEAL-2019-Dataset-Sep2019.xlsx",
                       sheet = 3)

#usethis::use_data(meal, overwrite = TRUE, compress = "xz")
