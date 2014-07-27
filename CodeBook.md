<<<<<<< HEAD
## CODEBOOK file for overallTidy data 

#### This file explains the meaning of each column in overallTidy.txt file
###### 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
######

"Subject": the number/ID used to indicate individual subjects
"Activity": the activity being monitored. 
"BodyAccXMean": the mean of all the estimated Triaxial body acceleration points recorded in X dimension
"BodyAccXSd": the standard deviation of all the estimated Triaxial body acceleration points recorded in X dimension
"BodyAccYMean": the mean of all the estimated Triaxial body acceleration points recorded in Y dimension
"BodyAccYSd": the standard deviation of all the estimated Triaxial body acceleration points recorded in Y dimension
"BodyAccZMean": the mean of all the estimated Triaxial body acceleration points recorded in Z dimension
"BodyAccZSd": the standard deviation of all the estimated Triaxial body acceleration points recorded in Z dimension
"BodyGyroXMean": the mean of all Triaxial Angular velocity from the gyroscope data points recorded in X dimension
"BodyGyroXSd": the standard deviation of all Triaxial Angular velocity from the gyroscope data points recorded in X dimension
"BodyGyroYMean": the mean of all Triaxial Angular velocity from the gyroscope data points recorded in Y dimension
"BodyGyroYSd": the standard deviation of all Triaxial Angular velocity from the gyroscope data points recorded in Y dimension
"BodyGyroZMean": the mean of all Triaxial Angular velocity from the gyroscope data points recorded in Z dimension
"BodyGyroZSd": the standard deviation of all Triaxial Angular velocity from the gyroscope data points recorded in Z dimension
"TotalAccXMean": the mean of all Triaxial acceleration from the accelerometer data points recorded in X dimension
"TotalAccXSd": the standard deviation of all Triaxial acceleration from the accelerometer data points recorded in X dimension
"TotalAccYMean": the mean of all Triaxial acceleration from the accelerometer data points recorded in Y dimension
"TotalAccYSd": the standard deviation of all Triaxial acceleration from the accelerometer data points recorded in Y dimension
"TotalAccZMean": the mean of all Triaxial acceleration from the accelerometer data points recorded in Z dimension
"TotalAccZSd": the standard deviation of all Triaxial acceleration from the accelerometer data points recorded in Z dimension
"dataType": indicating if the data set is from test or train data

=======
courseradatacleaning
====================

Coursera Data Science Certificate | Getting and Cleaning Data | Week 3 Project | Wearable Tracking
>>>>>>> ffdbc34e42b4a70fbeb4f80a12e75ff8223d6669
