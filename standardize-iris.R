#standardize iris values
#Rachel Hansen
#rachelhansen@arizona.edu
#2023-03-14

source(file = "standardize-functions.R")

iris_stand <- standardize_df(df = iris)

mean_petal_length <- mean(iris$Petal.Length)
sd_petal_length <- sd(iris$Petal.Length)
# z = (x- mean)/standard deviation
standard_petal_length <- (iris$Petal.Length - mean_petal_length)/sd_petal_length

mean(standard_petal_length)
summary(standard_petal_length)
sd(standard_petal_length)


fun_test <- standardize(iris$Petal.Length)
all(standard_petal_length == fun_test)

#this is now a part of the function imported above
iris_stand <- apply(X = iris[,-5],MARGIN = 2, FUN = standardize)
#Convert back to data frame
iris_stand <- as.data.frame(iris_stand)
#add back species column
iris_stand$Species <- iris$Species
