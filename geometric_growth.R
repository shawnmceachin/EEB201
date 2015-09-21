# geometricGrowthScript.R
# a script to simulate and plot the discrete logistic model
# Setup
# none needed, since program is so simple
# Set parameter values and initial conditions, and initialize variables for output
N0 <- 25
RR <- 1.05
ttMax <- 100 # total number of timesteps to simulate
NN <- matrix(NA, nrow=1, ncol=ttMax+1) # initialize variable to a vector of NA values
NN[1] <- N0 # set first value to initial condition
# Loop over ttMax timesteps, using the model equation to update NN.
for (tt in 1:ttMax) {
  NN[tt+1] <- RR*NN[tt]
}
# Plot the results
plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")

# Exercise 3.2.1
# to make the population decline
N0 <- 25
RR <- 0.95
ttMax <- 100 # total number of timesteps to simulate
NN <- matrix(NA, nrow=1, ncol=ttMax+1) # initialize variable to a vector of NA values
NN[1] <- N0 # set first value to initial condition
# Loop over ttMax timesteps, using the model equation to update NN.
for (tt in 1:ttMax) {
  NN[tt+1] <- RR*NN[tt]
}
# Plot the results
plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")

#does the initial population value matter?
N0 <- 10
RR <- 1.05
ttMax <- 100 # total number of timesteps to simulate
NN <- matrix(NA, nrow=1, ncol=ttMax+1) # initialize variable to a vector of NA values
NN[1] <- N0 # set first value to initial condition
# Loop over ttMax timesteps, using the model equation to update NN.
for (tt in 1:ttMax) {
  NN[tt+1] <- RR*NN[tt]
}
# Plot the results
plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")

N0 <- 100
RR <- 1.05
ttMax <- 100 # total number of timesteps to simulate
NN <- matrix(NA, nrow=1, ncol=ttMax+1) # initialize variable to a vector of NA values
NN[1] <- N0 # set first value to initial condition
# Loop over ttMax timesteps, using the model equation to update NN.
for (tt in 1:ttMax) {
  NN[tt+1] <- RR*NN[tt]
}
# Plot the results
plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")

# the higher the initial population size, the quicker it gets bigger

# how does changing the time step affect the model?
N0 <- 25
RR <- 1.05
ttMax <- 10 # total number of timesteps to simulate
NN <- matrix(NA, nrow=1, ncol=ttMax+1) # initialize variable to a vector of NA values
NN[1] <- N0 # set first value to initial condition
# Loop over ttMax timesteps, using the model equation to update NN.
for (tt in 1:ttMax) {
  NN[tt+1] <- RR*NN[tt]
}
# Plot the results
plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")

N0 <- 25
RR <- 1.05
ttMax <- 1000 # total number of timesteps to simulate
NN <- matrix(NA, nrow=1, ncol=ttMax+1) # initialize variable to a vector of NA values
NN[1] <- N0 # set first value to initial condition
# Loop over ttMax timesteps, using the model equation to update NN.
for (tt in 1:ttMax) {
  NN[tt+1] <- RR*NN[tt]
}
# Plot the results
plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")

# Exercise 3.2.2
# to make the script into a function
geometricGrowthFun <- function(N0, RR, ttMax){NN <- matrix(NA, nrow=1, ncol=ttMax+1); NN[1] <- N0; for (tt in 1:ttMax){NN[tt+1] <- RR*NN[tt]}}
geometricGrowthFun(N0=10, RR=0.95, ttMax=100)
plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")
length(NN)
length(1:(ttMax+1))
geometricGrowthFun(N0=10, RR=0.95, ttMax=1000)
plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")

geometricGrowthFun <- function(N0, RR, ttMax){NN <- matrix(NA, nrow=1, ncol=ttMax+1); NN[1] <- N0; for (tt in 1:ttMax){NN[tt+1] <- RR*NN[tt]}; plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")}
geometricGrowthFun(N0=10, RR=0.95, ttMax=1000)
