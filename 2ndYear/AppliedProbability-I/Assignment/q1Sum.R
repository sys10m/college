nSimulation <- 10000

dice1 <- c(1:6)
dice2 <- c(1:6)

sumCount <- 0
for (i in 1:nSimulation){
  sumSeen <- vector("logical", 11)
  count <- 0
  while(sum(sumSeen) != 11){
    count <- count  + 1
    rolled1 <- sample(dice1, 1)
    rolled2 <- sample(dice2, 1)
    sum <- rolled1 + rolled2
    sumSeen[sum] = TRUE
  }
  sumCount <- sumCount + count
}

expectedValue <- sumCount/nSimulation
print(expectedValue)
