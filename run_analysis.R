
setwd("C:\\Andre Anderson\\Pessoais\\COURSERA\\Cleaning Data\\Course Project\\UCI HAR Dataset")

#
library(dplyr)

#Reading the features (Variable names)
features <- read.table("features.txt")

#Reading the training set.
train <- read.table("train\\X_train.txt")
names(train) <- as.character(features[,2])

sbj.train <- read.table("train\\subject_train.txt")

#Reading the test set.
test <- read.table("test\\X_test.txt")
names(test) <- as.character(features[,2])

sbj.test <- read.table("test\\subject_test.txt")

#Merging the two data frames
data <- rbind(train,test)


#Selecting data frame with the variables "mean" and std
##library(stringr)
var.mean <- grep("mean()",names(data), fixed = TRUE)
var.std <- grep("std()",names(data), fixed = TRUE)
var <- c(var.mean, var.std)
data. <- data[,var]


#Adding the activities
act.train <- read.table("train\\y_train.txt")
act.test <- read.table("test\\y_test.txt")
act <- rbind(act.train, act.test)
data.. <- cbind(act,data.)
data.. <- rename(data.., activity = V1)


#Labeling the activities
act.labels <- read.table("activity_labels.txt")
act.labels <- as.character(act.labels[,2])

data..$activity <- factor(data..$activity, labels = act.labels)


#Adding the subject
subject <- rbind(sbj.train,sbj.test)
data <- cbind(data.., subject)
data <- rename(data,subject = V1)

#Melting
library(reshape2)
data.melt <- melt(data, id = c("subject","activity"), measure.vars = names(data)[2:67])
tidy.data <- dcast(data.melt, subject + activity ~ variable, mean)

#WRITING THE DATA
setwd("C:\\Andre Anderson\\Pessoais\\COURSERA\\Cleaning Data\\Course Project\\GITREPO")
write.table(tidy.data,"tidy_data.txt",row.names = FALSE)




