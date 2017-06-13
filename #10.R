
setwd("/Users/minemurarei/Documents/大学/３年/多変量解析/データ")
x <- read.delim(pipe("pbpaste"))

#PCAコマンド
result <- princomp(x)
summary(result,loadings = TRUE)
x1 <- result$loadings[,1]
x2 <- result$loadings[,2]
quartz()
par(mfrow=c(2,2)) 
#変量プロット
plot(x1,x2,xlim=c(-1,1),ylim=c(-1,1))
text(result$loadings[,1],result$loadings[,2],colnames(x))
#主成分得点プロット
plot(result$score[,1],result$score[,2])
text(result$score[,1],result$score[,2],rownames(x))

#演習問題

y <- read.delim(pipe("pbpaste"))

#PCAコマンド
result2 <- princomp(y)
summary(result2,loadings = TRUE)
y1 <- result2$loadings[,1]
y2 <- result2$loadings[,2]
quartz()
#変量プロット
plot(y1,y2,xlim=c(-1,1),ylim=c(-1,1))
text(result2$loadings[,1],result2$loadings[,2],colnames(y))
#主成分得点プロット
plot(result2$score[,1],result2$score[,2])
text(result2$score[,1],result2$score[,2],rownames(y))

#結果のエクスポート
