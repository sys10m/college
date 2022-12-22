#read the population file and sample
data <- read.csv(file = "~/Desktop/StatsAssignment/dataDistance.csv", header = TRUE) #load population data
#dataSem1 <- read.csv(file = "~/Desktop/StatsAssignment/dataDistanceSem1.csv", header = TRUE) #load data from the first semester
#dataSem2 <- read.csv(file = "~/Desktop/StatsAssignment/dataDistanceSem2.csv", header = TRUE) #load data from the second semester
#sampledRowsSem1 <- sample(1:nrow(dataSem1), 15) # sample the row index for first semester
#sampledRowsSem2 <- sample(1:nrow(dataSem2), 15) # sample the row index for second semester
#sampledSem1 <- dataSem1[sampledRowsSem1, ] # take the data from the selected rows
#sampledSem2 <- dataSem2[sampledRowsSem2, ] # take the data from the selected rows
#sampledData <- rbind(sampledSem1, sampledSem2) # conbine the sampled data sets together
#sampledData # print to see the data

#library(writexl)
#write_xlsx(sampledData,"~/Desktop/StatsAssignment/sampledData.xlsx") # save the sampled file so it stays unchanged

sampledData <- read.csv(file = "~/Desktop/StatsAssignment/sampledData.csv", header = TRUE) # read the sampled file

den <- density(sampledData$distance)
plot(den) # density plot for sampled data

library(moments)
SampledMean <- mean(sampledData$distance)
SampledSD <- sd(sampledData$distance)
SampledMedian <- median(sampledData$distance)
SampledSkewness <- skewness(sampledData$distance)
SampledKurtosis <- kurtosis(sampledData$distance)
populationSD <- sd(data$distance)
populationMean <- mean(data$distance)
populationMedian <- median(data$distance)