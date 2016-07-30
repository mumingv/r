
################ 3. R函数包 #################
# 基础包
# 外部包
#############################################

# 基础包
search()
searchpaths()

# 外部包
install.packages("mgcv")
install.packages("D:/packages/Fraud_0.1.tar.gz", repos = NULL, type = "source")

# 加载包
require(mgcv)
library(mgcv)

# 卸载包
detach("package:mgcv", unload=TRUE)
remove.packages("mgcv")


# 查看R包中有哪些函数
help(package ="base")
library(help ="base")
vignette()


# 查看怎样使用这些函数
?mean
help(mean)

?<
?"<"
help("<")

example(sum)
example(persp)

help.search("multivariate normal")
??"multivariate normal"

apropos("help")

# 查看函数的源代码
fivenum

mean
methods(mean)
mean.default


plot
methods(plot)
plot.default  # plot.xy, invisible 
plot.stl*
getAnywhere(plot.stl)

FUN.default
lm.default























