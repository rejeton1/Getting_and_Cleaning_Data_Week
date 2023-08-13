library(jpeg)

url <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg'
download.file(url, destfile = 'instructor.jpg', method = 'curl')

image <- readJPEG('instructor.jpg', native = TRUE)

quantile(image, probs = c(0.3, 0.8))