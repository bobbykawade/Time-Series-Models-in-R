?AirPassengers

View(AirPassengers)

plot(AirPassengers)

acf(AirPassengers)
acf(diff(AirPassengers))

pacf(AirPassengers)
pacf(diff(AirPassengers))

acf(diff(diff(AirPassengers)))
pacf(diff(diff(AirPassengers)))


m1 = ets(AirPassengers, model = "ZZZ")
m2 = auto.arima(AirPassengers)

summary(m1)

summary(m2)

### ETS model is better

autoplot(forecast(m1, h =10))

autoplot(forecast(m1, h =50))

tsdiag(m2)
