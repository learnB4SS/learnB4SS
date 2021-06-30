#' Open slides in browser.
#'
#' Call this function with the session number as argument and the slides of that
#' session will open in your browser (an internet connection is required).
#'
#' @param session Session number as a number.
#'
#' @return Nothing. Used for its side effects.
#' @export
#'
#' @examples
#' \dontrun{
#' open_slides(0)
#' }
open_slides <- function(session) {
  num <- stringr::str_pad(session, 2, pad = '0')
  sesh <- session + 1

  if (sesh > 0 & sesh < 11) {
    utils::browseURL(slides[sesh])
  } else {
    cli::cli_alert_danger(
      glue::glue("I'm sorry, I am not aware of Session {num}! I only know Session 00 to 10...")
    )
  }
}

#' Open exercise file.
#'
#' Call this function with the session number as argument and the exercise
#' file will be copied in the working directory and opened in the editor.
#'
#' The following sessions have exercises:
#'
#' - Session 03.
#'
#' - Session 06.
#'
#' - Session 08.
#'
#' @param session Session number as a number.
#'
#' @return Nothing. Used for its side effects.
#' @export
#'
#' @examples
#' \dontrun{
#' open_exercise(3)
#' }
#' # The exercise of Session 03 will open for editing.
open_exercise <- function(session) {
  num <- stringr::str_pad(session, 2, pad = '0')
  ex_num <- glue::glue("ex_{stringr::str_pad(session, 2, pad = '0')}")

  if (!(num %in% c("03", "06", "08"))) {
    cli::cli_alert_danger(
      glue::glue("Session {num} does not have exercises! Choose Session 03, 06, or 08."))
  } else {
    v_path <- get_vignette_path(ex_num, package = "learnB4SS")

    # The file is not copied if it already exists in the working dir.
    file.copy(v_path, ".")

    usethis::edit_file(glue::glue("./{ex_num}.Rmd"))
  }
}


get_vignette_path <- function(...) {
  v <- utils::vignette(...)
  file.path(v$Dir, "doc", v$File)
}


slides <- c(
  "https://learnb4ss.github.io/slides/00_intro/index.pdf",
  "https://learnb4ss.github.io/slides/01_a2r_initial_demo/index.html",
  "https://learnb4ss.github.io/slides/02_bayes_theorem/index.pdf",
  "https://learnb4ss.github.io/slides/03_a2r_priors_and_bayesian_updating/index.html",
  "https://learnb4ss.github.io/slides/04_nhst_vs_bayesian_inference/pdf.html",
  "https://learnb4ss.github.io/slides/05_review/index.html",
  "https://learnb4ss.github.io/slides/06_a2r_inference_over_posterior/index.html",
  "https://learnb4ss.github.io/slides/07_more_priors/index.html",
  "https://learnb4ss.github.io/slides/08_a2r_leveling_up/index.pdf",
  "https://learnb4ss.github.io/slides/09_sample_the_posterior/index.html",
  "https://learnb4ss.github.io/slides/10_wrap_up/index.html"
)
