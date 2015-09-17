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

geometricGrowthFun <- function(N0, RR, ttMax){NN <- matrix(NA, nrow=1, ncol=ttMax+1); NN[1] <- N0; for (tt in 1:ttMax){NN[tt+1] <- RR*NN[tt]}; plot(1:(ttMax+1),NN, xlab="time", ylab="N", type="b", col="blue")}
