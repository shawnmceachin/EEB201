# run the logistic growth model in continuous time
# dN/dt = rN(1-(N/K))

# relatively arbitrary initial values
initialPop <- 1
ttStep <- seq(0,20,by=0.01)
pars <- c(rr=0.1, KK=100)

logisticGrowthContTime <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN*(1-NN/pars["KK"])
  return(list(derivs))
}

logisticPopGrowth <- lsoda(initialPop, ttStep, logisticGrowthContTime, pars)

head(logisticPopGrowth)
plot(logisticPopGrowth[,1], logisticPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)

# play with the values and see how it changes
initialPop <- 1
ttStep <- seq(0,1000,by=0.01)
pars <- c(rr=0.1, KK=1000)

logisticGrowthContTime <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN*(1-NN/pars["KK"])
  return(list(derivs))
}

logisticPopGrowth <- lsoda(initialPop, ttStep, logisticGrowthContTime, pars)

head(logisticPopGrowth)
plot(logisticPopGrowth[,1], logisticPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
# the population grows over time (not exponentially) and reaches the carrying capacity KK,
## at which point it levels out

initialPop <- 1
ttStep <- seq(0,1000,by=0.01)
pars <- c(rr=0.01, KK=1000)

logisticGrowthContTime <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN*(1-NN/pars["KK"])
  return(list(derivs))
}

logisticPopGrowth <- lsoda(initialPop, ttStep, logisticGrowthContTime, pars)

head(logisticPopGrowth)
plot(logisticPopGrowth[,1], logisticPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
# small growth rate rr make the population take much longer to reach KK

# to make it look like the exponential growth model:
initialPop <- 1
ttStep <- seq(0,1000,by=0.01)
pars <- c(rr=0.01, KK=100000)

logisticGrowthContTime <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN*(1-NN/pars["KK"])
  return(list(derivs))
}

logisticPopGrowth <- lsoda(initialPop, ttStep, logisticGrowthContTime, pars)

head(logisticPopGrowth)
plot(logisticPopGrowth[,1], logisticPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
# initialize a very high KK, with a relatively low rr and not too long of tt to see the
## population start to increase very quickly, but not reach KK


