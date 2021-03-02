#' Boogie Cousins Games Played Function
#'
#' This function allows you to see how many games played DeMarcus Cousins Played Each Year.
#' @param year For what year do you want to see how many games Boogie played?
#' @keywords nba
#' @export
#' @examples
#' gamesPlayed(2011)

gamesPlayed <- function(year) {
  data <- dplyr::filter(nba, Player == "DeMarcus Cousins", Year == year)
  print(data$G)
}
