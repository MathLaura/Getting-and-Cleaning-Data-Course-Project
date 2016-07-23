# Getting-and-Cleaning-Data-Course-Project
Contains all files pertaining to my final project for Getting and Cleaning Data

The script run_analysis.R assumes you are in the "UCI HAR Dataset" folder. 
The function run() enacts the various subfunctions to make the data set tidy: 
* The first function, read_and_merge(), merges the training and the test sets to create one data set.
* The second function, activity_names(), uses descriptive activity names to name the activities in the data set
* The third function, add_descriptive_names(), appropriately labels the data set with descriptive variable names.
* The fourth function, select_mean_sd_only(), extracts only the measurements on the mean and standard deviation for each measurement.
* The last function, means_by_activity(), creates a new data frame with the mean of each column subsetted by activity type. It creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The script returns a tidy data set that reports the mean for each of the following taken over each activity type (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING and LAYING). This is the list of means that are reported:
 * tBodyAcc-mean()-X
 * tBodyAcc-mean()-Y
 * tBodyAcc-mean()-Z
 * tBodyAcc-std()-X
 * tBodyAcc-std()-Y
 * tBodyAcc-std()-Z
 * tGravityAcc-mean()-X
 * tGravityAcc-mean()-Y
 * tGravityAcc-mean()-Z
 * tGravityAcc-std()-X
 * tGravityAcc-std()-Y
 * tGravityAcc-std()-Z
 * tBodyAccJerk-mean()-X
 * tBodyAccJerk-mean()-Y
 * tBodyAccJerk-mean()-Z
 * tBodyAccJerk-std()-X
 * tBodyAccJerk-std()-Y
 * tBodyAccJerk-std()-Z
 * tBodyGyro-mean()-X
 * tBodyGyro-mean()-Y
 * tBodyGyro-mean()-Z
 * tBodyGyro-std()-X
 * tBodyGyro-std()-Y
 * tBodyGyro-std()-Z
 * tBodyGyroJerk-mean()-X
 * tBodyGyroJerk-mean()-Y
 * tBodyGyroJerk-mean()-Z
 * tBodyGyroJerk-std()-X
 * tBodyGyroJerk-std()-Y
 * tBodyGyroJerk-std()-Z
 * tBodyAccMag-mean()
 * tBodyAccMag-std()
 * tGravityAccMag-mean()
 * tGravityAccMag-std()
 * tBodyAccJerkMag-mean()
 * tBodyAccJerkMag-std()
 * tBodyGyroMag-mean()
 * tBodyGyroMag-std()
 * tBodyGyroJerkMag-mean()
 * tBodyGyroJerkMag-std()
 * fBodyAcc-mean()-X
 * fBodyAcc-mean()-Y
 * fBodyAcc-mean()-Z
 * fBodyAcc-std()-X
 * fBodyAcc-std()-Y
 * fBodyAcc-std()-Z
 * fBodyAccJerk-mean()-X
 * fBodyAccJerk-mean()-Y
 * fBodyAccJerk-mean()-Z
 * fBodyAccJerk-std()-X
 * fBodyAccJerk-std()-Y
 * fBodyAccJerk-std()-Z
 * fBodyGyro-mean()-X
 * fBodyGyro-mean()-Y
 * fBodyGyro-mean()-Z
 * fBodyGyro-std()-X
 * fBodyGyro-std()-Y
 * fBodyGyro-std()-Z
 * fBodyAccMag-mean()
 * fBodyAccMag-std()
 * fBodyBodyAccJerkMag-mean()
 * fBodyBodyAccJerkMag-std()
 * fBodyBodyGyroMag-mean()
 * fBodyBodyGyroMag-std()
 * fBodyBodyGyroJerkMag-mean()
 * fBodyBodyGyroJerkMag-std()

More about the collection and meaning of each of these is in the files features.txt and features_info.txt
