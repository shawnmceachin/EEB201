# following along in class, trying exercises

cat("hello world")
getwd()

# MAKE PLENTY OF COMMENTS!!!!

# to get help use help("plot") or ?plot()
help("plot")
?plot
# can also Google for help

# if command line keeps giving + instead of > try using some kind of close parentheses or quotes ]})"

tips <- c("learn R", "love R")
tips

# use cat() to print objects

# ls() gives the names of functions/vectors in the work space
# rm(list=ls()) removes everything in the list

# to pull in something saved in a directory that has useful script, and if it's in the same working directory, use source("file name of source you want")
source("C:\Users\Shawn\Documents\GitHub\EEB201\source.example.R")
source("source.example.R")
all.I.know.about.life.I.learned.in.grad.school -> dumbFunction
dumbFunction
dumbFunction
all.I.know.about.life.I.learned.in.grad.school()

library("ape")
# read in tree
tt <- read.tree("tree.tre")
# str provides the structure of the function
str(tt)
head(tt$tip.label)

#read in data
dd <- read.table("data.txt", header = TRUE, as.is=T, sep="\t")
attributes(dd)
head(dd)
str(dd)
# dim() gives the dimensions of a function
dim(dd)
dim(dd)[1]

dflength <- dim(dd)[1]

# generate random unified numbers
runif(1)
?runif

#generate a new column in the function dd called size with random numbers for each of the 92 rows
size <- runif(dflength)

head(cbind(dd,size))
cbind(dd, size)
newdd <- cbind(dd,size)
newdd
newdd -> dd
head(dd)
head(dd$species)
head(dd$size)

# to check which values in the column mode are MPF (gives T or F)
dd$mode=="MPF"
# to give the actual values of the T values above
which(dd$mode == "MPF")

dd[which(dd$mode=="MPF"),]
just_mpf <- dd[which(dd$mode=="MPF"),]
head(just_mpf)


length(tt$tip.label)


# \t new tab \n new line
for(ii in 1:5){cat("\nthe number is ", ii)}

notfish <- c("bat", "dolphin", "toad", "soldier")
for(animal in notfish){cat(animal, "fish\n", sep="")}
for(animal in notfish){cat(animal, "fish\n")}}
for(animal in notfish){cat(animal, "fish\n", sep="-")}
for(x in notfish){cat(x, "fish\n", sep="")}
for(x in notfish){cat(x, "fish\t", sep="")}
for(x in notfish){cat(x, "fish\n", 4, sep="")}
for(x in notfish){cat(x, "fish", " are tasty\n", sep="")}
for(x in notfish){cat(x, "-fish\n", sep="")}


while(thesis_idea_sucks){get_New_Thesis_Idea();}
xx <- 1
while(xx<5){xx <- xx+1;cat("value of xx", xx, "\n")}
print(xx)
while(xx<5){xx <- xx+1;if(xx==3){break;}}
print(xx)
xx<-1
while(xx<5){xx <- xx+1;cat("value of xx", xx, "\n"); if(xx==3){break;}}
print(xx)
xx<-1
while(xx<10){xx <- xx+1;cat("value of xx", xx, "\n"); if(xx==7){cat(" lucky number ", xx, "\n")} else {cat(" not excited about the number ", xx, "\n")}}
print(xx)
