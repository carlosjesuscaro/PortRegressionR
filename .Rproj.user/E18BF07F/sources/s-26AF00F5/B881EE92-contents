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
#hist(age, freq = FALSE)
#hist(expected_recovery_amount, freq = FALSE)
#hist(actual_recovery_amount, freq = FALSE)
boxplot(expected_recovery_amount)
boxplot(actual_recovery_amount)
boxplot(actual_recovery_amount~recovery_strategy)
boxplot(actual_recovery_amount~sex)

mod = lm(actual_recovery_amount ~ expected_recovery_amount + recovery_strategy)
summary(mod)
hist(mod$residuals, freq = FALSE)
plot(mod)
shapiro.test(mod$residuals) # it isn't normal
bartlett.test(mod$residuals~recovery_strategy) # no homoscedasticity

mod1 = aov(actual_recovery_amount ~ expected_recovery_amount + recovery_strategy)
summary(mod1)
anova(mod1)
