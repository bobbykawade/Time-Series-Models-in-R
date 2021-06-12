?Nile
plot(Nile)
acf(Nile)
pacf(Nile)

m1 = auto.arima(Nile)
summary(Nile)

summary(m1)


acf(diff(Nile))
pacf(diff(Nile))

m2 = ets(Nile, model = "ZZZ")
summary(m2)

plot(m1)

plot(forecast(m1, h =20))

tsdiag(m1)   ### for ARIMA Models only
