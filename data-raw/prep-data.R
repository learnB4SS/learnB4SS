library(tidyverse)
library(brms)

# Polite data ----

polite <- read_csv(here::here("data-raw/polite.csv")) %>%
  arrange(index) %>%
  select(-index, -years_in_ger)

usethis::use_data(polite, overwrite = TRUE)

# BRMs ----

b_mod_00 <- brm(
  articulation_rate ~ 1,
  data = polite,
  file = here::here("inst/extdata/b_mod_00")
)

b_mod_01_p <- c(
  prior(normal(0, 15), class = Intercept),
  prior(normal(0, 10), class = b, coef = attitudepol),
  prior(cauchy(0, 1), class = sigma)
)

b_mod_01 <- brm(
  articulation_rate ~ attitude,
  data = polite,
  prior = b_mod_01_p,
  file = here::here("inst/extdata/b_mod_01")
)

# Emotional valence data ----

set.seed(74201)
emotion <- read_csv("https://osf.io/u47fk/download") %>%
  mutate(
    valence = Val - 5,
    valence_z = as.numeric(scale(Val))
  ) %>%
  sample_n(1000, weight = pnorm(valence_z)) %>%
  select(word = Word, valence)

usethis::use_data(emotion, overwrite = TRUE)

# Incomplete neutralisation perception data ----

incomplete <- read_csv("./data-raw/incomplete.csv") %>%
  mutate(
    listener = str_pad(listener, 2, pad = "0"),
    listener = paste0("L", listener)
  )

usethis::use_data(incomplete, overwrite = TRUE)
