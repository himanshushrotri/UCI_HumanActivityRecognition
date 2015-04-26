# Human Activity Recognition Using Smartphones Dataset & Processing

This repository contains the script to process raw data set provided by University of California Irvine (UCI). 

## Background

The dataset is prepared by ICU for Human Activity Recognition (HAR) using Samsung Galaxy S II smartphones. Click this link to get further details of the experiment:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 


## Purpose

This script was prepared for the course project on "Getting and Cleaning Data" course in Coursera which is part of the "Data Science" specialization track.

## Project Requirements

Create a R script that does the following

(a) Merges the training and the test sets to create one data set.
(b) Extracts only the measurements on the mean and standard deviation for each measurement.
(c) Uses descriptive activity names to name the activities in the data set
(d) Appropriately labels the data set with descriptive variable names.
(e) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Implementation Details in R

The R code that is used for analysis is available in the `run_analysis.R` file.

## Using the Script

The script processes the raw data, applies all the rules and creates "tidyData.txt" file in your working directory. Here are the steps to use the script.

(a) Source the R in console using below command:

```R
    source("run_analysis.R")
```
(b) Read created data file in R using below command:
```R
    tidyData <- data.table("tidyData.txt")
```
