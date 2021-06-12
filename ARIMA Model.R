acf(goog.train)
pacf(goog.train)
acf(diff(goog.train))
pacf(diff(goog.train))

m1 = arima(goog.train, order = c(1,1,1))

m2 = arima(goog.train, order = c(1,1,0))

m3 = arima(goog.train, order = c(0,1,1))

accuracy(m1)

accuracy(m2)

accuracy(m3)

m4 = arima(goog.train, order = c(0,1,2))
accuracy(m4)

m5 = arima(goog.train, order = c(1,1,2))
accuracy(m5)


#
autoplot(m4, h = 100)


autoplot(m5, h = 100)

plot(forecast(m5, h = 100))


m = auto.arima(goog.train)
summary(m)
plot(forecast(m, h = 100))

# Box Test
Box.test(m$residuals, lag = 1, type = "Ljung-Box", fitdf = 1)