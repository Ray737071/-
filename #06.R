
setwd("/Users/minemurarei/Documents/大学/３年/多変量解析/データ")

x <- read.delim(pipe("pbpaste"))

data <- read.csv(".csv",fileEncoding="cp932")
head(data)
dim(data)

reg <- lm( ~ , data)
summary(full)


#
#
#
#
