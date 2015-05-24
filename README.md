# Getting and Cleaning Data Class Project

##Script Requirements
This script was written using the R programming language (version 3.1.2) and  the packages and version numbers below. If you do not have the R programming language installed on your machine it can be downloaded from http://www.r-project.org/.

- plyr: 1.8.2
- dplyr: 0.4.1

If you do not have the above packages installed then please run the commands below in your R terminal.
```
install.packages("plyr")
install.packages("dplyr")
```
##Download the source data
The source data can be downloaded from the link below and should be unzipped into the same folder as the `run_analysis.R` file.
- [Download Zip File](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

##Running the tidying script
Once the above steps have been completed you are ready to run the script. Open your R console and run the commands below.

```
setwd("Sample/Path/To/Your/Project/Folder")
source("run_analysis.R")
```
** WARNING: Remember to use forward slashes '/' instead of backslashes '\' when using the `setwd` command in Windows **
##Output
After the script has been sucessfully run there will be an output file named `tidy_data.txt` in the same folder that the `run_analysis.R` file is in.