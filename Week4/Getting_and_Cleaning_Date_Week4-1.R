url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
download.file(url, destfile = 'USdata.csv', method = 'curl')

USdata <- read.csv('USdata.csv')

result_list <- strsplit(names(USdata), split="wgtp")

result_list[123]

