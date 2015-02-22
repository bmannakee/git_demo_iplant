# ggplot learning script
# Brian Mannakee
# February 22, 2015



library(ggplot2)
library(plyr)
library(ggthemes)
library(reshape2)
library(MASS)

myplot <- ggplot(data=iris, aes(x=Sepal.Length,y=Sepal.Width,colour=Species)) 
myplot <- myplot + geom_point(aes(shape=Species),size=3)
#print(myplot)

d2 <- diamonds[sample(1:dim(diamonds)[1],1000),]
plt1 <- ggplot(d2,aes(x=carat,y=price,colour=color))
plt1 <- plt1 + geom_point(size=3)
print(plt1)

plt2 <- ggplot(birthwt, aes(factor(race),bwt)) + geom_boxplot()
print(plt2)