# Getting-and-Cleaning-Data-Course-Project
Contains all files pertaining to my final project for Getting and Cleaning Data

The script run_analysis.R assumes you are in the "UCI HAR Dataset" folder. 
The function run() enacts the various subfunctions to make the data set tidy: 
* The first function, read_and_merge(), merges the training and the test sets to create one data set.
* The second function, activity_names(), uses descriptive activity names to name the activities in the data set
* The third function, add_descriptive_names(), appropriately labels the data set with descriptive variable names.
* The fourth function, select_mean_sd_only(), extracts only the measurements on the mean and standard deviation for each measurement.
* The last function, means_by_activity(), creates a new data frame with the mean of each column subsetted by activity type. It creates a second, independent tidy data set with the average of each variable for each activity and each subject.

