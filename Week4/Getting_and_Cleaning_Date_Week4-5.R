library(quantmod)
library(lubridate)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)

str(sampleTimes)
head(sampleTimes)

a <- sum(year(sampleTimes) == 2012)

b <- sum(year(sampleTimes) == 2012 & wday(sampleTimes) == 2)

answer <- c(a, b)

answer