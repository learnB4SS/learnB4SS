#' Dataset title.
#'
#' A tibble ...
#'
#' @format A \code{\link[tibble]{tibble}} with 224 rows and 29 variables:
#'   \describe{
#'     \item{subject}{Subject unique identifier [categorical].}
#'     \item{gender}{Gender of subject [categorical].}
#'     \item{birthplace}{Birth place of subject [categorical].}
#'     \item{musicstudent}{Does the subject have music training? [binary: yes, no]}
#'     \item{scenario}{}
#'     \item{task}{}
#'     \item{attitude}{Attitude (binary: \code{pol}ite vs \code{inf}ormal).}
#'     \item{total_duration}{}
#'     \item{articulation_rate}{Number of syllables per second [numeric].}
#'     \item{f0mn}{Mean fundamental frequency (f0) [numeric].}
#'     \item{f0sd}{Stadard deviation of fundamental frequency [numeric].}
#'     \item{f0range}{Minimum and maximum fundamental frequency [numeric].}
#'     \item{inmn}{Mean intensity [numeric].}
#'     \item{insd}{Standard deviation of intensity [numeric].}
#'     \item{inrange}{Minimum and maximum fundamental frequency [numeric].}
#'     \item{shimmer}{Local shimmer (likewise normalized amplitude difference of consecutive periods) [numeric].}
#'     \item{jitter}{Local jitter (bsolute period-to-period difference divided by the average period) [numeric].}
#'     \item{HNRmn}{Mean Harmonics-to-Noise Ratio [numeric].}
#'     \item{H1H2}{Difference between first and second harmonic (H1-H2) [numeric].}
#'     \item{breath_count}{Number of audible breath intakes [count].}
#'     \item{filler_count}{Number of oral fillers like "oh/ah" [count].}
#'     \item{hiss_count}{Number of noisy breath intakes [count].}
#'     \item{nasal_count}{Number of nasal fillers like "mh/nh" [count].}
#'     \item{sil_count}{Number of silent pauses [count].}
#'     \item{ya_count}{Number of occurences of interjection "ya" (informal) [count].}
#'     \item{yey_count}{Number of occurences of interjection "yey" (polite) [count].}
#'  }
#' @source ...
#'
"dataset"
