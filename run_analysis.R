library(dplyr)
library(stringr)

# data loading
x_test <- read.csv("UCI HAR Dataset/test/X_test.txt")     
y_test <- read.csv("UCI HAR Dataset/test/y_test.txt")
x_train <- read.csv("UCI HAR Dataset/train/X_train.txt")
y_train <- read.csv("UCI HAR Dataset/train/X_train.txt")
subject_test <- read.csv("UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.csv("UCI HAR Dataset/train/subject_train.txt")

data <- data.frame(matrix(ncol = 562))
label <- suppressWarnings(
  c(as.numeric(y_test[[1]]), as.numeric(y_train[[1]])))
data[1:10297,1] <- label

# for(i in 1:2946){
#     x_test[i,1] <- str_trim(x_test[i,1])
#     splitted <- strsplit(x_test[i,1], " ")
#     good <- splitted[[1]] != ""
#     value <- splitted[[1]][good]
#     data[i, 2:562] <- value
# }
# 
# for(i in 1:7351){
#   x_train[i,1] <- str_trim(x_train[i,1])
#   splitted <- strsplit(x_train[i,1], " ")
#   good <- splitted[[1]] != ""
#   value <- splitted[[1]][good]
#   data[i, 2:562] <- value
# }

data[1, 2:10]









#data binding
# test <- cbind(x_test, y_test)
# train <- cbind(x_train, y_train)
# names <- c("value", "activity")
# names(test) <- names
# names(train) <- names

#data merging
# merged_data <- rbind(test, train)

# #extracting only mean and std
# mean_std <- data.frame(activity=merged_data[,2], mean=c(0),
#                        std=c(0))

# for(i in 1:10297){
#   merged_data[i,3] <- str_trim(merged_data[i,1])
#   split_value <- strsplit(merged_data[i,1], " ")
#   good <- split_value[[1]] != ""
#   split_good <- split_value[[1]][good]
#   split_good <- as.numeric(split_good)
#   
#   mean <- mean(split_good)
#   std <- sd(split_good)
#   mean_std[i,2] <- mean
#   mean_std[i,3] <- std
# }


#descriptive activity name
# for(i in 1:10297){
#   activity_names <- c("WALKING", "WALKING_UPSTAIRS",
#                       "WALKING_DOWNSTAIRS", "SITTING",
#                       "STANDING", "LAYING")
#   mean_std[i,1] <- activity_names[suppressWarnings(as.numeric(mean_std[i,1]))]
# }

# 
# head(mean_std)

