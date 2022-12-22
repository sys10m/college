
nSimulation <- 10000 # assign the number of simulations wanted
sum <- 0
for (i in 1:nSimulation){
  faceTurned <- vector("logical", 12) # initialised 12 false boolean
  dice <- 1:12 # make a 12-faced dice (1 to 12)
  count <- 0
  while(sum(faceTurned) != 12){
    count <- count + 1 # count the number of rolls done
    rolledFace <- sample(dice, 1) # roll the die
    faceTurned[rolledFace] = TRUE # switch the boolean of the face which been rolled to be true
  }
  sum <- sum + count # add the number of rolls used to the sum of every simulation
}
expectedNumber <- sum / nSimulation # get the average number of rolls by dividing the sum by the number of simulations
print(expectedNumber)
