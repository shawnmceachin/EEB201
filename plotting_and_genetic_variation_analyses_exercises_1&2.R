setwd("C:/Users/Shawn/Documents/GitHub/EEB201")

# Exercise 1A
# Setup - load in the snps data frame as a table
# convert it into a matrix and call it snps
snpsDataFrame=read.table("hapmap_CEU_r23a_chr2_ld-1.txt",header=TRUE)
snpsMatrix=as.matrix(snpsDataFrame)

# perform a chi-square test
compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}

# apply the chi-square test to all snps 
chisqs=apply(snpsMatrix,1,compute_chisquare)

# check to see what the chi-square test spit out
head(chisqs)

# compute the p-values for each chi-square values
pvals=pchisq(chisqs,1,lower.tail=FALSE)

# check the first few p-values
head(pvals)

#####

# Exercise 1B

# test which p-values are less than 0.05?
sigThresh <- 0.05 # the significant threshold over which to check pvals
sum(pvals<sigThresh)
mean(pvals<sigThresh) # same as sum(pvals<sigThresh)/length(pvals)
## i.e. the number of pvals less than 0.05 divided by the total 
## number of pvals
mean(pvals<sigThresh)*100 # this gives the actual percentage of pvals
## less than the significant threshold

# < 0.01?
sigThresh <- 0.01
mean(pvals<sigThresh)

# < 0.001?
sigThresh <- 0.001
mean(pvals<sigThresh)

#####

# Exercise 1C

# how many SNPs were tested for departure from the model? 
# i.e. how many pvals do we have
num_pval <- length(pvals)
print(num_pval)
# this is the number of rows of the snpsMatrix

#####

# Exercise 1D

# the expected number of pvals 
exp_pvals <- (1:num_pval)/num_pval
head(exp_pvals)
length(exp_pvals)
# or
check <- 1:num_pval
length(check)

#####

# Exercise 1E

# sort the pvals lowest to highest
pvals <- sort(pvals)
head(pvals)

#####

# Exercise 1F
log_sort_pvals <- -(log10(pvals))
log_exp_pvals <- -(log10(exp_pvals))
head(log_sort_pvals)
head(log_exp_pvals)

#####

# Exercise 1G

plot(log_exp_pvals, log_sort_pvals, xlab="Hardy-Weinberg expected pvals", ylab="Observed pvals", pch=19)

#####

# Exercise 1H
# add a diagonal line to fit the scatter plot
lines(log_exp_pvals, log_exp_pvals, type="l", col="red", lwd=2)
# here I plot the exected values vs the expected values - this line shows what I would get
## the observed data is what Hardy-Weinberg model would predict i.e. if the data fits the 
## model, then the dots in the scatter plot should fall along the diagonal line

#####

# Exercise 1I
# run the above plot() and lines(),  see plot
# add a legend
legend(0.2,4.5, "null hypothesis", lwd=2,col="red")


###################################


# Exercise 2
getwd()
setwd("C:/Users/Shawn/Documents/GitHub/EEB201")

# Exercise 2A
zz <- read.table("pheno.sim.2014-1.txt", header=T)
head(zz)

#####

# Exercise 2B

# value at which 25% of the data is less than that value
phenoLessThan25 <- quantile(zz[,2], 0.25)
print(phenoLessThan25)

# which row numbers are the above values assigned to
controls <- which(zz[,2]<phenoLessThan25)
print(controls)

#####

# Exercise 2C

# those who have high blood glucose levels
phenoLessThan75 <- quantile(zz[,2], 0.75)
# this is also the value for which 25% of the individuals are greater
## than this value

print(phenoLessThan75)

# list the rows which hold the above values
cases <- which(zz[,2]>phenoLessThan75)
print(cases)
length(cases)

#####

# Exercise 2D

# create a file in which to save the pdf
pdf(file="distribution_of_phenotypes.pdf", width=6, height=4.5);
# specifiy the parameters of where the plot will be laid-out on the page
par(mfrow=c(1,1), mar=c(5,5,5,5))

# make a density plot
plot(density(zz[,2]), col=2, lwd=3, xlab="Blood Glucose Levels", main="Distribution of Phenotypes")
# make 2 vertical lines that represent the 25% and 75% tails of the distribution
abline(v=quantile(zz[,2], 0.25), lty=2, lwd=3, col="blue")
abline(v=quantile(phenoLessThan75, 0.75), lty=2, lwd=3, col="green")
# make a legend
legend(8, 0.3, c("25% quantile", "75% quantile"), lwd=3, col=c("blue", "green"), cex=0.95)

# TURN OFF the pdf file
dev.off()

#####

# Exercise 2E

# extract case genotypes (<75%) for SNP rs7584086_T
case_genotypes <- snpsMatrix["rs7584086_T", cases]
print(case_genotypes)
length(case_genotypes)

#####

# Exercise 2F

# control genotypes in row "rs7584086_T"
control_genotypes <- snpsMatrix["rs7584086_T", controls]
print(control_genotypes)
length(control_genotypes)

#####

# Exercise 2G

table(case_genotypes)
# 12 individuals have genotype 1
# 3 individuals have genotype 2
length(case_genotypes)
# 15

#####

# Exercise 2H

table(control_genotypes) # table shows 14 individuals with type 0
length(control_genotypes) # length is 15
print(control_genotypes)  # individual 16 data is NA - not incuded in the table for controls


