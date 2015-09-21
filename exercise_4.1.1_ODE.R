# Exercise 4.1.1 Make and run exponential growth model

# 1. Setup statements, if needed (e.g. loading libraries needed for the program).
# 2. Input data, set parameter values, and/or set initial conditions.
# 3. The actual calculations.
# 4. Display the results by plotting, saving, etc.

# set up
library("deSolve")

# set parameters and initial conditions
initialPop <- 1
ttStep <- seq(0,20,by=0.01)
pars <- c(rr=0.1)

# create exp growth function
expGrowthODE <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN
  return(list(derivs))
}

# simulate the model with the lsoda function
expPopGrowth <- lsoda(initialPop, ttStep, expGrowthODE, pars)

# display results and graph
head(expPopGrowth)
plot(expPopGrowth[,1], expPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)

# change the various parameters and initial conditions to see how the functions changes
initialPop <- 100
ttStep <- seq(0,20,by=0.01)
pars <- c(rr=0.1)

expGrowthODE <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN
  return(list(derivs))
}

expPopGrowth <- lsoda(initialPop, ttStep, expGrowthODE, pars)

head(expPopGrowth)
plot(expPopGrowth[,1], expPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
# increasing initial pop size does not change the behavior of the plot, just starts and ends
## at a higher pop size, but still relative i.e. if the initial pop is 100x larger, the 
## final pop will be 100x larger

####
initialPop <- 1
ttStep <- seq(0,100,by=0.01)
pars <- c(rr=0.1)

expGrowthODE <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN
  return(list(derivs))
}

expPopGrowth <- lsoda(initialPop, ttStep, expGrowthODE, pars)

head(expPopGrowth)
plot(expPopGrowth[,1], expPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
# changing ttStep so that ttMax is 100 (instead of 20) allows the population to grow much more

####
initialPop <- 1
ttStep <- seq(0,20,by=1)
pars <- c(rr=0.1)

expGrowthODE <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN
  return(list(derivs))
}

expPopGrowth <- lsoda(initialPop, ttStep, expGrowthODE, pars)

head(expPopGrowth)
plot(expPopGrowth[,1], expPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
# changing the step in the time variable does not change the behavior of the plot

####
initialPop <- 1
ttStep <- seq(0,20,by=0.01)
pars <- c(rr=0.5)

expGrowthODE <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN
  return(list(derivs))
}

expPopGrowth <- lsoda(initialPop, ttStep, expGrowthODE, pars)

head(expPopGrowth)
plot(expPopGrowth[,1], expPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
# increasing the rate rr allows the population to increase over the same time period

initialPop <- 1
ttStep <- seq(0,20,by=0.01)
pars <- c(rr=-0.1)

expGrowthODE <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN
  return(list(derivs))
}

expPopGrowth <- lsoda(initialPop, ttStep, expGrowthODE, pars)

head(expPopGrowth)
plot(expPopGrowth[,1], expPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
# a negative value for rr decreases the population

initialPop <- 1
ttStep <- seq(0,20,by=0.01)
pars <- c(rr=-0.5)

expGrowthODE <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN
  return(list(derivs))
}

expPopGrowth <- lsoda(initialPop, ttStep, expGrowthODE, pars)

head(expPopGrowth)
plot(expPopGrowth[,1], expPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
# a larger negative value for rr decreases pop size much more quickly

initialPop <- 1
ttStep <- seq(0,20,by=0.01)
pars <- c(rr=-2)

expGrowthODE <- function(tt, NN, pars){
  derivs <- pars["rr"]*NN
  return(list(derivs))
}

expPopGrowth <- lsoda(initialPop, ttStep, expGrowthODE, pars)

head(expPopGrowth)
plot(expPopGrowth[,1], expPopGrowth[,2], xlab="time", ylab="Pop", col="red", type="l", lwd=2)
#NOTE!!! the population will NEVER fall below 0 regardless of how negatively large the growth
## rate (rr) is - it approaches 0

