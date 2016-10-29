setwd("D:\\git\\r\\buaa\\RWorkspace")

# 5.4控制流

## 循环

### for

for (i in 1:10) {
    print("hello")
}


### while

i <- 10
while (i > 0) {
    print("Hello")
    i <- i - 1
}


## 分支

### if

score <- 90
if (score > 80) {
    print("Good")
}


### if...else
score <- 90
if (score > 80) {
    print("Good")
} else {
    print("Not good")
}



### ifelse

score <- 90
if (score > 80) {
    print("Good")
}

score <- 90
ifelse (score > 0.5, print("Passed"), print("Failed"))


# 5.6 整合与重构

mtcars  # 汽车数据
str(mtcars)
dim(mtcars)  # 行数（记录）和列数（属性）
rownames(mtcars)

## 整合数据：数据集的转置

cars <- mtcars[1:5, 1:4]


## 整合数据，代码清单：5-10

options(digits = 3)
attach(mtcars)
aggdata <- aggregate(mtcars, by = list(cyl), FUN = mean, na.rm = T)
aggdata <- aggregate(mtcars, by = list(cyl, gear), FUN = mean, na.rm = T)
detach(mtcars)

?subset()  # 查询帮助


# 读取环境变量和文件
ls()
dir()
test.txt <- read.table("test.txt", header = T)


# 画图
plot(mtcars$wt, mtcars$mpg)
abline(lm(mtcars$mpg~mtcars$wt))

dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
opar <- par(no.readonly = TRUE)
par(pin = c(2, 3))
par(lwd = 2, cex = 1.5)
par(cex.axis = .75, font.axis = 3)
plot(dose, drugA, type = "b", pch = 19, lty = 2, col = "red")
plot(dose, drugA, type = "b", pch = 23, lty = 2, col = "blue", bg = "green")


# 代码清单3.3：依剂量对比药物A和药物B的响应情况
#install.packages("Hmisc")
dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
opar <- par(no.readonly = TRUE)
par(lwd = 2, cex = 1.5, font.lab = 2)
plot(dose, drugA, type = "b",
     pch = 15, lty = 1, col = "red", ylim = c(0, 60),
     main = "Drug A vs. Drug B",
     xlab = "Drug Dosage", ylab = "Drug Response")
lines(dose, drugB, type = "b",
      pch = 17, lty = 2, col = "blue")
abline(h = c(30), lwd = 1.5, lty = 2, col = "gray")
library(Hmisc)
minor.tick(nx = 3, ny = 3, tick.ratio = 0.5)
legend("topleft", inset = .05, title = "Drug Type", c("A", "B"),
       lty = c(1, 2), pch = c(15, 17), col = c("red", "blue"))
par(opar)


# 简单的条形图
#install.packages("vcd")
library(vcd)
counts <- table(Arthritis$Improved)
counts
barplot(counts, main = "Simple Bar Plot", xlab = "Improvement", ylab = "Frequency")
barplot(counts, main = "Horizontal Bar Plot", 
        xlab = "Frequency", ylab = "Improvement", horiz = TRUE,
        col = c("red", "yellow", "green"))

# 堆砌的条形图
library(vcd)
counts <- table(Arthritis$Improved, Arthritis$Treatment)
counts
barplot(counts, main = "Stacked Bar Plot", 
        xlab = "Treatment", ylab = "Frequency",
        col = c("red", "yellow", "green"),
        legend = rownames(counts))
#分组条形图
barplot(counts, main = "Stacked Bar Plot", 
        xlab = "Treatment", ylab = "Frequency",
        col = c("red", "yellow", "green"),
        legend = rownames(counts),
        beside = TRUE)


# 6.3 直方图
par(mfrow = c(1, 1))
hist(mtcars$mpg)
hist(mtcars$mpg, breaks = 12, col = "red", 
     xlab = "Miles Per Gallon", main = "Colored histogram with 12 bins")
hist(mtcars$mpg, freq = FALSE, breaks = 12, col = "red", 
     xlab = "Miles Per Gallon", main = "Histogram run plot, density curve")
rug(jitter(mtcars$mpg))
lines(density(mtcars$mpg), col = "blue", lwd = 2)
x <- mtcars$mpg
h <- hist(x, breaks = 12, col = "red", xlab = "Miles Per Gallon",
          main = "Histogram with normal curve and box")
xfit <- seq(min(x), max(x), length = 40)
yfit <- dnorm(xfit, mean = mean(x), sd = sd(x))
yfit <- yfit * diff(h$mids[1:2]) * length(x)
lines(xfit, yfit, col = "blue", lwd = 2)
box()


# 6.4 核密度图


# 6.5 箱线图
boxplot(mtcars$mpg, main = "Box plot", ylab = "Miles per Gallon")


# ggplot2作图：采用图层绘图
# 数据到图形的映射使用aesthetics来完成
library(ggplot2)
str(diamonds)
dim(diamonds)
ggplot(diamonds, aes(x = carat, y = price, color = clarity, group = 1)) +
    geom_point() +
    geom_smooth(se = FALSE) +
    ggtitle("钻石") +
    theme(plot.title = element_text(vjust = 2))









