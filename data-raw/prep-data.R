library(tidyverse)

# Dataset ----

dataset <- read_csv(here::here("data-raw/dataset.csv")) %>%
  arrange(index)

usethis::use_data(dataset, overwrite = TRUE)


