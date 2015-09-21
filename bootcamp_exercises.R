# Exercise 1
for (ii in 1:9) {cat("\n"); if(ii==9){cat("*")}}

# Exercise 2
for (ii in 1:10){cat("*&")}

# Exercise 3
# by hand
# first iteration: initial value of vector dogs is 10; the final value is 11
# second iteration: intial value of vector dogs is now 11; the final value is 12
# third iteration: initial value of vector dogs is now 12; the final value is 13
# fourth iteration: initial value of vector dogs is now 13; the final value is 14
# fifth iteration: initial value of vector dogs is now 14; the final value is 15
dogs <- 10;
for (i in 1:5){
  dogs <- dogs + 1; 
}


# first iteration: initial value of vecotr meatloaf is 0; the final value -4
# second iteration: initial value of vector meatloaf is -4; the final value is -9
# third iteration: initial value of vector meatloaf is -9; the final value is -15
# fourth iteration: initial value of vector meatloaf is -15; the final value is -22
# fifth iteration: initial value of vector meatloaf is -22; the final value is -30
meatloaf <- 0; 
for (i in 5:9){
  meatloaf <- meatloaf - i + 1;
  cat(meatloaf) 
}

# 
bubbles <- 12;
for (i in -1:-4){
  bubbles <- i;
}

# Exercise 4

###you can use the if statement with the modulus operator to conditionally perform operations
## here the "%%" sets the index to multiples of the number 
## order matters! the %% 4==0 needs to be before the %%2==0 otherwise the %%2==0 takes precident
years <- c( 2015, 2016, 2018, 2020, 2021)
for(ii in 1:length(years)){
  if(years[ii] %% 4 == 0){
    cat(years[ii], 'Wahoo, congressional AND presidential elections!!', sep = '\t', fill = T)
  }
  else if(years[ii] %% 2 == 0){cat(years[ii],"Hooray, congressional elections!", sep="\t", fill=T)}
  else if(years[ii] %% 1==0){cat(years[ii],"NO ELECTION", sep="\t", fill=T)}
}

# Exercise 5

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);

#Now look at the error message the following lines of code produce. Can you think of a way to modify this loop so that the loop will compound the interest?
compounded <- interestRate*bankAccounts + bankAccounts
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
cat(compounded)

#HINT: variables must be initialized before you can perform operations on them
#HINT 2: look at the rep() function and see if you can use that to initialize a variable that will help you.

# USING rep() function
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
compounded <- rep(NA, 6)
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
cat(compounded)
# here, doing compounded <- interestRate*bankAccounts + bankAccounts is the same as compounded <- rep(NA, 6)

# YOU CAN ALSO DO THIS
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
rep(bankAccounts + bankAccounts*interestRate)
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
cat(compounded)

# YOU CAN ALSO DO THIS
bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
compounded <- c(1:6)
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
cat(compounded)

# Exercise 6

bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i] <- bankAccounts[i] - house[i] - food[i] - fun[i] + income[i]
    bankAccounts[i] <- bankAccounts[i] + interestRate*bankAccounts[i]
  }
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    #step 2 get calculate interest and add to accounts from step 1
    #you can actually use the line you have already written if you
    #modify amounts in bankAccounts directly in step 1
}
print(bankAccounts)

# Exercise 7

bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this
disbursement <- c(5,0,5)

for (years in 2015:2020) {
  for (i in 1:length(bankAccounts)) {
    bankAccounts[i] <- bankAccounts[i] - house[i] - food[i] - fun[i] + income[i]
    if(years %% 2==1){bankAccounts[i] <- bankAccounts[i]+disbursement[i]}
    bankAccounts[i] <- bankAccounts[i] + interestRate*bankAccounts[i]
  }
}
print(bankAccounts)
# here, %% 2==1 denotes an odd number

# Exercise 8
counter <- 0
total <- 0
while(counter <= 17){
  total <- total + counter
  counter <- counter + 1
}
check if total is the sum of 1:17
total == sum(1:17)

# Exercise 9

howbig <- function(number) {
  if(number <= -1){print ("small")}
  else if (number > -1 & number < 1) {print ("medium")}
  else if (number>=1){print("big")}
}
howbig(-2)
howbig(-1)
howbig(-0.5)
howbig(0)
howbig(0.5)
howbig(1)
howbig(2)

# can also write the function without the final if statement
howbig <- function(number) {
  if(number <= -1){print ("small")}
  else if (number > -1 & number < 1) {print ("medium")}
  else {print("big")}
}
howbig(-2)
howbig(-1)
howbig(-0.5)
howbig(0)
howbig(0.5)
howbig(1)
howbig(2)

