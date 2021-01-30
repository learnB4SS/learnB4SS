library(tidyverse)

# Dataset ----

dataset <- read_csv(here::here("data-raw/dataset.csv"))

# To be filled later, don't remove.
# attr(songs, "metadata") <- list(
#   url = "https://www.kaggle.com/yamaerenay/spotify-dataset-19212020-160k-tracks",
#   license = list(
#     name = "Community Data License Agreement - Sharing - Version 1.0",
#     url = "https://cdla.io/sharing-1-0/"
#   ),
#   sources = "Spotify Web API",
#   dataset_owner = "Yamaç Eren Ay",
#   version = "9"
# )

usethis::use_data(dataset, overwrite = TRUE)


