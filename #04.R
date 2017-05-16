setwd("/Users/minemurarei/Documents/大学/３年/多変量解析/データ")

x <- read.delim(pipe("pbpaste"))
result <- lm(price~.,data=x)
summary(result)
predict(result)
cor(x)

#多重共線性
y <- read.delim(pipe("pbpaste"))
result_y <- lm(sales~.,data=y)
summary(result_y)
cor(y)

result_y2 <- lm(sales~ ad_cost + salesperson,data=y)
summary(result_y2)

result_y3 <- lm(sales~ salesperson,data=y)
summary(result_y3)#単回帰

z <- read.delim(pipe("pbpaste"))
result_z <- lm(売上~.,data=z)
summary(result_z)
cor(z)

result_z2 <- lm(売上~営業所番号 + 宣伝費 + 設備投資費,data=z)
summary(result_z2)

w <- read.delim(pipe("pbpaste"))
result_w <- lm(体重~.,data=w)
summary(result_w)
cor(w)

result_w2 <- lm(体重~胸囲,data=w)
summary(result_w2)

A <- read.delim(pipe("pbpaste"))
result_A <- lm(勝利~投球回 + 防御率,data=A)
summary(result_A)
cor(A)

result_A <- lm(勝利~.,data=A)
summary(result_A)
