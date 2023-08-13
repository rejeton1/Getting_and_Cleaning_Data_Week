library(stringr)

url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
download.file(url, destfile = 'GDPdata.csv', method = 'curl')

GDPdata <- read.csv('GDPdata.csv', skip = 4)

countrynames <- GDPdata[,4]

good <- !(countrynames == "")

countrynames <- countrynames[good]

countrynames <- str_trim(countrynames)

countrynames

length(grep("^United", countrynames))
