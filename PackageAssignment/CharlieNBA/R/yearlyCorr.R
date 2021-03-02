#' NBA Season Stats Correlation Matrix
#'
#' This function calculates a cor plot of NBA season statistics for a specific year.
#' @param year For what year do you want to calculate a correlation matrix for?
#' @keywords nba
#' @export
#' @examples
#' yearlyCorr(2011)

yearlyCorr <- function(year) {
  data <- dplyr::filter(nba, Year == year)
  data <- purrr::keep(data, is.numeric)
  cor(data, use = "complete.obs")
}
