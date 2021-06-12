install.packages("tidyverse")
library(tidyverse)
install.packages("fansi")
install.packages("fpp2")
library(fpp2)

?goog
length(goog)

goog.train <- window(goog, end = 900)
goog.test <- window(goog, start = 901)

# Holt Winter Method

m=ets(goog.train, model = "ZZZ")
summary(m)

f = forecast(m, h =100)
f
summary(f)
autoplot(forecast(m, h = 100))
accuracy(m)
summary(m)


accuracy(f, goog.test)


m$residuals
