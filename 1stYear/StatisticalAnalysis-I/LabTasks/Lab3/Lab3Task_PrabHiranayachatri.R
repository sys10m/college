#simulate a population of 4000 from a normal(4,5)
populationNormal <- rnorm(4000, 4, 5)

#simulate a population of 4000 from an exponential distribution with lambda = rate 2.1
populationExpo <- rexp(4000, 2.1)

#Draw sample of size 50 and 100 from each population
sampledNormal_50 <- sample(populationNormal, 50)
sampledNormal_100 <- sample(populationNormal, 100)
sampledExpo_50 <- sample(populationExpo, 50)
sampledExpo_100 <- sample(populationExpo, 100)


#@ Confidence Level 95%
#  Z score for confidence interval 95%
z_score <- qnorm(0.975)
#  CV for T-distribution for sample size of 50 and confidence level 95%
t_score_df49 <- qt(0.975, 50 - 1)

#  calculate known sd
#   for the normal distribution (populationNormal)
knownSD_normal <- sd(populationNormal)
#   for the exponential distribution (populationExpo)
knownSD_expo <- sd(populationExpo)

#  calculate unknown sd
#   for the sampled normal distribution (sampledNormal_50)
sampledSD_normal50 <- sd(sampledNormal_50)
#   for the sampled exponential distribution (sampledExpo_50)
sampledSD_expo50 <- sd(sampledExpo_50)

#  Calculate SE
#   for known SD for normal distribution and the sample size of 50
knownSE_normal50 <- knownSD_normal / sqrt(50)
#   for known SD for exponential distribution and the sample size of 50
knownSE_expo50 <- knownSD_expo / sqrt(50)
#   for unknown SD for normal distribution and the sample size of 50
unknownSE_normal50 <- sampledSD_normal50 / sqrt(50)
#   for unknown SD for exponential distribution and the sample size of 50
unknownSE_expo50 <- sampledSD_expo50 / sqrt(50)

#  Calculate the mean
#   of sampledNormal_50
mean_normal50 <- mean(sampledNormal_50)
#   of sampledExpo_50
mean_expo50 <- mean(sampledExpo_50)

#  Calculate 95% CIs using z-distribution and knownSD
#   for sampledNormal_50
normalLeft_z95_kn <- mean_normal50 - z_score * knownSE_normal50
normalRight_z95_kn <- mean_normal50 + z_score * knownSE_normal50
#   for sampledExpo_50
expoLeft_z95_kn <- mean_expo50 - z_score * knownSE_expo50
expoRight_z95_kn <- mean_expo50 - z_score * knownSE_expo50

#  Calculate 95% CIs using t-distribution and unknownSD
#   for sampledNormal_50
normalLeft_t95_unkn <- mean_normal50 - t_score_df49 * unknownSE_normal50
normalRight_t95_unkn <- mean_normal50 - t_score_df49 * unknownSE_normal50
#   for sampledExpo_50
expoLeft_t95_unkn <- mean_expo50 - t_score_df49 * unknownSE_expo50
expoRight_t95_unkn <- mean_expo50 + t_score_df49 * unknownSE_expo50


#Plot graphs to assess the normality
#   for populationNormal
qqnorm(populationNormal)
qqline(populationNormal)
hist(populationNormal, freq = FALSE)
xfit <- seq(min(populationNormal), max(populationNormal), length = 50) 
yfit <- dnorm(xfit, mean = mean(populationNormal), sd = knownSD_normal)
lines(xfit, yfit)
#   for populationExpo
qqnorm(populationExpo)
qqline(populationExpo)
hist(populationExpo, freq = FALSE)
xfit <- seq(min(populationExpo), max(populationExpo), length = 50) 
yfit <- dnorm(xfit, mean = mean(populationExpo), sd = knownSD_expo)
lines(xfit, yfit)
#   for sampledNormal_50
qqnorm(sampledNormal_50)
qqline(sampledNormal_50)
hist(sampledNormal_50, freq = FALSE)
xfit <- seq(min(sampledNormal_50), max(sampledNormal_50), length = 50) 
yfit <- dnorm(xfit, mean = mean_normal50, sd = sampledSD_normal50)
lines(xfit, yfit)
#   for sampledExpo_50
qqnorm(sampledExpo_50)
qqline(sampledExpo_50)
hist(sampledExpo_50, freq = FALSE)
xfit <- seq(min(sampledExpo_50), max(sampledExpo_50), length = 50) 
yfit <- dnorm(xfit, mean = mean_expo50, sd = sampledSD_expo50)
lines(xfit, yfit)

#3b. Would you trust/rely on the confidence intervals you calculated in part2?
#   With the sample size >30 the factor which determine which distribution should be used
#   is whether the population SD is known or not. In this case, t-distribution is used with unknown sd
#   while z-distribution is used with known population sd. So, all of them are valid in terms of picking between z and t score.
#   However, z-score is only for normal distribution as z-distribution makes an
#   assumption that the distribution is a normal distribution. So finding the
#   confidence intervals for exponential distribution using z-score is not valid.
#   For t-score, it is applicable to non normal distribution if the size is large enough.
#   So, for the exponential using t-score is valid considering that the size is large enough
#
#   In conclusion,
#     normal-z (line, 49-51) is valid as population SD is known and the sample size is large
#     expo-z (line , 52-54) is invalid as z is not applicable to non  normal distribution
#     normal-t (line, 57-59) is valid as unknown SD is used.
#     expo-t (line, 60-62) is valid as unknown SD is used and the size is large enough
#           to make t-score applicable with non normal distribution
