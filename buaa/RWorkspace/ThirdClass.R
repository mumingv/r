install.packages("HH")
library(HH)
install.packages("MASS")
library(MASS)
X<-sample(x=1:200, size=100, replace=T)
mean(X)
median(X)
scores<-c(100,89,92)
mean(scores)#平均值
weights<-c(0.25, 0.5, 0.25)
weighted.mean(scores, weights)
var(X)#方差
sum((X-mean(X))^2)/(length(X)-1)#方差
sd(X)#标准差
X[25]<-NA
max(X, na.rm = T)

install.packages("ggplot2")
library(ggplot2)
str(economics)
?economics
with(economics, cor(pce, psavert))
economics[,2]
economics$pce
econCor <- cor(economics[,c(2,4:6)])
install.packages("GGally")
library(GGally)
?melt
install.packages("reshape2")
library(reshape2)
install.packages("scales")
library(scales)
econCor
econMelt <- melt(econCor, varnames = c("x", "y"), value.name = "Correlation")
econMelt <- econMelt[order(econMelt$Correlation),]
library(ggplot2)
ggplot(econMelt, aes(x=x, y=y))+
    geom_tile(aes(fill=Correlation))+
    scale_fill_gradient2(low = muted("red"),
                          mid = "white", 
                          high = "steelblue", 
                          guide = guide_colorbar(ticks = F, height = 10),
                          limits = c(-1,1))+
    theme_minimal()+
    labs(x= NULL, y = NULL)


#抽样模拟
#产生随机数
runif(10,0,1)
rnorm(10,0,1)
x <- rexp(1000,1/10)
hist(x, prob=T, col = gray(0.9), main = "Exp Distrubition (mean=10)")
dexp(x, 1/10)
curve(dexp(x, 1/10), add = T)











# 估计正太分布的置信区间
Z.conf <- function(x, sigma, conf.level = 0.95)
{
    n <- length(x)
    xbar <- mean(x)
    a <- 1-conf.level
    Za <- qnorm(1-a/2)
    Se <- sigma / sqrt(n)
    xbar + c(-Za*Se, Za*Se)
}
x <- c(7.2, 3.5, 4.3, 6.2, 10.1, 5.4, 6.8, 4.5, 5.1, 6.6, 3.8, 8.2)
Z.conf(x, 2)
qnorm(1 - 0.05 / 2)










