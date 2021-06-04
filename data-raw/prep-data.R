library(tidyverse)

# Dataset ----

dataset <- read_csv(here::here("data-raw/dataset.csv"))

usethis::use_data(dataset, overwrite = TRUE)


