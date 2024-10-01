my_function <- function(filepath, columns){
  my_function_modified <- filepath %>%
    filter(!is.na( {{ columns }} )) %>% 
    pull({{columns}}) 
  
  results <- (my_function_modified) / 2
  for (result in results){
    if (result < 25){
      message(paste("Check small value:", result))
    }
  }
  
  return(results)
}
