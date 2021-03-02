#' Oldest Player Per NBA Season
#'
#' This function prints the oldest player in an NBA season, with the player with the most games played breaking ties.
#' @param year For what year do you want to see the oldest player?
#' @keywords nba
#' @export
#' @examples
#' oldestPlayer(2011)

oldestPlayer <- function(year) {
  data <- dplyr::filter(nba, Year == year)
  data <- dplyr::arrange(data, dplyr::desc(Age, G))
  data <- dplyr::select(data, Player, Age)
  head(data, 1)
}
