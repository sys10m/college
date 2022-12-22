n_stay <- 0     # set number of stays to 0
n_switch <- 0   # set number of switches to 0
n_winCar <-0  # set number of wins to 0

for ( i in 1:100) { # run the game 100 times
  door <- c(1,2,3) # make the doors represented by numbers 1-3
  cardoor <- sample(door,1)  # sample one of the doors to have a car behind
  choice <- sample(door,1) # sample one of the doors to be player's choice
  goatdoors <- setdiff(door, cardoor) # set the rest of the doors (not car door) to be goat doors
  reveal_options <- setdiff(goatdoors, choice) # set the goatdoor(s) that is not chosen to be the options for reveal
  if (choice == cardoor) { # if the player choose the car door (there are two choices of goat doors we can choose to reveal)
    reveal <- sample(reveal_options,1)  # sample one of the reveal options to be reveal
  } else { # else (the player picked the goatdoor) there is only one option of doors to reveal
    reveal <- reveal_options # reveal the only option
  }
  
  remaining_doors <-setdiff(door, reveal) # set the remaining doors to be the unreveal doors
  newchoice <- setdiff(remaining_doors, choice) # set the new choice to the one that is not chosen in the first round from the remaining doors
  
  switchOrStay <- c("switch", "stay") # make two choices for the player (switch and stay)
  decision <- sample(switchOrStay,1) # choose one of the choices randomly to be player's decision
  
  if (choice == cardoor) { # if the cardoor is the original choice (if the player chose to stay, he/she wins)
    n_stay <- n_stay + 1 # number of stays + 1
    if (decision == "stay"){ # if the player's decision is to stay
      n_winCar <- n_winCar + 1 # number of wins + 1
    }
  }
  
  if (newchoice == cardoor) { # if the cardoor is the new choice (if the player chose switch, he/she wins)
    n_switch <- n_switch + 1 # number of switches + 1
    if (decision == "switch"){ # if the player's decision is to switch
      n_winCar <- n_winCar + 1 # number of wins + 1
    }
  }
}

print(n_stay/100) # print out the number of stays divided by 100
print(n_switch/100) # print out the number of switches divided by 100
print(n_winCar/100) # print out the number of wins divided by 100
