# Coursera Getting and Cleaning Data Course Project

See the README.md file of this repository for background information on this data set.
The data set that this code book pertains to is located in the Tidy_Data.txt file of this repository.

## Initial Data

The data is taken from the [UCI_HAR](https://www.coursera.org/learn/data-cleaning?specialization=data-science-foundations-r) data set. 

### Variables:

* `subject` .- Subject identifier, integer, ranges from 1 to 30.
* `activity` .- Activity identifier, string with 6 possible values:
      * `WALKING`: subject was walking
      * `WALKING_UPSTAIRS`: subject was walking upstairs
      * `WALKING_DOWNSTAIRS`: subject was walking downstairs
      * `SITTING`: subject was sitting
      * `STANDING`: subject was standing
      * `LAYING`: subject was laying
      
* Mean and standard deviation for the following characteristics (other values are presented in the initial data set, but only these parameters were used for this investigation)
       * `tBodyAccMeanX`
       * `tBodyAccMeanY`
       * `tBodyAccMeanZ`
       * `tBodyAccStdX`
       * `tBodyAccStdY`
       * `tBodyAccStdZ`
       * `tGravityAccMeanX`
       * `tGravityAccMeanY`
       * `tGravityAccMeanZ`
       * `tGravityAccStdX`
       * `tGravityAccStdY`
       * `tGravityAccStdZ`
       * `tBodyAccJerkMeanX`
       * `tBodyAccJerkMeanY`
       * `tBodyAccJerkMeanZ`
       * `tBodyAccJerkStdX`
       * `tBodyAccJerkStdY`
       * `tBodyAccJerkStdZ`
       * `tBodyGyroMeanX`
       * `tBodyGyroMeanY`
       * `tBodyGyroMeanZ`
       * `tBodyGyroStdX`
       * `tBodyGyroStdY`
       * `tBodyGyroStdZ`
       * `tBodyGyroJerkMeanX`
       * `tBodyGyroJerkMeanY`
       * `tBodyGyroJerkMeanZ`
       * `tBodyGyroJerkStdX`
       * `tBodyGyroJerkStdY`
       * `tBodyGyroJerkStdZ`
       * `tBodyAccMagMean`
       * `tBodyAccMagStd`
       * `tGravityAccMagMean`
       * `tGravityAccMagStd`
       * `tBodyAccJerkMagMean`
       * `tBodyAccJerkMagStd`
       * `tBodyGyroMagMean`
       * `tBodyGyroMagStd`
       * `tBodyGyroJerkMagMean`
       * `tBodyGyroJerkMagStd`
       * `fBodyAccMeanX`
       * `fBodyAccMeanY`
       * `fBodyAccMeanZ`
       * `fBodyAccStdX`
       * `fBodyAccStdY`
       * `fBodyAccStdZ`
       * `fBodyAccMeanFreqX`
       * `fBodyAccMeanFreqY`
       * `fBodyAccMeanFreqZ`
       * `fBodyAccJerkMeanX`
       * `fBodyAccJerkMeanY`
       * `fBodyAccJerkMeanZ`
       * `fBodyAccJerkStdX`
       * `fBodyAccJerkStdY`
       * `fBodyAccJerkStdZ`
       * `fBodyAccJerkMeanFreqX`
       * `fBodyAccJerkMeanFreqY`
       * `fBodyAccJerkMeanFreqZ`
       * `fBodyGyroMeanX`
       * `fBodyGyroMeanY`
       * `fBodyGyroMeanZ`
       * `fBodyGyroStdX`
       * `fBodyGyroStdY`
       * `fBodyGyroStdZ`
       * `fBodyGyroMeanFreqX`
       * `fBodyGyroMeanFreqY`
       * `fBodyGyroMeanFreqZ`
       * `fBodyAccMagMean`
       * `fBodyAccMagStd`
       * `fBodyAccMagMeanFreq`
       * `fBodyBodyAccJerkMagMean`
       * `fBodyBodyAccJerkMagStd`
       * `fBodyBodyAccJerkMagMeanFreq`
       * `fBodyBodyGyroMagMean`
       * `fBodyBodyGyroMagStd`
       * `fBodyBodyGyroMagMeanFreq`
       * `fBodyBodyGyroJerkMagMean`
       * `fBodyBodyGyroJerkMagStd`
       * `fBodyBodyGyroJerkMagMeanFreq`

### The original data was modifies by

Merging the training and the test sets to create one data set.

1. Extracting only the measurements on the mean and standard deviation for each measurement.
2. Useing descriptive activity names to name the activities in the data set.
3. Appropriately labeling the data set with descriptive variable names.
4. Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

