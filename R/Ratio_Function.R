#' Calculates three ratios of a selected columns and adds a new columns the dataset with those values
#'
#'
#' @param data The dataset you want to use
#' @param column1 The column that you want to select for the calculation in this case SL
#' @param column2 The column that you want to select for the calculation in this case LL
#' @param column3 The column that you want to select for the calculation in this case TL
#'
#' @return  A new dataset with an added columns of the three calculated ratios
#' @export
Ratio_Function <- function(data, column1, column2, column3){
        Ratio_data <- data %>%
          mutate(
            SL_LL_Ratio = {{ column1 }} / {{ column2 }},
            SL_TV_Ratio = {{ column1 }} / {{ column3 }},
            LL_TV_Ratio = {{ column2 }} / {{ column3 }}
          )

         return(Ratio_data)
     }
