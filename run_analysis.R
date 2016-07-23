# The following script assumes you are in the "UCI HAR Dataset" folder. 

test_path <- "test/X_test.txt"
test_path_y <- "test/Y_test.txt"
train_path <- "train/X_train.txt"
train_path_y <- "train/Y_train.txt"
train_path_y <- "train/Y_train.txt"

names_path <- "features.txt"

run <- function(){
     # This function runs the various subfunctions to make the data set tidy: 
     # This first function merges the training and the test sets to create one data set.
     data <- read_and_merge(test_path, test_path_y, train_path, train_path_y)
     # This second function uses descriptive activity names to name the activities in the data set
     data <- activity_names(data)
     # This third function appropriately labels the data set with descriptive variable names.
     data <- add_descriptive_names(data, names_path)
     # This fourth function extracts only the measurements on the mean and standard deviation for each measurement.
     data <- select_mean_sd_only(data)
     # This last function creates a new data frame with the mean of each column subsetted by activity type. 
     # Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
     results <- means_by_activity(data)
     return(results)
}

read_and_merge <- function(test_path, test_path_y, train_path, train_path_y){
     # read_and_merge adds activity type data to each observation (at end) and merges the two data sets into one. 
     test_x <- read.table(test_path, stringsAsFactors=FALSE)
     test_y <- read.table(test_path_y, stringsAsFactors=FALSE)
     train_x <- read.table(train_path, stringsAsFactors=FALSE)
     train_y <- read.table(train_path_y, stringsAsFactors=FALSE)
     return(rbind(cbind(test_x, test_y), cbind(train_x, train_y)))
}

add_descriptive_names <- function(data_set, names_path){
     # reads file features.txt and attaches descriptive names to the variables
     # additionally, adds "activity type" label to test_y and train_y data. 
     names_list <- read.table(names_path, stringsAsFactors=FALSE)
     names_list <- names_list[,2]
     names_list[length(names_list)+1] <- "activitytype"
     names(data_set) <- names_list
     return(data_set)
}

select_mean_sd_only <- function(data){
     # This function selects only those columns pertaining to mean and sd. 
     std_mean_locations <- grep("std|mean\\(|activity", names(data))
     data <- data[, std_mean_locations]
     return(data)
}

activity_names <- function(data){
     # This function replaces each activity code with the appropriate descriptive word for the activity. 
     for(i in 1:nrow(data)){
          if (data[i,ncol(data)] == 1){
               data[i,ncol(data)] <- "WALKING"
          } else if (data[i,ncol(data)] == 2){
               data[i,ncol(data)] <- "WALKING_UPSTAIRS"
          } else if (data[i,ncol(data)] == 3){
               data[i,ncol(data)] <- "WALKING_DOWNSTAIRS"
          }else if (data[i,ncol(data)] == 4){
               data[i,ncol(data)] <- "SITTING"
          }else if (data[i,ncol(data)] == 5){
               data[i,ncol(data)] <- "STANDING"
          } else if (data[i,ncol(data)] == 6){
               data[i,ncol(data)] <- "LAYING"
          } else {
               data[i,ncol(data)] <- "Error"
          }
     }
     #data$activitytype <- as.factor(data$activitytype)
     return(data)
}

means_by_activity <- function(data){
     # calculates the mean for each column subsetted by each activity
     # returns an independent data frame with rows for activities and means in each entry. 
     data$activitytype <- as.factor(data$activitytype)
     results <- data[1,]
     for (j in 1:6){
          activity <- levels(data$activitytype)[j]
          for (i in 1:(length(names(data))-1)){
               results[j,i] <- mean(data[which(data$activitytype==activity),i])    
          }
          results[j,ncol(data)] <- activity
     }
     results <- cbind(results$activitytype,results[,1:ncol(data) - 1])
     names(results)[1] <- "activitytype"
     return(results)
}