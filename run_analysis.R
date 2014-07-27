## first, download the file and load it into
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
download.file(fileURL, destfile="samsung.zip", method="curl")
unzip("samsung.zip")

## loading all the test data
testSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
testX <- read.table("./UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
testY <- read.table("./UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)

testBodyAccX <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt", sep="", header=FALSE)
testBodyAccY <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt", sep="", header=FALSE)
testBodyAccZ <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt", sep="", header=FALSE)

testBodyGyroX <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt", sep="", header=FALSE)
testBodyGyroY <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt", sep="", header=FALSE)
testBodyGyroZ <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt", sep="", header=FALSE)

testTotalAccX <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt", sep="", header=FALSE)
testTotalAccY <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt", sep="", header=FALSE)
testTotalAccZ <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt", sep="", header=FALSE)

## loading all the train data
trainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
trainX <- read.table("./UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
trainY <- read.table("./UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)

trainBodyAccX <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt", sep="", header=FALSE)
trainBodyAccY <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt", sep="", header=FALSE)
trainBodyAccZ <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt", sep="", header=FALSE)

trainBodyGyroX <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt", sep="", header=FALSE)
trainBodyGyroY <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt", sep="", header=FALSE)
trainBodyGyroZ <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt", sep="", header=FALSE)

trainTotalAccX <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt", sep="", header=FALSE)
trainTotalAccY <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt", sep="", header=FALSE)
trainTotalAccZ <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt", sep="", header=FALSE)

## Extracts only the measurements on the mean and standard deviation for each measurement.
## Start from test data
## mean for testBodyAcc
testBodyAccXMean <- apply(testBodyAccX, 1, mean)
testBodyAccYMean <- apply(testBodyAccY, 1, mean)
testBodyAccZMean <- apply(testBodyAccZ, 1, mean)

## sd for testBodyAcc
testBodyAccXSd <- apply(testBodyAccX, 1, sd)
testBodyAccYSd <- apply(testBodyAccY, 1, sd)
testBodyAccZSd <- apply(testBodyAccZ, 1, sd)

########################
## mean for testBodyGyro
testBodyGyroXMean <- apply(testBodyGyroX, 1, mean)
testBodyGyroYMean <- apply(testBodyGyroY, 1, mean)
testBodyGyroZMean <- apply(testBodyGyroZ, 1, mean)

## sd for testBodyGyro
testBodyGyroXSd <- apply(testBodyGyroX, 1, sd)
testBodyGyroYSd <- apply(testBodyGyroY, 1, sd)
testBodyGyroZSd <- apply(testBodyGyroZ, 1, sd)

########################
## mean for testTotalAcc
testTotalAccXMean <- apply(testTotalAccX, 1, mean)
testTotalAccYMean <- apply(testTotalAccY, 1, mean)
testTotalAccZMean <- apply(testTotalAccZ, 1, mean)

## sd for testTotalAcc
testTotalAccXSd <- apply(testTotalAccX, 1, sd)
testTotalAccYSd <- apply(testTotalAccY, 1, sd)
testTotalAccZSd <- apply(testTotalAccZ, 1, sd)

########################
## create an aggregated tidy test dataset

testTidy <- cbind(testSubject, testY, 
                  testBodyAccXMean, testBodyAccXSd, 
                  testBodyAccYMean, testBodyAccYSd, 
                  testBodyAccZMean, testBodyAccZSd,
                  testBodyGyroXMean, testBodyGyroXSd,
                  testBodyGyroYMean, testBodyGyroYSd,
                  testBodyGyroZMean, testBodyGyroZSd,
                  testTotalAccXMean, testTotalAccXSd,
                  testTotalAccYMean, testTotalAccYSd,
                  testTotalAccZMean, testTotalAccZSd,
                  datatype = "test")


###########################
## clean up data for train data

## mean for trainBodyAcc
trainBodyAccXMean <- apply(trainBodyAccX, 1, mean)
trainBodyAccYMean <- apply(trainBodyAccY, 1, mean)
trainBodyAccZMean <- apply(trainBodyAccZ, 1, mean)

## sd for trainBodyAcc
trainBodyAccXSd <- apply(trainBodyAccX, 1, sd)
trainBodyAccYSd <- apply(trainBodyAccY, 1, sd)
trainBodyAccZSd <- apply(trainBodyAccZ, 1, sd)

########################
## mean for trainBodyGyro
trainBodyGyroXMean <- apply(trainBodyGyroX, 1, mean)
trainBodyGyroYMean <- apply(trainBodyGyroY, 1, mean)
trainBodyGyroZMean <- apply(trainBodyGyroZ, 1, mean)

## sd for trainBodyGyro
trainBodyGyroXSd <- apply(trainBodyGyroX, 1, sd)
trainBodyGyroYSd <- apply(trainBodyGyroY, 1, sd)
trainBodyGyroZSd <- apply(trainBodyGyroZ, 1, sd)

########################
## mean for trainTotalAcc
trainTotalAccXMean <- apply(trainTotalAccX, 1, mean)
trainTotalAccYMean <- apply(trainTotalAccY, 1, mean)
trainTotalAccZMean <- apply(trainTotalAccZ, 1, mean)

## sd for trainTotalAcc
trainTotalAccXSd <- apply(trainTotalAccX, 1, sd)
trainTotalAccYSd <- apply(trainTotalAccY, 1, sd)
trainTotalAccZSd <- apply(trainTotalAccZ, 1, sd)

########################
## create an aggregated tidy train dataset

trainTidy <- cbind(trainSubject, trainY, 
                  trainBodyAccXMean, trainBodyAccXSd, 
                  trainBodyAccYMean, trainBodyAccYSd, 
                  trainBodyAccZMean, trainBodyAccZSd,
                  trainBodyGyroXMean, trainBodyGyroXSd,
                  trainBodyGyroYMean, trainBodyGyroYSd,
                  trainBodyGyroZMean, trainBodyGyroZSd,
                  trainTotalAccXMean, trainTotalAccXSd,
                  trainTotalAccYMean, trainTotalAccYSd,
                  trainTotalAccZMean, trainTotalAccZSd,
                  datatype = "train")


########################
## merge both datasets in to one

names(testTidy) <- names(trainTidy)
overallTidy <- rbind(testTidy, trainTidy)
    
########################
## update the column names

colnames(overallTidy) <- c("Subject", "Activity", 
                            "BodyAccXMean", "BodyAccXSd", 
                            "BodyAccYMean", "BodyAccYSd", 
                            "BodyAccZMean", "BodyAccZSd",
                            "BodyGyroXMean", "BodyGyroXSd",
                            "BodyGyroYMean", "BodyGyroYSd",
                            "BodyGyroZMean", "BodyGyroZSd",
                            "TotalAccXMean", "TotalAccXSd",
                            "TotalAccYMean", "TotalAccYSd",
                            "TotalAccZMean", "TotalAccZSd",
                            "dataType")

########################
## update activity names
## a function to update activity label to description

changeActivity <- function(num) {
    if(num == 1) {
        return ("Walking")
    }
    else if (num == 2) {
        return ("Walking Upstairs")
    }
    else if (num == 3) {
        return ("Walking Downstairs")
    }
    else if (num == 4) {
        return ("Sitting")
    }
    else if (num == 5) {
        return ("Standing")
    }
    else if (num == 6) {
        return ("Laying")
    }
}
    
## looping through the dataset and update each activity label    
for(i in 1:nrow(overallTidy)) {
    act <- changeActivity(overallTidy[i, "Activity"])
    overallTidy[i, "Activity"] <- act
}

## writing into a text file

write.table(overallTidy, file = "overallTidy.txt")

#################################################################################
## Creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject. 
    
overallTidyMeanOnly <- overallTidy[, c(1,2,3,5,7,9,11,13,15,17,19,21)]

write.table(overallTidyMeanOnly, file = "overallTidyMeanOnly.txt")
    
