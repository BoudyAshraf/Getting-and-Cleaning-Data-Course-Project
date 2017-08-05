if(!file.exists("getdata_projectfiles_UCI HAR Dataset.zip")){
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
}
unzip("getdata_projectfiles_UCI HAR Dataset.zip")
# 1
# Merges the training and the test sets to create one data set.
#1.1read the data
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
trainInput <- read.table("UCI HAR Dataset/train/X_train.txt")
testInput <- read.table("UCI HAR Dataset/test/X_test.txt")
trainOutput <- read.table("UCI HAR Dataset/train/y_train.txt")
testOutput <- read.table("UCI HAR Dataset/test/y_test.txt")


#1.2 merge tables

dataInput = rbind(trainInput, testInput)
dataOutput = rbind(trainOutput, testOutput)
dataSubject = rbind(trainSubject, testSubject)
mergedDataset <- cbind(dataSubject,dataInput,dataOutput )

colnames(mergedDataset)
dim(mergedDataset)

grep(".*Mean.*|.*Std.*", names(mergedDataset), ignore.case=TRUE)

# 2 
# Extracts only the measurements on the mean and standard deviation for each measurement.
# 2.1 change cols names
inputNames <- read.table("UCI HAR Dataset/features.txt",as.is = TRUE)
colnames(mergedDataset)[2 : 562] <- inputNames$V2
colnames(mergedDataset)
selectedCols <- colnames(mergedDataset)[grep("(*-mean()|*-std())", colnames(mergedDataset),ignore.case = TRUE)]

# 2.2 filter mean and std cols
meanAndStdCols <- grep("(*-mean()|*-std())", colnames(mergedDataset),ignore.case = TRUE)
finalDataset <- mergedDataset[,c(1,meanAndStdCols,563)]
colnames(finalDataset)



# 3
# Uses descriptive activity names to name the activities in the data set
activityNames = read.table("./UCI HAR Dataset/activity_labels.txt", as.is = TRUE)
activityNames
colnames(finalDataset)[81] <- "Activity-Name"
finalDataset$`Activity-Name` <- factor(finalDataset$`Activity-Name`, labels=activityNames$V2)
finalDataset$`Activity-Name`


# 4
# Appropriately labels the data set with descriptive variable names.
colnames(finalDataset)[1] <- "subject"
colnames(finalDataset)
dim(finalDataset)

# Step 5
#  independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
averageDataset <- ddply(finalDataset, .(subject, `Activity-Name`), function(x) colMeans(x[, 2:80]))

write.table(averageDataset, file = "averageDataset.txt", row.names = FALSE)



