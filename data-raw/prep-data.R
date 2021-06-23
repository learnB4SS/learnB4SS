library(tidyverse)

# B4SS data ----

b4ss_data <- read_csv(here::here("data-raw/dataset.csv")) %>%
  arrange(index) %>%
  select(-index, -years_in_ger)

usethis::use_data(b4ss_data, overwrite = TRUE)


