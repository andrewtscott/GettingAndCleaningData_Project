#Code Book

##Source Data
More information regarding the source data used in this analysis can be found here: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The dataset can be downloaded from here: [ZipFile](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
##Method
66 variables were extracted from the 561 variables included in the source data. These variables were chosen because they represent the mean and standard deviation of the base measurements produced from that analysis. A complete list of the variables chosen and their mappings to the output data columns can be found in the Extracted Variables section below. For information related to the generation of the source variables please refer to the original codebook file **`UCI HAR Dataset\features_info.txt`** in the source data's zip file above.

The resulting tidy dataset from this analysis is the source data grouped by Subject and Activity being performed. Then the mean is calculated for each of the extracted variables resulting in a single row of information. The long form of data was chosen for the output to allow for easier post-analysis.
##Output Columns
This analysis produces a file caled `tidy_data.txt` that contains the following columns.
- Subject (Sequence of number 1:30 each indicating a single person)
- Activity (The six actions that subjects were asked to perform): 
	- WALKING
	- WALKING_UPSTAIRS
	- WALKING_DOWNSTAIRS
	- SITTING
	- STANDING
	- LAYING
- Variables 
	- The mean calculation of each of the 66 variables that were extracted from the source data of 561 variables.
	
##Extracted Variables

Some processing of the variable names was done to remove special characters from column names. Please use the information below to map between source and output data. 

**Please keep in mind that the output columns is the average of the variables grouped by Subject and Activity. They retain their original feature names for ease of recognition.**
```
Original Column Name         | Result Column Name
--------------------------------------------------------------
"tBodyAcc-mean()-X"          | "tBodyAccMeanX" 
"tBodyAcc-mean()-Y"          | "tBodyAccMeanY" 
"tBodyAcc-mean()-Z"          | "tBodyAccMeanZ" 
"tBodyAcc-std()-X"           | "tBodyAccStdX" 
"tBodyAcc-std()-Y"           | "tBodyAccStdY" 
"tBodyAcc-std()-Z"           | "tBodyAccStdZ" 
"tGravityAcc-mean()-X"       | "tGravityAccMeanX" 
"tGravityAcc-mean()-Y"       | "tGravityAccMeanY" 
"tGravityAcc-mean()-Z"       | "tGravityAccMeanZ" 
"tGravityAcc-std()-X"        | "tGravityAccStdX" 
"tGravityAcc-std()-Y"        | "tGravityAccStdY" 
"tGravityAcc-std()-Z"        | "tGravityAccStdZ" 
"tBodyAccJerk-mean()-X"      | "tBodyAccJerkMeanX" 
"tBodyAccJerk-mean()-Y"      | "tBodyAccJerkMeanY" 
"tBodyAccJerk-mean()-Z"      | "tBodyAccJerkMeanZ" 
"tBodyAccJerk-std()-X"       | "tBodyAccJerkStdX" 
"tBodyAccJerk-std()-Y"       | "tBodyAccJerkStdY" 
"tBodyAccJerk-std()-Z"       | "tBodyAccJerkStdZ" 
"tBodyGyro-mean()-X"         | "tBodyGyroMeanX" 
"tBodyGyro-mean()-Y"         | "tBodyGyroMeanY" 
"tBodyGyro-mean()-Z"         | "tBodyGyroMeanZ" 
"tBodyGyro-std()-X"          | "tBodyGyroStdX" 
"tBodyGyro-std()-Y"          | "tBodyGyroStdY" 
"tBodyGyro-std()-Z"          | "tBodyGyroStdZ" 
"tBodyGyroJerk-mean()-X"     | "tBodyGyroJerkMeanX" 
"tBodyGyroJerk-mean()-Y"     | "tBodyGyroJerkMeanY" 
"tBodyGyroJerk-mean()-Z"     | "tBodyGyroJerkMeanZ" 
"tBodyGyroJerk-std()-X"      | "tBodyGyroJerkStdX" 
"tBodyGyroJerk-std()-Y"      | "tBodyGyroJerkStdY" 
"tBodyGyroJerk-std()-Z"      | "tBodyGyroJerkStdZ" 
"tBodyAccMag-mean()"         | "tBodyAccMagMean" 
"tBodyAccMag-std()"          | "tBodyAccMagStd" 
"tGravityAccMag-mean()"      | "tGravityAccMagMean" 
"tGravityAccMag-std()"       | "tGravityAccMagStd" 
"tBodyAccJerkMag-mean()"     | "tBodyAccJerkMagMean" 
"tBodyAccJerkMag-std()"      | "tBodyAccJerkMagStd" 
"tBodyGyroMag-mean()"        | "tBodyGyroMagMean" 
"tBodyGyroMag-std()"         | "tBodyGyroMagStd" 
"tBodyGyroJerkMag-mean()"    | "tBodyGyroJerkMagMean" 
"tBodyGyroJerkMag-std()"     | "tBodyGyroJerkMagStd" 
"fBodyAcc-mean()-X"          | "fBodyAccMeanX" 
"fBodyAcc-mean()-Y"          | "fBodyAccMeanY" 
"fBodyAcc-mean()-Z"          | "fBodyAccMeanZ" 
"fBodyAcc-std()-X"           | "fBodyAccStdX" 
"fBodyAcc-std()-Y"           | "fBodyAccStdY" 
"fBodyAcc-std()-Z"           | "fBodyAccStdZ" 
"fBodyAccJerk-mean()-X"      | "fBodyAccJerkMeanX" 
"fBodyAccJerk-mean()-Y"      | "fBodyAccJerkMeanY" 
"fBodyAccJerk-mean()-Z"      | "fBodyAccJerkMeanZ" 
"fBodyAccJerk-std()-X"       | "fBodyAccJerkStdX" 
"fBodyAccJerk-std()-Y"       | "fBodyAccJerkStdY" 
"fBodyAccJerk-std()-Z"       | "fBodyAccJerkStdZ" 
"fBodyGyro-mean()-X"         | "fBodyGyroMeanX" 
"fBodyGyro-mean()-Y"         | "fBodyGyroMeanY" 
"fBodyGyro-mean()-Z"         | "fBodyGyroMeanZ" 
"fBodyGyro-std()-X"          | "fBodyGyroStdX" 
"fBodyGyro-std()-Y"          | "fBodyGyroStdY" 
"fBodyGyro-std()-Z"          | "fBodyGyroStdZ" 
"fBodyAccMag-mean()"         | "fBodyAccMagMean" 
"fBodyAccMag-std()"          | "fBodyAccMagStd" 
"fBodyBodyAccJerkMag-mean()" | "fBodyBodyAccJerkMagMean" 
"fBodyBodyAccJerkMag-std()"  | "fBodyBodyAccJerkMagStd" 
"fBodyBodyGyroMag-mean()"    | "fBodyBodyGyroMagMean" 
"fBodyBodyGyroMag-std()"     | "fBodyBodyGyroMagStd" 
"fBodyBodyGyroJerkMag-mean()"| "fBodyBodyGyroJerkMagMean" 
"fBodyBodyGyroJerkMag-std()" | "fBodyBodyGyroJerkMagStd"
```