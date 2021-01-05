library(tidyverse)

set.seed(20210101)
songs <- read_csv("./data-raw/data.csv", col_types = cols(
  valence = col_double(),
  year = col_double(),
  acousticness = col_double(),
  artists = col_character(),
  danceability = col_double(),
  duration_ms = col_double(),
  energy = col_double(),
  explicit = col_double(),
  id = col_character(),
  instrumentalness = col_double(),
  key = col_double(),
  liveness = col_double(),
  loudness = col_double(),
  mode = col_double(),
  name = col_character(),
  popularity = col_double(),
  release_date = col_character(),
  speechiness = col_double(),
  tempo = col_double()
)) %>%
  filter(speechiness < 0.75) %>%
  select(speechiness, danceability, release_date, name, artists) %>%
  slice_sample(n = 5000) %>%
  mutate(
    # Use folded cube root transformation (J.W. Tukey, Exploratory Data
    # Analysis, Reading, MA: Addison-Wesley, 1977)
    speech_fcr = speechiness^(1/3) - (1 - speechiness)^(1/3),
    dance_fcr = danceability^(1/3) - (1 - danceability)^(1/3)
  )

attr(songs, "metadata") <- list(
  url = "https://www.kaggle.com/yamaerenay/spotify-dataset-19212020-160k-tracks",
  license = list(
    name = "Community Data License Agreement - Sharing - Version 1.0",
    url = "https://cdla.io/sharing-1-0/"
  ),
  sources = "Spotify Web API",
  dataset_owner = "Yamaç Eren Ay",
  version = "9"
)

usethis::use_data(songs, overwrite = TRUE)
