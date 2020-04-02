# Code Book
This code book summarizes the resulting data fields in run_analysis.R and tidy_data.txt files.

## Variables and Transformations

### Assigning of the variables 
 1. features <- features.txt 
    The features selected for this database come from the accelerometer and        gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.
    
 2. activities <- activity_labels.txt
    List of activities performed when the corresponding measurements were taken     and its codes (labels).
    WALKING: subject was walking
    WALKING_UPSTAIRS: subject was walking upstairs
    WALKING_DOWNSTAIRS: subject was walking downstairs
    SITTING: subject was sitting
    STANDING: subject was standing
    LAYING: subject was laying
    
    
 3. subject_test <- test/subject_test.txt
    contains test data of 9/30 volunteer test subjects being observed
    
 4. x_test <- test/X_test.txt  
    contains recorded features test data
    
 5. y_test <- test/y_test.txt 
    contains test data of activities’code labels
    
 6. subject_train <- train/subject_train.txt
    contains train data of 21/30 volunteer subjects being observed
    
 7. x_train <- train/X_train.txt 
    contains recorded features train data
    
 8. y_train <- train/y_train.txt 
    contains train data of activities’code labels

### Merging the training and the test sets to create one data set
 1. X is created by merging x_train and x_test using rbind() function
 
 2. y is created by merging y_train and y_test using rbind() function
 
 3. Subject is created by merging subject_train and subject_test using rbind()     function
 
 4. Train_Test_Merged is created by merging Subject, Y and X using cbind()         function

### Extracting only the measurements on the mean and standard deviation for each measurement
 1. Tidy_Data  is created by subsetting Train_Test_Merged, selecting only          columns: subject, code and the measurements on the mean and standard           deviation (std) for each measurement

### Using descriptive activity names to name the activities in the data set
 1. Entire numbers in code column of the Tidy_Data replaced with corresponding     activity taken from second column of the activities variable

### Appropriately labels the data set with descriptive variable names
 1. code column in Tidy_Data renamed into activities
 2. All Acc in column’s name replaced by Accelerometer
 3. All Gyro in column’s name replaced by Gyroscope
 4. All BodyBody in column’s name replaced by Body
 5. All Mag in column’s name replaced by Magnitude
 6. All start with character f in column’s name replaced by Frequency
 7. All start with character t in column’s name replaced by Time
 8. All tBody in column's name replaced by Time Body
 9. All -mean() in column's name replaced by Mean
 10.All -std() in column's name replaced by Standard Deviation
 11.All -freq() in column's name replaced by Frequency
 12.All angle in column's name replaced by Angle
 13.All gravity in column's name replaced by Gravity
 
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
Final_Tidy_Data is created by sumarizing Tidy_Data, taking the means of each variable for each activity and each subject, after grouped by subject and activity.
It is then exported to tidy_data.txt file.
## Measurements
    tBodyAccMeanX
    tBodyAccMeanY
    tBodyAccMeanZ
    tBodyAccStdX
    tBodyAccStdY
    tBodyAccStdZ
    tGravityAccMeanX
    tGravityAccMeanY
    tGravityAccMeanZ
    tGravityAccStdX
    tGravityAccStdY
    tGravityAccStdZ
    tBodyAccJerkMeanX
    tBodyAccJerkMeanY
    tBodyAccJerkMeanZ
    tBodyAccJerkStdX
    tBodyAccJerkStdY
    tBodyAccJerkStdZ
    tBodyGyroMeanX
    tBodyGyroMeanY
    tBodyGyroMeanZ
    tBodyGyroStdX
    tBodyGyroStdY
    tBodyGyroStdZ
    tBodyGyroJerkMeanX
    tBodyGyroJerkMeanY
    tBodyGyroJerkMeanZ
    tBodyGyroJerkStdX
    tBodyGyroJerkStdY
    tBodyGyroJerkStdZ
    tBodyAccMagMean
    tBodyAccMagStd
    tGravityAccMagMean
    tGravityAccMagStd
    tBodyAccJerkMagMean
    tBodyAccJerkMagStd
    tBodyGyroMagMean
    tBodyGyroMagStd
    tBodyGyroJerkMagMean
    tBodyGyroJerkMagStd
    fBodyAccMeanX
    fBodyAccMeanY
    fBodyAccMeanZ
    fBodyAccStdX
    fBodyAccStdY
    fBodyAccStdZ
    fBodyAccMeanFreqX
    fBodyAccMeanFreqY
    fBodyAccMeanFreqZ
    fBodyAccJerkMeanX
    fBodyAccJerkMeanY
    fBodyAccJerkMeanZ
    fBodyAccJerkStdX
    fBodyAccJerkStdY
    fBodyAccJerkStdZ
    fBodyAccJerkMeanFreqX
    fBodyAccJerkMeanFreqY
    fBodyAccJerkMeanFreqZ
    fBodyGyroMeanX
    fBodyGyroMeanY
    fBodyGyroMeanZ
    fBodyGyroStdX
    fBodyGyroStdY
    fBodyGyroStdZ
    fBodyGyroMeanFreqX
    fBodyGyroMeanFreqY
    fBodyGyroMeanFreqZ
    fBodyAccMagMean
    fBodyAccMagStd
    fBodyAccMagMeanFreq
    fBodyBodyAccJerkMagMean
    fBodyBodyAccJerkMagStd
    fBodyBodyAccJerkMagMeanFreq
    fBodyBodyGyroMagMean
    fBodyBodyGyroMagStd
    fBodyBodyGyroMagMeanFreq
    fBodyBodyGyroJerkMagMean
    fBodyBodyGyroJerkMagStd
    fBodyBodyGyroJerkMagMeanFreq
    
