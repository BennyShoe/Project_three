#' Creates a linear model graph
#'
#' @param data The dataset you wish to use for the graph
#' @param x_var The X/response variable you want to use for the graph
#' @param y_var The Y/predictor variable you want to use for the graph
#'
#' @return A graph showing the linear relationship between the chosen variables
#' @export
LM_Graph_Function <- function(data, x_var, y_var){
       lm_model <- lm(paste(y_var, "~", x_var), data = data)


     ggplot2::ggplot(data, aes_string(x = x_var, y = y_var)) +
             geom_point(size = 0.5) +
             geom_smooth(method = "lm",
                         color = "navy",
                         size = 0.5,
                         fill = "orange4") +
             labs(x = x_var, y = y_var) +
             theme_bw()
   }
