# Getting-and-Cleaning-Data-Course-Project

The repository contains:
* CodeBook.md:  descipes analysis process and ducumentatin for variables and dataset
* run_analysis.R: Which contains R  code to perform the analyses described in the 5 steps.
* averages_data.txt: The output of running run_analysis.R script.

The used dataset: [Human Activity Recognition Using Smartphones Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

# Running the code
The run_analysis.R can be launched in RStudio importing the file and run the script. It will download the dataset and perform project main 5 steps:
* 1st step we merge test and training data to big dataset.
* 2nd step we want to extract only mean and std readings of measurments.
* 3rd step we change names with descriptive names we have activity names like ( WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,
STANDING, LAYING
* 4th we change variable names to descriptive names.
* finally we creates tidy data set with the average of each variable for each activity and each subject.
