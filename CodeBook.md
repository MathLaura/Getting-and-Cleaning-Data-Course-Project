# Markdown file for run_analysis.R

##The Variables
The captured variables from data collected from accelerometers and gyroscopes on smart phones
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag
For each of these collections of data, the following were computed:
* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.and also Variable names came from the file 
For more information on these variables, see the features_info.txt and features.txt files. 

## The data
Each observation is a data point from one of the 30 participants. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING), and the activities are coded as such. 
The data was sparated into test and training sets which then had to be recombined in the analysis process

## The transformations 
The script run_analysis.R assumes you are in the "UCI HAR Dataset" folder. 
The function run() enacts the various subfunctions to make the data set tidy: 
* The first function, read_and_merge(), merges the training and the test sets to create one data set.
* The second function, activity_names(), uses descriptive activity names to name the activities in the data set
* The third function, add_descriptive_names(), appropriately labels the data set with descriptive variable names.
* The fourth function, select_mean_sd_only(), extracts only the measurements on the mean and standard deviation for each measurement.
* The last function, means_by_activity(), creates a new data frame with the mean of each column subsetted by activity type. It creates a second, independent tidy data set with the average of each variable for each activity and each subject.
