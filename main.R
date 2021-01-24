# Banking recovery regression

# Importing libraries
library(dplyr)
library(car)

data <- read.csv('bank_data.csv', header=TRUE)
summary(data)
glimpse(data)

table(data$recovery_strategy)
attach(data)
plot(age, expected_recovery_amount)
plot(age, actual_recovery_amount)
boxplot(expected_recovery_amount, sex)




