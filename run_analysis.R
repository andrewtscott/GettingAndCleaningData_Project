library(plyr)
library(dplyr)

normalize_feature_names <- function(names) {
  names <- sapply(names, FUN = function(x) gsub(".", "", make.names(x), fixed = TRUE))
  names <- sapply(names, FUN = function(x) gsub("mean", "Mean", x, fixed = TRUE))
  sapply(names, FUN = function(x) gsub("std", "Std", x, fixed = TRUE), simplify = TRUE)
}

features <- 
  read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE) %>%
  mutate(V2 = normalize_feature_names(V2))

#filter out all variables that don't have to do
#with the mean or standard deviation. Exclude the MeanFreq and Angle variables
filtered_features <- 
  features %>%
  filter(
    (grepl("mean", tolower(V2), fixed = TRUE) | grepl("std", tolower(V2), fixed = TRUE)) 
    & !(grepl("meanfreq", tolower(V2), fixed = TRUE)) & !(grepl("angle", tolower(V2), fixed = TRUE))
  ) 

#Load the test and training data sets
train_set <- data.frame(
  Subject = (read.table("UCI HAR Dataset/train/subject_train.txt"))$V1,
  Activity = (read.table("UCI HAR Dataset/train/y_train.txt"))$V1,
  read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$V2, stringsAsFactors = FALSE)
)

test_set <- data.frame(
  Subject = (read.table("UCI HAR Dataset/test/subject_test.txt"))$V1,
  Activity = (read.table("UCI HAR Dataset/test/y_test.txt"))$V1,
  read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$V2, stringsAsFactors = FALSE)
)


#combine the data sets and extract only the features we selected previously.
full_set <- 
  rbind(train_set, test_set) %>%
  select(one_of(c("Subject", "Activity", filtered_features$V2)))

rm(test_set, train_set)

activity_labels = read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)

tidy_set <- 
  full_set %>%
  mutate(Activity = factor(plyr::mapvalues(Activity, activity_labels$V1, activity_labels$V2))) %>%
  group_by(Subject, Activity) %>%
  summarise_each(c("mean")) 

write.table(tidy_set, file="tidy_set.txt", row.name = FALSE)