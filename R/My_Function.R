#' Checks to see if fish in selected column are too small
#'
#' @param filepath The path to the file you want to process
#' @param columns The selected column you want to use in the function
#'
#' @return column indicating fish that are too small. Will print "Check small value"
#' @export
my_function <- function(filepath, columns, value){
  my_function_modified <- filepath %>%
    filter(!is.na( {{ columns }} )) %>%
    pull({{columns}})

  results <- (my_function_modified) / 2
  for (result in results){
    if (result < value){
      message(paste("Check small value:", result))
    }
  }

  return(results)
}
