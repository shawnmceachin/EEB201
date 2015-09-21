# Ordinary Differential Equation (ODE)
# e.g. dN/dt=rN

# load in the differential solver package
library("deSolve")

# create an R function that contains a simple equation
expGrowthODE <- function(tt, yy, pars){
  derivs <- pars["rr"]*yy
  return(list(derivs))
}
# here, tt is time, yy is the state variable, pars is a vector of
## parameters used in the model
### the names of the variables doesn't matter - just be consistent

# generic function using lsoda
output <- lsoda(init, tseq, ODEfunction, pars)
# init = initial value of state variable (yy above)
# tseq = vector of time sequence over which to evaluate model
# ODEfunction = the function holding the model equations 
##(expGrowthODE above)
# pars = vector containing parameters used in the model

# example
init <- 1
tseq <- seq(0, 20, by=0.01)
pars <- c(rr=0.1)
# here the pars vector allows us to access the value of rr using
## pars["rr"] because we assigned the name "rr" to the element
## in the vector; you could use pars <- 0.1 or pars <- c(0.1)
## but naming prevents confusion and makes the order insignificant

expGrowthOutput <- lsoda(init, tseq, expGrowthODE, pars)
head(expGrowthOutput)
# the middle column called "time" shows the time step - this 
## is actually the first column of variables in the model - 
## so to call the values of the time variable use [,1]
# the right column shows the value of the state variable at 
## each time step

# plot the output of the model
plot(expGrowthOutput[,1], expGrowthOutput[,2], xlab="time", ylab="init", col="blue", type="l")
# the x-axis is the time (0-20)
# the y-axis is the state variable - here, init

