#Functions for Standardizing data
#Rachel Hansen
#rachelhansen@arizona.edu
#2023-03-14

message("Loading functions from standardize-functions.R")
#Standardize a vector of numerical data
#data: vector of numeric data
#returns: copy of original data standardized to have mean = 0, sd = 1
standardize <- function(data){
  #calculate mean of data
  mean_data <- mean(data)
  #calculate standard deviation of data
  sd_data <- sd(data)
  #calculate standarized scores
  stand_data <- (data - mean_data)/sd_data
  return(stand_data)
}

#standardize all numeric columns of a data frame
#df: data frame
#returns: data fram with numeric columns standardized to mean = 0, sd = 1
standardize_df <- function(df) {
  #Identify all numeric columns
  col_numeric <- sapply(X = df, FUN = is.numeric)
  #Standardize all iris values
  #iris_stand <- apply(X = iris[,-5],MARGIN = 2, FUN = standardize)
  df[, col_numeric] <- apply(X= df[, col_numeric], 
                             MARGIN = 2, 
                             FUN = standardize)
  return(df)
  }
