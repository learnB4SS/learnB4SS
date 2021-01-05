#' Spotify 1921/2020 track attributes (down-sampled).
#'
#' A tibble containing a sample of Spotify attributes of 5000 tracks, from the
#' Spotify 1921/2020 track attributes dataset.
#'
#' @format A \code{\link[tibble]{tibble}} with 5000 rows and 7 variables:
#'   \describe{
#'     \item{name}{Name of the track.}
#'     \item{release_date}{Date (YYYY-MM-DD) of release.}
#'     \item{speechiness}{Speechiness detects the presence of spoken words in a track. The more exclusively speech-like the recording (e.g. talk show, audio book, poetry), the closer to 1.0 the attribute value. Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech, either in sections or layered, including such cases as rap music. Values below 0.33 most likely represent music and other non-speech-like tracks.}
#'     \item{danceability}{Danceability describes how suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity. A value of 0.0 is least danceable and 1.0 is most danceable.}
#'     \item{speech_fcr}{Folded cube root transform of \code{speechiness}.}
#'     \item{dance_fcr}{Folded cube root transform of \code{danceability}.}
#'     \item{artists}{Artists of the track.}
#'  }
#' @source
#'   \url{https://www.kaggle.com/yamaerenay/spotify-dataset-19212020-160k-tracks}
#'
"songs"
