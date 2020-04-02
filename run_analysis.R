# This assignment requires a dplyr package.
    library(dplyr)

    filename <- "UCI HAR Dataset.zip"

# Checking if the filename already exists or not.
    
    if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileURL, filename, method="curl")
  }  


    if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
  }

# Loading features and activity labels.
    
    features <- read.table("UCI HAR Dataset/features.txt", col.names = c("no","functions"))
    activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

# Reading the test data. 

    subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
    X_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
    y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")

# Reading the train data.

    subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
    X_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
    y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

# 1. Merging the training and the test sets to create one data set.
    
    X <- rbind(X_train, X_test)
    y <- rbind(y_train, y_test)
    Subject <- rbind(subject_train, subject_test)
    Train_Test_Merged <- cbind(Subject, X, y)

# 2. Extracting only the measurements on the mean and standard deviation for each measurement.
    
    Tidy_Data <- Train_Test_Merged %>% select(subject, code, contains("mean"), contains("std"))

# 3. Useing descriptive activity names to name the activities in the data set.

    Tidy_Data$code <- activities[Tidy_Data$code, 2]
    
# 4.Appropriately labelling the data set with descriptive variable names.    

    names(Tidy_Data)[2] <- "activity"
    names(Tidy_Data)<-gsub("Acc", "Accelerometer", names(Tidy_Data))
    names(Tidy_Data)<-gsub("Gyro", "Gyroscope", names(Tidy_Data))
    names(Tidy_Data)<-gsub("BodyBody", "Body", names(Tidy_Data))
    names(Tidy_Data)<-gsub("Mag", "Magnitude", names(Tidy_Data))
    names(Tidy_Data)<-gsub("^t", "Time", names(Tidy_Data))
    names(Tidy_Data)<-gsub("^f", "Frequency", names(Tidy_Data))
    names(Tidy_Data)<-gsub("tBody", "Time Body", names(Tidy_Data))
    names(Tidy_Data)<-gsub("-mean()", "Mean", names(Tidy_Data), ignore.case = TRUE)
    names(Tidy_Data)<-gsub("-std()", "Standard Deviation", names(Tidy_Data), ignore.case = TRUE)
    names(Tidy_Data)<-gsub("-freq()", "Frequency", names(Tidy_Data), ignore.case = TRUE)
    names(Tidy_Data)<-gsub("angle", "Angle", names(Tidy_Data))
    names(Tidy_Data)<-gsub("gravity", "Gravity", names(Tidy_Data))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    
    Final_Tidy_Data <- Tidy_Data %>% group_by(subject, activity) %>% summarise_each(funs(mean))

    write.table(Final_Tidy_Data, "tidy_data.txt", row.name=FALSE, quote=FALSE)

