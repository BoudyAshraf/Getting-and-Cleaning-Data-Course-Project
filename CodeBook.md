# Introduction

The script performs five main steps to get clean and tidy dataset.

  * 1st step we merge test and training data to big dataset.
* 2nd step we want to extract only mean and std readings of measurments.
* 3rd step we change names with descriptive names we have activity names like ( WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,
STANDING, LAYING
* 4th we change variable names to descriptive names.
* finally we creates tidy data set with the average of each variable for each activity and each subject.


# Dataset
## Activities (type string)

* `WALKING`
* `WALKING_UPSTAIRS`
* `WALKING_DOWNSTAIRS`
* `SITTING` 
* `STANDING`
* `LAYING`

## Measurements (type numeric)
These variables are all of the average values.

 - tBodyAccmeanX
 - tBodyAccmeanY
 - tBodyAccmeanZ
 - tBodyAccstdX
 - tBodyAccstdY
 - tBodyAccstdZ
 - tGravityAccmeanX
 - tGravityAccmeanY
 - tGravityAccmeanZ
 - tGravityAccstdX
 - tGravityAccstdY
 - tGravityAccstdZ
 - tBodyAccJerkmeanX
 - tBodyAccJerkmeanY
 - tBodyAccJerkmeanZ
 - tBodyAccJerkstdX
 - tBodyAccJerkstdY
 - tBodyAccJerkstdZ
 - tBodyGyromeanX
 - tBodyGyromeanY
 - tBodyGyromeanZ
 - tBodyGyrostdX
 - tBodyGyrostdY
 - tBodyGyrostdZ
 - tBodyGyroJerkmeanX
 - tBodyGyroJerkmeanY
 - tBodyGyroJerkmeanZ
 - tBodyGyroJerkstdX
 - tBodyGyroJerkstdY
 - tBodyGyroJerkstdZ
 - tBodyAccMagmean
 - tBodyAccMagstd
 - tGravityAccMagmean
 - tGravityAccMagstd
 - tBodyAccJerkMagmean
 - tBodyAccJerkMagstd
 - tBodyGyroMagmean
 - tBodyGyroMagstd
 - tBodyGyroJerkMagmean
 - tBodyGyroJerkMagstd
 - fBodyAccmeanX
 - fBodyAccmeanY
 - fBodyAccmeanZ
 - fBodyAccstdX
 - fBodyAccstdY
 - fBodyAccstdZ
 - fBodyAccJerkmeanX
 - fBodyAccJerkmeanY
 - fBodyAccJerkmeanZ
 - fBodyAccJerkstdX
 - fBodyAccJerkstdY
 - fBodyAccJerkstdZ
 - fBodyGyromeanX
 - fBodyGyromeanY
 - fBodyGyromeanZ
 - fBodyGyrostdX
 - fBodyGyrostdY
 - fBodyGyrostdZ
 - fBodyAccMagmean
 - fBodyAccMagstd
 - fBodyBodyAccJerkMagmean
 - fBodyBodyAccJerkMagstd
 - fBodyBodyGyroMagmean
 - fBodyBodyGyroMagstd
 - fBodyBodyGyroJerkMagmean
 - fBodyBodyGyroJerkMagstd
