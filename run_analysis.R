x_test <- read.csv("UCI HAR Dataset/test/X_test.txt")
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt")
x_train <- read.csv("UCI HAR Dataset/train/X_train.txt")
y_train <- read.csv("UCI HAR Dataset/train/X_train.txt")

test <- cbind(x_test, y_test)
train <- cbind(x_train, y_train)
names <- c("value", "activity")
names(test) <- names
names(train) <- names

merged_data <- rbind(test, train)
str(merged_data)

