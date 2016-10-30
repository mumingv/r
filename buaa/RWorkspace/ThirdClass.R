setwd("D:\\git\\r\\buaa\\RWorkspace")
#包的安装
install.packages("HH")
library(HH)
install.packages("MASS")
library(MASS)
#随机数
X<-sample(x=1:200, size=100, replace = T)
mean(X)
median(X)
scores<-c(100,89,92)
mean(scores)
weights<-c(0.25, 0.5, 0.25)
weighted.mean(scores,weights)
var(X)
sum((X-mean(X))^2)/(length(X)-1)
sd(X)
X[25]<-NA
max(X, na.rm = T)
#相关系数与协方差
install.packages("ggplot2")
library(ggplot2)
str(economics)
?economics
with(economics, cor(pce,psavert))
economics[,2]
economics$pce
econCor<-cor(economics[,c(2,4:6)])
install.packages("GGally")
library(GGally)
?melt
install.packages("reshape2")
library(reshape2)
install.packages("scales")
library(scales)
econCor
econMelt<-melt(econCor,varnames = c("x","y"),value.name = "Correlation")
econMelt<-econMelt[order(econMelt$Correlation),]
library(ggplot2)
ggplot(econMelt,aes(x=x,y=y))+
    geom_tile(aes(fill=Correlation))+
    scale_fill_gradient2(low = muted("red"),
                         mid="white",
                         high = "steelblue",
                         guide=guide_colorbar(ticks = F,height=10),
                         limits=c(-1,1))+
    theme_minimal()+
    labs(x=NULL,y=NULL)

#峰度与偏度
install.packages("e1071")
library(e1071)
example(trees)
skewness(trees$Height)
kurtosis(trees$Height)

#抽样模拟
#产生随机数
runif(10,0,1)
rnorm(5,0,1)
x<-rexp(100,1/10)
hist(x, prob=T, col=gray(0.9), main = "Exp Distribution (mean=10)" )
dexp(x,1/10)
curve(dexp(x,1/10), add=T)
pchisq(34.76,50)
qchisq(0.05,50)

#估计正态分布的置信区间
#
Z.conf<-function(x, sigma, conf.level=0.95)
{
    n<-length(x)
    xbar<-mean(x)
    a<-1-conf.level
    Za<-qnorm(1-a/2)
    Se<-sigma/sqrt(n)
    xbar+c(-Za*Se,Za*Se)
}
x<-c(7.2,3.5,4.3,6.2,10.1,5.4,6.8,4.5,5.1,6.6,3.8,8.2)
mean(x)
length(x)
Z.conf(x,2)
qnorm(1-0.05/2)
#t
t.test(x)
chisq.test(x)
#
bottles<-read.csv("bottles.csv")
head(bottles)
mean(bottles$Volume)
t.test(bottles$Volume,mu=500, alternative = "less", conf.level = 0.99)
str(iris)
t.test(Sepal.Width~Species, iris, 
       Species %in% c("versicolor","virginica"),
       var.equal=T)
