CODE BOOK
---------
---------


Purpose
-------

To describe data, variables, and tansformations to derive tidy dataset



Data Source
-----------

* Full description of data:
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
* Data to download:
	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


File Description (copied from README.txt)
-----------------------------------------

* README.txt

* features_info.txt: Shows information about the variables used on the feature vector

* features.txt: List of all features

* activity_labels.txt: Links the class labels with their activity name

* train/X_train.txt: Training set

* train/y_train.txt': Training labels

* test/X_test.txt': Test set

* test/y_test.txt': Test labels


Feature Information (Copied from features_info.txt)
---------------------------------------------------

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


Activity Labels
---------------

* 1: WALKING

* 2: WALKING_UPSTAIRS
* 
3: WALKING_DOWNSTAIRS
* 
4: SITTING

* 5: STANDING
* 
6: LAYING



Step by Step Summary of Data Manipulation
------------------------------------------

* x_train and x_test being x_data
* y_train and y_test being x_data
* subject_train and subject_test being subject_data 
* extract x_data with an indication of mean or standard deviation
* update the column names of x_data
* replace activity values with correct activity names
* update column name of subject_data
* caculate averages of x_data for y_data (activity) and subject_data
