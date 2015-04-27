CodeBook - UCI Human Activity Recognition: Tidy Dataset
=======================================================

## What is it?

This CodeBook presents all the metadata related to output of the `run_analysis.R` script present in this repository. 

Read the tidy data set in R as below:
```R
tidyData <- data.table("tidyData.txt")
```

The script `run_analysis.R` creates a tidy data set using raw data provided by  University of California Irvine's (UCI) dataset for Human Activity Recognition (HAR) using Samsung Galaxy S II smartphones that can be used for further research and analysis. Click this link to get further details of the experiment http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The script presented here first merges training and test data provided and extracts only variables related to mean and standard deviation features for each of the 33 processed signals. Here are list of transformations done to the data to derive tidy data set:

(a) Merge Test and Training Data Sets
(b) Subset the data to extract mean and std features for each 33 processed signals (66 features in total)
(c) Append "subject" and "activity" columns, thus having 68 columns
(d) Summerize data (find means of all the features) grouping by "subject" and "activity"
(e) Summarized (tidy) data contains 180 observations (for 30 subjects and 6 activities)

## Description of the variables in tidy data set

For each row in the Tidy Dataset, the following 68 columns are provided:
(01) subject
(02) activity
(03) time-body-acceleration-mean-x
(04) time-body-acceleration-mean-y
(05) time-body-acceleration-mean-z
(06) time-body-acceleration-std-x
time-body-acceleration-std-y
time-body-acceleration-std-z
time-gravity-acceleration-mean-x
time-gravity-acceleration-mean-y
time-gravity-acceleration-mean-z
time-gravity-acceleration-std-x
time-gravity-acceleration-std-y
time-gravity-acceleration-std-z
time-body-acceleration-jerk-mean-x
time-body-acceleration-jerk-mean-y
time-body-acceleration-jerk-mean-z
time-body-acceleration-jerk-std-x
time-body-acceleration-jerk-std-y
time-body-acceleration-jerk-std-z
time-body-gyro-mean-x
time-body-gyro-mean-y
time-body-gyro-mean-z
time-body-gyro-std-x
time-body-gyro-std-y
time-body-gyro-std-z
time-body-gyro-jerk-mean-x
time-body-gyro-jerk-mean-y
time-body-gyro-jerk-mean-z
time-body-gyro-jerk-std-x
time-body-gyro-jerk-std-y
time-body-gyro-jerk-std-z
time-body-acceleration-magnitude-mean
time-body-acceleration-magnitude-std
time-gravity-acceleration-magnitude-mean
time-gravity-acceleration-magnitude-std
time-body-acceleration-jerk-magnitude-mean
time-body-acceleration-jerk-magnitude-std
time-body-gyro-magnitude-mean
time-body-gyro-magnitude-std
time-body-gyro-jerk-magnitude-mean
time-body-gyro-jerk-magnitude-std
freq-body-acceleration-mean-x
freq-body-acceleration-mean-y
freq-body-acceleration-mean-z
freq-body-acceleration-std-x
freq-body-acceleration-std-y
freq-body-acceleration-std-z
freq-body-acceleration-jerk-mean-x
freq-body-acceleration-jerk-mean-y
freq-body-acceleration-jerk-mean-z
freq-body-acceleration-jerk-std-x
freq-body-acceleration-jerk-std-y
freq-body-acceleration-jerk-std-z
freq-body-gyro-mean-x
freq-body-gyro-mean-y
freq-body-gyro-mean-z
freq-body-gyro-std-x
freq-body-gyro-std-y
freq-body-gyro-std-z
freq-body-acceleration-magnitude-mean
freq-body-acceleration-magnitude-std
freq-body-acceleration-jerk-magnitude-mean
freq-body-acceleration-jerk-magnitude-std
freq-body-gyro-magnitude-mean
freq-body-gyro-magnitude-std
freq-body-gyro-jerk-magnitude-mean
freq-body-gyro-jerk-magnitude-std


### Subjects Values

Experiments are carried out on 30 subjects, each having unique ID staring 1 to 30. 

### Activity Values

The activity name with the following possible values.
- WALKING
- WALKING_DOWNSTAIRS
- WALKING_UPSTAIRS
- LAYING
- SITTING
- STANDING

