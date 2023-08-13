url1 <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
url2 <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'
download.file(url1, destfile = 'GDPdata1.csv', method='curl')
download.file(url2, destfile = 'EDUdata1.csv', method='curl')

GDPdata1 <- read.csv('GDPdata1.csv', skip=4)
EDUdata1 <- read.csv("EDUdata1.csv")

GDPdata1 <- GDPdata1[1:190, ]
names(GDPdata1)[1] <- 'CountryCode'

tail(GDPdata1)

merged_data <- merge(GDPdata1, EDUdata1, by = 'CountryCode')

sum(grepl("^Fiscal year end: June", merged_data[,19]))

