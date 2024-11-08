#' Filters out blanks, NAs, and juveniles of the data
#'
#' @param data The data you want to clean
#'
#' @return Returns a clean dataset
#' @export
Filter_Function <- function(data){
        data[data == " "] <- NA
        data[data == ""] <- NA
       Clean_Fish_Data <- data %>%
             na.omit() %>%
             filter(Sex != "j")

         return(Clean_Fish_Data)


     }
