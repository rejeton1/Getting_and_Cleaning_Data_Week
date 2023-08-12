# if(!file.exists('Getting_and_Cleaning_Data_Week3')){
#   dir.create('Getting_and_Cleaning_Data_Week3')
# }

url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
download.file(url, destfile = 'USdata.csv', method = 'curl')

USdata <- read.csv('USdata.csv')

# str(USdata)

agricultureLogical <- USdata$ACR == 3 & USdata$AGS == 6

agricultureLogical

which(agricultureLogical)