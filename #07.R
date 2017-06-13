
setwd("/Users/minemurarei/Documents/大学/３年/多変量解析/データ")

x <- read.delim(pipe("pbpaste"))

#PCAコマンド
result <- princomp(x)

summary(result,loadings = TRUE)

predict(result)#result$scoreと同じ

scale(x)

result = princomp(x, cor = TRUE ) 


#
#
#
#
