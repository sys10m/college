# Part A
sample100 <- rnorm(100, 6, 4) # simulate a vector of size 100 drawn from a Normal(6,4)
sample80 <- rnorm(80, 7, 2) # simulate a vector of size 80 drawn from a Normal(7, 2)

# Calculate the p-value
#the means of the populations are equal
sample100_size <- length(sample100) # assign the size of the first sample to sample100_size
sample80_size <- length(sample80) #assign the size of the second sample to sample80_size

sample100_sd <- sd(sample100) # assign the sd of the first sample to sample100_sd
sample80_sd <- sd(sample80) # assign the sd of the second sample to sample80_sd

sample100_mean <- mean(sample100) # assign the mean of the first sample to sample100_mean
sample80_mean <- mean(sample80) # assign the mean of the second sample to sample80_mean

pooledSD <- sqrt(((sample100_size - 1) * sample100_sd^2 + (sample80_size - 1) * sample80_sd^2)/ (sample100_size + sample80_size - 2)) # calculate the pooled sd of two of the samples
SE <- pooledSD * sqrt(1/sample100_size + 1/sample80_size) # calculate the SE
absoluteTerm <- 0 # as if the mean were equal the absolute term will be 0, assign the value of 0 to the absolute term
p_value <- 2 * pt(absoluteTerm, sample100_size + sample80_size - 2, lower.tail = FALSE) # calculate the p-value

#the means of the populations are not equal
absoluteTerm <- abs(sample100_mean - sample80_mean) / SE # calculate the absolute term if the means are not equal
p_value <- 2 * pt(absoluteTerm, sample100_size + sample80_size - 2, lower.tail = FALSE) # calculate the p-value
#Use a t-test Assume that the populations have equal variance

#Repeat the previous task using the t.test function in the package{stats}
p_value <- t.test(sample100, sample80) # calculate the p-value using the function t.test

#Using a significance level of 0.01, give your conclusions for the result of this test
significanceLevel <- 0.01 # assign the significance level to 0.01
if(p_value <= significanceLevel) # check if the significance level is lower of equal to the p-value or not
  paste("The null hypothesis is rejected") # print the result
if(p_value > significanceLevel) # check if the significance level is higher than the p-value or not
  paste("The evidence is not sufficient to reject the null hypothesis") # print the result
# Part B
theData <- read.csv(file = "survey.csv", header = TRUE)

conTable <- table(theData$Smoke, theData$Exer) # create a contingency table from Smoke and Exer
chisq.test(conTable) # chi square test

#Why did the code give an error message?
# From the contingency table, the expected value of
#   - Heavy-None, Heavy-Some, Occas-None, and Regul-None are <5 which takes up 33.33% of them
# According to the size of n, we should not have more than 20% of the expected value to be <5.
# as the large sample size minimises the expected value and hides its significance.

#What is the null hypothesis for this test and the alternative hypothesis for this test?
# The null hypothesis is there is no association between smoke and exer variable.
# The alternative hypothesis is there is an association between smoke and exer variable.

#Using a significance of level of 0.05, give your conclusions for the result of this test
# At a significance level (alpha) of 0.05 and df of 6, the critical value is higher than the x^2.
# As the X^2 is lower than the critical value, the null hypothesis is not rejected which means statistically 
# there is no sufficient evidence to conclude that there is an association between smoke and exer variable
#
# Or, we can conclude using the p-value which leads to the same conclusion.
# As the result of p-value is 0.4828 is lower than significance level(alpha), the null hypothesis is not rejected 
