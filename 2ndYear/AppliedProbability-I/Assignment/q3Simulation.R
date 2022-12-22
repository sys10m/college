nSimulation <- 1000

BET <- 10
HEAD <- 1
TAIL <- 2
coin <- c(1,2)
nWin <- 0
nFinishWithin10 <- 0
for (i in 1:nSimulation){
  nCoinFlip <- 0
  endGame <- FALSE
  money <- 20
  while (!endGame){
    nCoinFlip <- nCoinFlip + 1
    flipedSide <- sample(coin, 1)
    if (flipedSide == HEAD){
      money <- money + BET
    }
    else if (flipedSide == TAIL){
      money <- money - BET
    }
    if (money >= 100){
      nWin <- nWin + 1
      endGame = TRUE
    }
    else if (money <= 0){
      endGame = TRUE
    }
  }
  if (nCoinFlip <= 10){
    nFinishWithin10 <- nFinishWithin10 + 1
  }
}
winningProb <- (nWin/nSimulation)
finishIn10Prob <- (nFinishWithin10/nSimulation)
print(winningProb)
print(finishIn10Prob)