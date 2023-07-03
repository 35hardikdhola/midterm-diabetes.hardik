diabetes=read.csv("diabetes.csv")

install.packages("dplyr")
library(dplyr)
library(ggplot2)


install.packages("explore")
library(explore)

explore_tbl(diabetes)


describe(diabetes)
explore_all(diabetes)

diabetes %>%
  select(Glucose,BloodPressure,Age,Insulin,Pregnancies,SkinThickness,BMI,DiabetesPedigreeFunction) %>%
  explore_all(target = Age)
attach(diabetes)

#plotting diabetes data set

plot(85,30,
     main = "Basic scatter plot of Bloodpressure vs Age",
     xlab = "BloodPressure",
     ylab = "Age", pch = 19)

plot(120,50,
     main = "Basic scatter plot of Glucose vs Age",
     xlab = "Glucose",
     ylab = "Age", pch = 19,
     type="p")

plot(Age,BloodPressure,
     main = "Basic scatter plot of BloodPressure vs. Age",
     xlab = "Age",
     ylab = "BloodPressure")
abline(lm(Age~BloodPressure),col="red",lwd=2, lty=1)
lines(lowess(Age~BloodPressure),col="brown",lwd=2, lty=2)


