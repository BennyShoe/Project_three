#' Graph Function
#'
#' @param Dataframe Data file you wish to use
#' @param Xvar X variable for the graph
#' @param Yvar Y variable for the graph
#'
#' @return A simple scatter plot
#' @export
Graph_Function <- function(Dataframe, Xvar, Yvar){
       Dataframe %>%
         ggplot2::ggplot(Dataframe, aes(x = Xvar, y = Yvar))
   }
