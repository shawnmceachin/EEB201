# a model for discrete logistic growth
N0=10
rr=.5
KK=100
ttMax=50
NN <- matrix(NA, nrow=1, ncol=(ttMax+1))
NN[1] <- N0
for(tt in (1:ttMax)){
  NN[tt+1] <- NN[tt]*(1+rr*(1-NN[tt]/KK))
  }
print(NN)
plot(1:(ttMax+1), NN, xlab="time", ylab="N", type="l", col="blue")

# Exercise 3.3.1
# convert the script into a function and plot it
discreteLogisticFun <- function(N0, rr, KK, ttMax){
  NN <- matrix(NA, nrow=1, ncol=ttMax+1)
  NN[1] <- N0
  for(tt in 1:ttMax){
    NN[tt+1] <- NN[tt]*(1+rr*(1-NN[tt]/KK))
  }
  plot(1:(ttMax+1), NN, xlab="time", ylab="pop", col="blue", type="l")
}
# the plot function MUST go in the function
  
discreteLogisticFun(N0=10, rr=0.5, KK=100, ttMax=50)

# try the function with different values for rr
rr=.95
KK=100
ttMax=50
NN <- matrix(NA, nrow=1, ncol=(ttMax+1))
NN[1] <- N0
for(tt in (1:ttMax)){NN[tt+1] <- NN[tt]*(1+(rr*(1-(NN[tt]/KK))))}
print(NN)
discreteLogisticFun <- function(N0, rr, KK, ttMax){NN <- matrix(NA, nrow=1, ncol=(ttMax+1)); NN[1] <- N0; for(tt in (1:ttMax)){NN[tt+1] <- NN[tt]*(1+(rr*(1-(NN[tt]/KK))))}}
discreteLogisticFun(N0=10, rr=0.95, KK=100, ttMax=50)
plot(1:(ttMax+1), NN, xlab="time", ylab="pop", col="blue")

rr=.10
KK=100
ttMax=50
NN <- matrix(NA, nrow=1, ncol=(ttMax+1))
NN[1] <- N0
for(tt in (1:ttMax)){NN[tt+1] <- NN[tt]*(1+(rr*(1-(NN[tt]/KK))))}
print(NN)
discreteLogisticFun <- function(N0, rr, KK, ttMax){NN <- matrix(NA, nrow=1, ncol=(ttMax+1)); NN[1] <- N0; for(tt in (1:ttMax)){NN[tt+1] <- NN[tt]*(1+(rr*(1-(NN[tt]/KK))))}}
discreteLogisticFun(N0=10, rr=0.10, KK=100, ttMax=50)
plot(1:(ttMax+1), NN, xlab="time", ylab="pop", col="blue")

# the higher rr is the steeper the curve and quicker the population reaches carrying capacity

# with a different KK
rr=.5
KK=1000
ttMax=50
NN <- matrix(NA, nrow=1, ncol=(ttMax+1))
NN[1] <- N0
for(tt in (1:ttMax)){NN[tt+1] <- NN[tt]*(1+(rr*(1-(NN[tt]/KK))))}
print(NN)
discreteLogisticFun <- function(N0, rr, KK, ttMax){NN <- matrix(NA, nrow=1, ncol=(ttMax+1)); NN[1] <- N0; for(tt in (1:ttMax)){NN[tt+1] <- NN[tt]*(1+(rr*(1-(NN[tt]/KK))))}}
discreteLogisticFun(N0=10, rr=0.5, KK=1000, ttMax=50)
plot(1:(ttMax+1), NN, xlab="time", ylab="pop", col="blue")

rr=.95
KK=1000
ttMax=50
NN <- matrix(NA, nrow=1, ncol=(ttMax+1))
NN[1] <- N0
for(tt in (1:ttMax)){NN[tt+1] <- NN[tt]*(1+(rr*(1-(NN[tt]/KK))))}
print(NN)
discreteLogisticFun <- function(N0, rr, KK, ttMax){NN <- matrix(NA, nrow=1, ncol=(ttMax+1)); NN[1] <- N0; for(tt in (1:ttMax)){NN[tt+1] <- NN[tt]*(1+(rr*(1-(NN[tt]/KK))))}}
discreteLogisticFun(N0=10, rr=0.95, KK=1000, ttMax=50)
plot(1:(ttMax+1), NN, xlab="time", ylab="pop", col="blue")

# Exercise 3.3.2
NO = 10
KK = 100
rrVec <- c(-0.3, 0.3, 1.3, 1.9, 2.2, 2.7)
par(mfrow = c(2,3))
for(ii in 1:length(rrVec)) {
  discreteLogisticFun(N0=10, rr=ii, KK=100, ttMax=50)
}
