
############################# 2. R数据结构 ##############################
# 对象(元素)的产生和转换
# 查看对象(元素)类型和长度



#########################################################################
# 对象(元素)的产生和转换

#############################################
#          对象,用什么函数产生?             #
#############################################
# 1. 向量（vector）
vector(mode = "numeric", length = 2)
vector(mode = "logical", length = 2)
vector(mode = "character", length = 2)


# 以下三个函数有几乎相同的效果（ 创建一个向量） 并且只有一个参数即长度：
numeric(length = 2)
logical(length = 2)
character(length = 2)


# 2. 因子（factor）
factor(1:3)  # 结果中的levels为组别
factor(1:3, levels=1:5)  # 
factor(1:3, labels=c("A", "B", "C"))  # 因子支持数值型和字符型
factor(1:5, exclude=4)  # 去除4

# 函数levels用来提取一个因子中可能的水平值：
ff <- factor(c(2, 4), levels=2:5)
ff
levels(ff)

# 3. 数组（array）
array(1:15, c(5,3)) 
array(1:3, c(2,4,1))  # 三维数组
array(1:3, c(2,4,2))  # 三维数组


# 4. 矩阵（matrix）
matrix(data=3, nr=2, nc=4)
matrix(1:6, 2, 3, byrow=F)  # byrow指定数据1-6是按行排列还是按列排列

# 另一种创建矩阵的方法是给维数适当的赋值（初始值为NULL）
x <- 1:15  # x为向量
dim(x) <- c(5, 3)  # x变为了矩阵

matrix(1:15,5,3,byrow=F)  # 同上面两行的代码结果是一样的


# 5. 数据框（data.frame） 
x <- 1:4  # 向量
n <- 10
M <- c(10, 35)
y <- 2:4
data.frame(x, n)
data.frame(x, M)
data.frame(x, y)  # x的个数4不能被y的个数3整除，所以这里会报错

# 6. 时间序列（ts） 
ts(2:7, start = 1950)
ts(1:47, frequency = 12, start = c(1959, 3))
ts(1:10, frequency = 4, start = c(1959, 2))


# 7. 列表（list）
x<-1:4
y<-c("ab","cd")
L1 <- list(x, y)
L2 <- list(A=x, B=y)
names(L1)
names(L2)
L2[[2]]

#############################################
#             对象,怎样进行转化?            #
#############################################

as.vector(x)
as.factor(x)
as.array(x,...)
as.matrix(x)
as.data.frame(x)
as.ts(x)
as.list(x)

# 向量转化为矩阵：
V<-1:5
V
as.matrix(V)

# 因子转化为数值：
fac <- factor(c(1, 10,12,15))
fac
as.numeric(fac)

fac2 <- factor(c("Male", "Female"))
fac2
as.numeric(fac2)

# 矩阵转化为数据框：
Mat<-matrix(data=5, nr=2, nc=2)
Mat
as.data.frame(Mat)


# 矩阵转化为列表：
Mat<-matrix(data=5, nr=2, nc=2)
Mat
as.list(Mat)



#############################################
#             元素,怎样进行转化?            #
#############################################
# 同对象,采用as.FUN形式
as.numeric
as.logical
as.complex
as.character



#########################################################################
# 查看对象(元素)类型和长度

#############################################
#                  查看类型                 #
#############################################
# is.FUN形式来判断,返回TRUE或FALSE
is.vector(1)
is.factor(1)
is.array(x,...)
is.matrix(x)
is.data.frame(x)
is.ts(x)
is.list(x)

is.numeric(x)
is.logical(x)
is.complex(x)
is.character(x)


# class查看第1层类别,mode查看第2层类别,typeof查看第3层类别
gl(2,5)            #新建一个因子 
class(gl(2,5))     #查看对象的类别，显示为因子"factor"；
mode(gl(2,5))      #查看类型的类别，显示为实数向量"numeric"；
typeof(gl(2,5))    #查看类型的类别的细类，显示为整数向量 "integer"；

class(c(1,2,3,4,5))
class(1:5)


#############################################
#                  查看长度                 #
#############################################
length(object)
length(c(1:6))
length(gl(2,5))

Mat<-matrix(1:6, 2, 3, byrow=TRUE)
Mat
nrow(Mat)
ncol(Mat)
length(Mat)

ARR<-array(1:3, c(2,4,2))
dim(ARR)
length(ARR)

str(Mat)
attributes(Mat)




