#Question 1
cor(pressure$pressure, pressure$temperature) # check the correlation between pressure and temperature

plot(pressure$pressure, pressure$temperature) # create a scatter plot of the data which shows the points
scatter.smooth(x = pressure$pressure, y = pressure$temperature, main = "Temperature ~ Pressure") # draw a smoothed line of the points

par(mfrow = c(1,2)) # split the graphing area into two parts
boxplot(pressure$pressure, main = "Pressure") # draw boxplot of the variable pressure with the title "Pressure"
boxplot(pressure$temperature, main = "Temperature") # draw boxplot of the variable temperature with the title "Temperature"
boxplot.stats(pressure$pressure)$out # print the outlier of the variable pressure
boxplot.stats(pressure$temperature)$out # print the outlier of the variable temperature

plot(density(pressure$pressure), main = "Density Plot: Pressure") # plot the density function of the variable pressure
plot(density(pressure$temperature), main = "Density Plot: Temperature") # plot the density function of the variable temperature
par(mfrow = c(1,1)) # merge the graphing area back to one part
#Question 2
pressure.lm <- lm(temperature ~ pressure, data = pressure) # assign pressure.lm to be the linear model of pressure and temperature variables
print(pressure.lm) # print out pressure.lm

plot(pressure$pressure, pressure$temperature) # draw a scatter plot of the data (pressure ~ temperature)
abline(pressure.lm) # draw the linear model (pressure.lm)

pressure.res <- resid(pressure.lm) # compute the residuals
plot(density(pressure.res), main = "Density Plot: residuals") # plot the residuals density

par(mfrow = c(2,2)) # split the screen into 4 parts
plot(pressure.lm) # plot 4 graphs (residuals-fitted, normal Q-Q, scale-location, residuals-leverage) using the plot function
# Commands used for answering question 3
summary(pressure.lm) # see the summary of the model

print(mean(pressure.res)) # print the mean of the residuals

cor.test(pressure$pressure, pressure.lm$residuals) # see the correlation between the X variable (pressure) and residuals

# Write an equation that describes the linear model you have fitted
#   The linear model used is a simple linear model which can be recognised by the number of variables.
#   In the question there is only one response variable (temperature) and one explanatory variable (pressure).
#   The equation of a simple linear model is
#               Y = beta_0 + (beta_1 * X) + e
#   As shown when the line 'print(pressure.lm)' is run, in this case, beta_0 = -147.899 and beta_1 = 1.512.
#   As error term (e) would approximately equal to 0, the equation of the linear regression this model would be
#               Y = -147.899 + (1.512 * X)

# Explain why the p-values for the variable pressure and the overall F test are so similar for this model.
#   The values are the similar because, as an simple linear regression, the model focuses on only one relationship between the only independent variable and the only dependent variable.
#   So, the p-value of the F-test, which represents the significance of the relationship in the model is dependent on the only relationship in the model (pressure-temperature)

# What you saw from the previous parts. Is the model appropriate
#   To determine the appropriation, we need to have a look into the assumptions that were made and see if it fulfills the assumptions
#     1. The regression model is linear in parameters
#         Yes, seeing from the equation of the linear model, it is linear in parameters
#     2. The regression model is correctly specified
#         No, as the graph seems to be non linear in variables, there might be a missing predictor which means the model is underspecified.
#     3. The mean of the residuals is 0 or close to
#         The mean of the residuals happens to be 3.922 as shown when the line 'print(mean(pressure.res))' is run
#     4. The X variable and residuals are uncorrelated.
#         Yes, as shown when the line 'cor.test(pressure$pressure, pressure.lm$residuals)' is run, p-value between the X variable and residuals is 1 which means there is no evidence of correlation
#     5. The residuals are normally distributed and homoscedasticity of them
#         No, as shown in the graphs, the residuals do not seem to be normally distributed or have an equal variance as there is no flatten line to be seen

#   Considering the listed assumptions above, the model fails fulfill the assumptions made, the model is not appropriate.
#   As discussed in the module, one of the important questions is whether it makes sense or not and from the shape of the function which seems to be exponential
#   it does not make sense to fit a linear model.
