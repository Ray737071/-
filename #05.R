#氏名：峯邑怜
#学籍番号：8615232
#演習：Rプログラミング演習１

setwd("/Users/minemurarei/Documents/大学/３年/多変量解析/データ")

data <- read.delim(pipe("pbpaste"))

reg <- lm(sales ~ ad_cost + salesperson + facility, data)
summary(reg)

result <- step(reg)
result

data2 <- read.delim(pipe("pbpaste"))

reg2 <- lm(勝利 ~ . ,data2)
summary(reg2)

result2 <- step(reg2)
summary(result2)

#数量化一類
data3 <- read.delim(pipe("pbpaste"))

reg3 <- lm(総合成績 ~ . ,data3)
summary(reg3)

data4 <- read.delim(pipe("pbpaste"))

reg4 <- lm(総合成績 ~ . ,data4)
summary(reg4)

data5 <- read.delim(pipe("pbpaste"))

reg5 <- lm(総合成績 ~ . ,data5)
summary(reg5)

