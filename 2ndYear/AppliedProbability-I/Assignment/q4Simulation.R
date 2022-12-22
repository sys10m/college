nSimulation <- 1000

coin  <- c(1,2)
HEAD <- 1
TAIL <- 2

choices <- list()
choices[[1]] <- c(HEAD, HEAD, HEAD)
choices[[2]] <- c(HEAD, HEAD, TAIL)
choices[[3]] <- c(HEAD, TAIL, HEAD)
choices[[4]] <- c(HEAD, TAIL, TAIL)
choices[[5]] <- c(TAIL, HEAD, HEAD)
choices[[6]] <- c(TAIL, HEAD, TAIL)
choices[[7]] <- c(TAIL, TAIL, HEAD)
choices[[8]] <- c(TAIL, TAIL, TAIL)

probTable <- matrix(rep(0, times = 64), ncol = 8, byrow = TRUE)
colnames(probTable) <- c(1:8)
rownames(probTable) <- c(1:8)

for (i in 1:length(choices)){
  choiceLeft <- setdiff(c(1:8), i)
  for (j in choiceLeft){
    nPlayer2Win <- 0
    for (k in 1:nSimulation){
      endGame <- FALSE
      flipedSeq <- c(0,0,0)
      while(!endGame){
        flipedSide <- sample(coin, 1)
        flipedSeq <- c(flipedSeq[2:3], flipedSide)
        if (identical(choices[[i]], flipedSeq)){
          endGame <- TRUE
        }
        else if (identical(choices[[j]], flipedSeq)){
          nPlayer2Win <- nPlayer2Win + 1
          endGame <- TRUE
        }
      }
    }
    player2WinningProb <- nPlayer2Win/nSimulation
    probTable[i,j] <- player2WinningProb
  }
}
