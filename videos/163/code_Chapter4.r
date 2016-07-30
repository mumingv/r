
################ 4. R编程逻辑 #################
# 循环语句：for,while
# 条件语句：if ... else
# 向量化编程
# 编写自己的函数：function
#############################################


####################################################################
# 循环语句：for,while
a<-10
for(i in 1:59){
  a[i]=i*2+3
}
a


b<-5
i<-1
while(b[i]<121){
  i=i+1
  b[i]=b[i-1]+2
}
b



####################################################################
# 条件语句：if ... else
x<-18
if(x>=10){
  x<-x+10
}else{
  x<-x+5
}
x




####################################################################
# 向量化编程
# 案例1：在Data1.csv数据中，某些变量存在一些缺失的数据（NA），计算该
#+       数据的缺失数据的比例。

Data1<- read.csv("d:/data/Data1.csv")
str(Data1)

# 一般的编程思路代码
NANum<- length(Data1[is.na(Data1)])
totalNum<- nrow(Data1)*ncol(Data1)
perNA<- NANum/totalNum

# 向量化编程思路代码
perNA<- mean(is.na(Data1))


# 案例2：在数据Data2中，如果x<=3或x>=8,则将Data中的这些x值替换成NA

Data2<- c(rep(4,3),1:11,rep(5,3),5:10)
Data2

# 一般的编程思路代码
for(i in 1:length(Data2)){
  if(Data2[i]<=3 | Data2[i]>=8){
    Data2[i]<-NA
  }
}

# 向量化编程思路代码
NAIDX<- which(Data2<=3 | Data2>=8)
Data2[NAIDX]<- NA
Data2





####################################################################
# 编写自己的函数：function

expr<-function(x){
  if(x>=10){
    x<-x+10
  }else{
    x<-x+5
  }
  return(x)
}
 
expr(x=20)






























