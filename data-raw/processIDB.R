## Libraries
library(dplyr)
library(tibble)
library(readxl)

## Investment database #########################################################

xx <- read_xlsx(path = "data-raw/investment/sun-movement-investment-database.xlsx",
                sheet = 1)

investment <- xx

usethis::use_data(investment, overwrite = TRUE, compress = "xz")
