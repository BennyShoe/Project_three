# Sample R Package 
## An example of an R package 
### Author: Ben Schuster 
#### Spring 2024


## Introducing the posterior Trace Package 

+ This function works in relation to the Fish_Data dataset provided by Dr.Kyle Piller. This package does various cleaning, manipulating, graphing, and distribution tests using the provided dataset. 

## Why use package 
+ This R package will provide useful tools for working with the dataset and can even be potentially applied to your very down data! I am not responsible if my package jacks up your computer or data. 

## Install info 
```

library(readr)
library(googlesheets4)
gs4_deauth()
download.file("https://github.com/BennyShoe/Project_three/raw/refs/heads/main/data/R_Project1_Our_Data.csv","/cloud/project/data/Fish_Data.csv")

#Make sure to put the data into a dataframe 
```

## Functions 
+ Tutorials for the functions will be provided in the vignettes folder 

+ Function one filters the data to remove NAs and juveniles from the dataset

+ Function two creates a violin plot that will be faceted by a designated variable. For testing I recommend using the example below.  

+ Function three allows you to check to see if fish in selected column are too small. I recommend using this function to look at standard lengths(SL) with a range of 15-30. 

+ Function four Calculates three ratios of a selected columns and adds a new columns the dataset with those values. The ratios are as followed SL_LL_Ratio(standard length to lateral line length) , SL_TV_Ratio(standard length to total vertebrae count) , and LL_TV_Ratio(lateral line length to total vertebrae count) . For the function to work add the columns in the order listed below. 

+ Function five creates a linear model graph. For testing I recommend using the example below.  

+ Function six creates various linear model tests to see if your data is normally distributed. For testing I recommend using the example below.  
