#' Creates violin plot
#'
#' @param data The dataset you want to use when making this graph
#' @param Xvar X variable for the graph
#' @param Yvar Y variable for the graph
#' @param fill_data Variable that fills the points
#' @param facet_var Variable you can want to facet the graph by
#' @param Xtext Label for the X axis
#' @param Ytext Label for the Y axis
#'
#' @return A violin plot that is faceted by your specific grouping
#' @export
Graph_Function <- function(data, Xvar, Yvar, fill_data, facet_var, Xtext, Ytext){
       Plot_Data=data
            Plot_One <- ggplot2::ggplot(Plot_Data, aes(x = {{ Xvar }}, y = {{ Yvar }}, fill = {{ fill_data }})) +
             geom_violin() +
                 xlab(Xtext) +
                 ylab(Ytext) +
                  facet_wrap( {{ facet_var }}) +
              theme_bw()

             print(Plot_One)

     }
