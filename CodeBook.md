###CodeBook
Abstrat:Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip .
The attached R script (run_analysis.R) performs the following to clean up the data:

1. Merges the training and test sets to create one data set
 the data set's name is Mergesdata

2. MSdata is a matrix of the mean and standard deviation for each measurement


3.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
  the result save as tidy_data.txt.