## README file for overallTidy data 

#### Data generated from consolidating data sets downloaded fromh "Human Activity Recognition Using Smartphones Data Set", hyperlink: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###### The methodology to generate overallTidy.txt file is described below:

1. The .zip file is downloaded from the internet, unzipped in the working directory
2. All the txt files are loaded into separate data frames, in total, they include the following:

testSubject: from subject_test.txt
testX: from X_test.txt
testY: from y_test.txt
testBodyAccX: from body_acc_x_test.txt
testBodyAccY: from body_acc_y_test.txt
testBodyAccZ: from body_acc_z_test.txt
testBodyGyroX: from body_gyro_x_test.txt
testBodyGyroY: from body_gyro_y_test.txt
testBodyGyroZ: from body_gyro_z_test.txt
testTotalAccX: from total_acc_x_test.txt
testTotalAccY: from total_acc_y_test.txt
testTotalAccZ: from total_acc_z_test.txt
trainSubject: from subject_train.txt
trainX: from X_train.txt
trainY: from y_train.txt
trainBodyAccX: from body_acc_x_train.txt
trainBodyAccY: from body_acc_y_train.txt
trainBodyAccZ: from body_acc_z_train.txt
trainBodyGyroX: from body_gyro_x_train.txt
trainBodyGyroY: from body_gyro_y_train.txt
trainBodyGyroZ: from body_gyro_z_train.txt
trainTotalAccX: from total_acc_x_train.txt
trainTotalAccY: from total_acc_y_train.txt
trainTotalAccZ: from total_acc_z_train.txt

3. All the test datasets are combined using cbind() function to testTidy
4. All the train datasets are combined using cbind() function to trainTidy
5. Both test and train datasets are combined using rbind() function to overallTidy
6. Column names for overallTidy is updated to be more descriptive
7. A function is written and ran to update the "Activity" labels from number to text
8. The final dataset is written into a txt file overallTidy.txt
9. From overallTidy dataset, columns "Subject", "Activity", and "mean" related are kept for the second tidy dataset
10. The second dataset is subsequently written to a text file overallTidyMeanOnly.txt






