# 安装包
install.packages("ggplot2")
library(ggplot2)
require("ggplot2")

# 安装包升级
#update.packages()
rivers  # 能提供数组数据，数组下标从1开始


# 设定工作区
getwd()
setwd("D:\\git\\r\\buaa\\RWorkspace")

# 帮助
?lm()
help("plot")
example("plot")
??plot
RSiteSearch("mean")
apropos("glm", mode = "function")
vignette()  # 看该函数在哪个包里
vignette("ggplot2")
help(package="ggplot2")

# Basic data structer
number<-50
class(number)  # query type of number: "logical"

logic<-TRUE
class(logic)  # class(logic)

Miao<-"cat"
class(Miao)  # "character"

Kie<-'c'
class(Kie)  # "character", case sensitive

Kie<-3
class(Kie)

compl<-5+7i
class(compl)  # "complex"

ignorant<-NA  # 数据缺失：Not Available
class(ignorant)  # "logical"


# 数据类型的判断
is.double(5.4)
is.character(Kie)
is.complex(Kie)

# NA, logic, character, complex, numeric, double, integer
# integer和double统称为numeric


# 数据类型的转换
i<-as.integer(number)
class(i)

c<-"64"
nc<-as.numeric(c)
class(nc)
class(c)


# 向量：储存数据类型相同的值
v1<-c(1,2,3,45,73,31)
v2<-c("China","America")
v3<-c("Brazel","German")
v4<-c(v2,v3)  # 向量合并
v5<-1:10
v6<-100:30
v7<-seq(2,100,by=2)
v8<-rep(3,4)  # 3重复4遍
v9<-rep(c(1,3),4)  # 1,3一起重复4遍
v10<-rep(c(1,3),each=4)  # 1,3各自重复4遍

# 访问向量元素
v7
v7[]
v7[1]
v7[-2]  # 将下标为2的元素去除
v7[-2:-5]
# 跳着挖？
v11<-v7+3  # 向量每个元素都加上3
v11-3

length(v11)
v12<-LETTERS[1:5]
names(v12)<-c("one","two","three","four","five")
v12["one"]
v12
v12[c(T,F)]
v12[c(F,T)]

# 可以使用<Alt + '-'>输入: <-

# 统计函数
mean(v7)  # 均值
median(v7)  # 中值：中间的那个数，或者中间的两个数除以2
mean(v1)
median(v1)
var(v7)  # 方差
sd(v7)  # 标准差
quantile(v7, c(0.3, 0.84))
range(v7)  # 值域
min(v7)
which.min(v7)  # 最小值的下标
which.max(v7)  # 最大值的下标
which.max(v1)

# 练习
# 21-22
# 85


# 矩阵
A <- matrix(1:12, nrow = 4)
B <- matrix(1:12, nrow = 4, byrow = T)
C <- t(B)
D <- A + B
A * B  # 非矩阵乘法
G <- A%*%C  # 矩阵乘法
diag(G)
G[2, 3]
G[1, ]
G[, 3]
G[,]
G[, 3:4]
G[, c(2, 4)]


# 数组
the.array <- array(1:24, c(3, 4, 5))


# 因子
tech <- factor(c("basic", "proficient", "advanced", "minimal"))
tech <- factor(tech, levels = c("basic", "minimal", "proficient", "advanced"))
increase.tech <- ordered(tech, levels = c("basic", "minimal", "proficient", "advanced"))

# 数据框实际是数据表
# 各列数据类型不同，每一列是一个向量，每一行是一个记录
x <- 10:1
y <- -4:5
q <- c("Hockey", "Football", "Baseball",
       "curling", "Rugby", "Lacrosse",
       "Basketball", "Tennis", "Cricket", "Soccer")
theDF <- data.frame(First=x, Second=y, Sport=q)
theDF$Sport
theDF["Sport"]

mtcars
head(mtcars)
tail(mtcars)
mtcars[, 1]

theDF[, c("First", "Sport")]





