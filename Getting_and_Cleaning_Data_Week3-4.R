library(dplyr)

url1 <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'

url2 <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'

download.file(url1, destfile = 'gdp.csv')
download.file(url2, destfile = 'edu.csv')

gdpdata <- read.csv('gdp.csv', skip=4)
edudata <- read.csv('edu.csv')

gdpdata <- gdpdata[1:231, ]          ##select only needed data

gdpdata <- filter(gdpdata, gdpdata[,2] != "")
gdpdata[,2] <- as.numeric(gdpdata[,2])

names(gdpdata)[1] <- 'CountryCode'     ##naming
names(gdpdata)[2] <- 'Ranking'


all_data <- merge(gdpdata, edudata, by='CountryCode')   ##merging

groupped_data <- group_by(all_data, Income.Group)     ##grouping

summarize(groupped_data, ave_GDP_Rank = mean(Ranking)) ##compute average

