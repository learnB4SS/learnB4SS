library(tidyverse)

# Polite data ----

polite <- read_csv(here::here("data-raw/dataset.csv")) %>%
  arrange(index) %>%
  select(-index, -years_in_ger)

usethis::use_data(polite, overwrite = TRUE)


