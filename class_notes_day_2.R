# PLOTTING 
# plot(x,y) gives a scatter plot, but specifying type=l makes it a line.
# play around with the histograms on the same axes

s1 <- rnorm(1000, mean=0, sd=1) #creates vector of 1000 random numbers with standard deviation of 1
s3 <- rnorm(1000, mean=0, sd=3) #creates vector of 1000 random numbers with sd of 3
bins <- seq(-15,15, by=1) #this is a vector that refers to the number of elements along the x-axis
hist(s1,breaks=bins)$breaks # create a histogram of s1 and return the number points along the x-axis or number of bars in the graph
hist(s3, breaks=bins)$breaks
counts_s1 <- hist(s1, breaks=bins)$counts #counts refer to the number of elements in each bar, or the height of the bar
counts_s3 <- hist(s3, breaks=bins)$counts
pdf(file="normal_barplot_s1_s3.pdf", width=3, height=3) #create a PDF file that will contain the plots, height and width are in inches
par(mfrow=c(1,1), mar=c(4,4,3,2)) #set the parameters of the plot; mfrow describes the number of plots on one page, mar sets the margins
barplot(rbind(counts_s1, counts_s3), col=c(2,4), beside=T, names.arg=seq(-15,14.5, by=1), xlab="Value", ylab="count") #create a barplot with the two histograms bound together
legend(-11, 275, c(expression(paste(sigma,"=3")), expression(paste(sigma,"=6"))), col=c(2,4), lwd=2, cex=0.7) #create a legend; first two numbers are coordinates where the left top corner of the legend will appear, and cex describes the size (1 is default)
dev.off() #MUST FINISH WITH THIS STEP!!! - "turns off" the plotting and finalizes the PDF - if you don't do this step, any subsequent plots will be created in the same PDF file (they may appear on new pages but they will be in the same file)



mean(s1)
mean(s3)
mean(s1<3)
mean(s3<3)
s1<3
head(s3<3)

# for scatter plots, use pch=# for different characters (default is ugly circles); pch=19 is filled in dots
# for 2 scatter plots on the same axes, use plot() for the first vector, then points() for the second

# apply(y,1,mean) means find the mean of each row in matrix y; if use 2 instead of 1 finding the mean of each column
