#' Calculates the mean of a selected column and adds a new column the dataset with those values
#'
#' @param data The dataset you want to use
#' @param column The column that you want to select for the mean calculation
#'
#' @return A new dataset with an added column of the mean
#' @export
Mean_Function <- function(data, column){
        mean_value <- data %>%
             select({{ column }}) %>%
              pull() %>%
              as.numeric() %>%
              mean(na.rm = TRUE)

          mean_data <- data %>%
                mutate(Mean = mean_value)

            return(mean_data)
     }
