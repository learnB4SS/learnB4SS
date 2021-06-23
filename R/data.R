#' The phonetic profile of Korean formal and informal speech registers.
#'
#' This tibble contains data from the study discussed in Winter and Grawunder 2012.
#'
#' @format A \code{\link[tibble]{tibble}} with 224 rows and 29 variables:
#'   \describe{
#'     \item{subject}{Subject unique identifier [categorical].}
#'     \item{gender}{Gender of subject [categorical].}
#'     \item{birthplace}{Birth place of subject [categorical].}
#'     \item{musicstudent}{Does the subject have music training? [binary: yes, no]}
#'     \item{scenario}{Unique identifier of different items.}
#'     \item{task}{Task type [categorical: \code{not} = mailbox task vs
#'        \code{dct} = discourse completion task]. In the mailbox task people
#'        left a note on somebody's mailbox, while in the discourse completion
#'        task they were prompted to role-play the start of a conversation.}
#'     \item{attitude}{Attitude [binary: \code{pol}ite vs \code{inf}ormal].}
#'     \item{total_duration}{Total duration of utterances in seconds [numeric].}
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
#' @source Bodo Winter, Sven Grawunder. 2012. The phonetic profile of Korean
#'     formal and informal speech registers, Journal of Phonetics 40(6). 808-815.
#'     https://doi.org/10.1016/j.wocn.2012.08.006
#'
"polite"
