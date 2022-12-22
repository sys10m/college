nHitVector <- c()

# run the simulation 10000 times
for (i in 1:10000){
  deck <- 1:100 # make a deck of 100
  nHit <- 0 # count the number of times hit is found
  for (j in 1:100){ # go through the deck
    turnedCard <- sample(deck, 1) # get one card from the deck
    deck <- setdiff(deck, turnedCard) # take the card out of the deck
    if (turnedCard == j){ # check if there is a hit
      nHit <- nHit + 1
    }
  }
  nHitVector <- c(nHitVector, nHit) # add hit to the record
}
expectedHit <- mean(nHitVector) # get the average of hits get
varianceHit <- var(nHitVector) 
print(expectedHit)
print(varianceHit)
