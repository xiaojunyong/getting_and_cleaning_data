# the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# 1.Merges the training and the test sets to create one data set.
setwd("D:/UCI HAR Dataset")
test_Xdata <- read.table("test/X_test.txt")
train_Xdata <- read.table("train/X_train.txt")
Xdata <- rbind(test_Xdata, train_Xdata) 

test_Ydata <- read.table("test/Y_test.txt")
train_Ydata <- read.table("train/Y_train.txt")
Ydata <- rbind(test_Ydata, train_Ydata)

test_Sdata <- read.table("test/subject_test.txt")
train_Sdata <- read.table("train/subject_train.txt")
Sdata <- rbind(test_Sdata, train_Sdata)

Mergesdata <- cbind(Xdata,Ydata,Sdata)

# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
fName <- read.table("features.txt")
MS_index <- grep("-mean\\(\\)|-std\\(\\)", fName[, 2])
MSdata <- Xdata[,MS_index]  #MSdata is a matrix of the mean and standard deviation for each measurement

# 3.Uses descriptive activity names to name the activities in the data set
actName <- read.table("activity_labels.txt")
Ydata[,1] <- actName[Ydata[,1],2]
names(Ydata) <- c("activity")

# 4.Appropriately labels the data set with descriptive activity names. 
names(Sdata) <- c("subject")
OKdata <- cbind(Xdata,Ydata,Sdata)

# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
OKdata$subject <- factor(OKdata$subject)
fName1 <- as.vector(fName[,2])
names(OKdata)[1:561] <- fName1
# a. save the data set as data.txt
write.table(OKdata, file="data_set.txt")
library("reshape")
data_table <- OKdata
md <- melt(data_table,id=(c("subject","activity")))
newdata <- cast(md,subject+activity~variable,mean)
 
# b. save the tidy data set as tidy_data.txt
write.table(newdata, file="tidy_data.txt")