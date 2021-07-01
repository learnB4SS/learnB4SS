library(tidyverse)
library(brms)

# Polite data ----

polite <- read_csv(here::here("data-raw/dataset.csv")) %>%
  arrange(index) %>%
  select(-index, -years_in_ger)


usethis::use_data(polite, overwrite = TRUE)


b_mod_00 <- brm(articulation_rate ~ 1, data = polite, file = here::here("inst/extdata/b_mod_00"))
b_mod_01_p <- c(
  prior(normal(0, 15), class = Intercept),
  prior(normal(0, 10), class = b, coef = attitudepol),
  prior(cauchy(0, 1), class = sigma)
)
b_mod_01 <- brm(articulation_rate ~ attitude, data = polite, prior = b_mod_01_p, file = here::here("inst/extdata/b_mod_01"))
