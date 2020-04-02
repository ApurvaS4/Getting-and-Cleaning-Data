# Getting-and-Cleaning-Data
Peer-graded Assignment: Getting and Cleaning Data

## Data Source
The data for this project was obtained from the Assignment instructions. It represents the data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

The data for the project are as follows:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]

## Files Description:

### Code_Book.md:
A code book that describes the variables, the data, and any transformations or work that is performed to clean up the data.

### run_analysis.R:
The code has a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory. 
Dplyr package was required to run this script.

The file does the following things as described in the Assignment Instructions:

1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each      measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with   the average of each variable for each activity and each subject.

### tidy_data.txt:
An independent tidy data set with the average of each variable for each activity and each subject.


