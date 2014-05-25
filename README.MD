###Getting and Cleaning Data Project
This README contains some information about run_anlysis.R

Source of the data
1) A full description is available at the site where the data was obtained: 
     http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
2) the data for the project: 
     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    Please download and unzip the source into a folder on your local drive, for example: D:\
    Put run_analysis.R to  D:\UCI HAR Dataset\

#Dependencies
The program requires the following packages to be loaded:
*reshape
The script will download these packages if they are not loaded at the start of your session.

#Working directory
*Win7
*set the working directory(setwd("D:/UCI HAR Dataset")) and source("run_analysis.R")

#Output: data
The R script run_analysis.R returns the following two data sets:

1)data_set.txt : combines training and test data sets (together with subject and activity data) based on the variables with mean and standard deviation;
2)tidy_data.txt: aggregate of the data.txt where the mean is calculated by subject and activity.