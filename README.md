How the main script run_analysis.R works?
-----------------------------------------


### run_analysis.R implements the following 5 cleaning steps. It starts with a raw dataset, cleans it, and creates a tidy dataset, tidy_averages.txt


### 1. Merges the training and the test sets to create one data set.
##### x_train and x_test being x_data
##### y_train and y_test being x_data
##### subject_train and subject_test being subject_data 

### 2. Extract only the measurements on the mean and standard deviation for each measurement
##### extract x_data with an indication of mean or standard deviation
##### update the column names of x_data

### 3. Use descriptive activity names to name the activities in the data set
##### replace activity values with correct activity names

### 4. Appropriately label the data set with descriptive variable names
##### update column name of subject_data

### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
##### caculate averages of x_data for y_data (activity) and subject_data
##### wirte the average of each variable for each activity and each subject

### 6. Finally try source("run_analysis.R") to create a tidy output file called tidy_averages.txt