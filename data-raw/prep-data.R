library(tidyverse)

# Dataset ----

dataset <- read_csv(here::here("data-raw/dataset.csv")) %>%
  arrange(index) %>%
  select(-index, -years_in_ger)

usethis::use_data(dataset, overwrite = TRUE)


