###### run_analysis.R implementing the following procedures:

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(plyr)

setwd("C:/Courses/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset")


###### 1: Merge the training and test sets to create one data set

x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# combine x_train and x_test
x_data <- rbind(x_train, x_test)

# combine y_train and y_test
y_data <- rbind(y_train, y_test)

# combine subject_train and subject_test
subject_data <- rbind(subject_train, subject_test)


###### 2: Extract only the measurements on the mean and standard deviation for each measurement

all <- read.table("features.txt")

# true column index related to mean() or std()
idx1 <- grep("-(mean|std)\\(\\)", all[, 2])

# extract ones with mean or standard deviation
x_data <- x_data[, idx1]

# update the column names
names(x_data) <- all[idx1, 2]


###### 3: Use descriptive activity names to name the activities in the data set

actName <- read.table("activity_labels.txt")

# replace activity values with correct activity names
y_data[, 1] <- actName[y_data[, 1], 2]

# update column name
names(y_data) <- "activity"


###### 4: Appropriately label the data set with descriptive variable names

# update column name
names(subject_data) <- "subject"


###### 5. From the data set in step 4, creates a second, independent tidy data set 
######    with the average of each variable for each activity and each subject.

# put x_data, y_data, and subject_data togehter
all <- cbind(x_data, y_data, subject_data)

# caculate averages of x_data for y_data (activity) and subject_data
endCol <- ncol(all)-2
averages <- ddply(all, .(subject, activity), function(x) colMeans(x[, 1:endCol]))

# wirte the average of each variable for each activity and each subject
write.table(averages, "tidy_averages.txt", row.name=FALSE)




