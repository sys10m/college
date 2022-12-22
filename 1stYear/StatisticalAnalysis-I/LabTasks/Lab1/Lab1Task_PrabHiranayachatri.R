#import the data to the program
Lab1 <- read.csv(file="Lab1.csv", header= TRUE)

#display the statistics for the variable EARN
summary(Lab1$EARN)

#set table.jobClass to the frequency table of Job.class
table.jobClass <- table(Lab1$Job.class)
#display table.jobClass
table.jobClass

#set ftableEDUCGenJob to the table of EDUC, Gender, Job.class
ftableEDUCGenJob <- ftable(Lab1$EDUC, Lab1$Gender, Lab1$Job.class)
#get the proportion table of the ftableEDUCGenJob
prop.table(ftableEDUCGenJob)

#set histEarn to a histogram of the variable EARN
histEarn <- hist(Lab1$EARN)
#display histEarn
histEarn

#set boxplotEarnByEDUC to boxplot of the variable EARN by EDUC
boxplotEarnByEDUC <- boxplot(Lab1$EARN~Lab1$EDUC)
#display boxplotEarnByEDUC
boxplotEarnByEDUC

#create new variable AGE_500 to AGE divided by 500
Lab1$AGE_500 = Lab1$AGE/500

#scatterplot AGE_500 on the x-axis and EARN on the Y axis
plot(Lab1$AGE_500, Lab1$EARN)
