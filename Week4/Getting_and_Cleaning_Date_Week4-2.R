url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
download.file(url, destfile = 'GDPdata.csv', method = 'curl')

GDPdata <- read.csv('GDPdata.csv', skip = 4)

mod <- GDPdata[1:190 ,5]

mod <- gsub(",", "", mod)

mod <- as.numeric(mod)

mod

mean(mod)