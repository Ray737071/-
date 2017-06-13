
setwd("/Users/minemurarei/Documents/大学/３年/多変量解析/データ")
x <- read.delim(pipe("pbpaste"))

#因子分析の実行
result <- factanal(x, factors=2,rotation="varimax",scores="regression")
result
#因子得点の表示
result$scores

colMeans(result$scores)
var(result$scores)