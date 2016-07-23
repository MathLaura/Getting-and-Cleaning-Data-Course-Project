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

Acceloration data is reported in standard gravity units, separated into X, Y and Z components. Similarly, velocity is reported in radians/seconds, separated into X, Y and Z components. More about the collection and meaning of each of these is in the files features.txt and features_info.txt, and is quoted below: 

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). "
