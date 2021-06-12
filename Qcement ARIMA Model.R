?qcement

qcement.train <- window(qcement, end = c(2012, 4))
qcement.test <- window(qcement, start = c(2013, 1))

plot(qcement.train)

# Checking the Length of the Train and Test
length(qcement.train)
length(qcement.test)

qcement.train <- window(qcement, end = c(2005, 4))
qcement.test <- window(qcement, start = c(2006, 1))


length(qcement.train)
length(qcement.test)


# Model Building
m1 = ets(qcement.train, model = "ZZZ")

m2 = auto.arima(qcement.train)

accuracy(m1)

accuracy(m2)


# Accuracy for Test Data
accuracy(forecast(m1, h = 33), qcement.test)

accuracy(forecast(m2, h = 33), qcement.test)


# Plotting 

autoplot(forecast(m1, h = 33))

autoplot(forecast(m2, h = 33))

# Summary
summary(m2)

tsdiag(m2)
