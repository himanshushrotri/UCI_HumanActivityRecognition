###########################################################################################
#   Title        - Getting & Cleaning Data - Course Project                               #
#   Author       - Himanshu Shrotri                                                       #
#   Date Created - Sun, 19 Apr 2015                                                       #
#   Purpose      - Reading "Human Activity Recognition using Smartphone" as raw data set  #
#                  and preparing a tidy data set by a 5 step process that can be used by  #
#                  later analysis.                                                        #
###########################################################################################

# Initialize Variables related to project working directory and related files
workingDir <- readline(prompt = "Enter Your Working Directory (Without Quotes): ")
projectDir <- getwd()
dataDir    <- "UCI HAR Dataset"
zipFileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# Check if working directory provided exists; if not set project directory to to current directory
if (workingDir == "" | !file.exists(workingDir)) {
        print(paste("Setting Up Default Directory: ",projectDir))
        setwd(projectDir)
} else {
        print(paste("Setting Up Input Directory: ",workingDir))
        setwd(workingDir)
}

# Check if UCI HAR Dataset directory exists, if not then download the file and create unzip file.
if (!file.exists(dataDir)) {
        print("Project data missing; downloading from source. Please Wait...")
        download.file(zipFileURL, destfile = "harFile.zip", method = "curl")
        unzip("harFile.zip", exdir = "./")
        #file.remove("HARfile.zip")
}

stopifnot(file.exists(dataDir))
setwd(dataDir)
print("Reading Files. Please Wait...")

# Read Activity Labels and Feature Names

temp <- read.table("activity_labels.txt", sep = "", col.names = c("activityID", "activityName"))
activityLabels <- temp$activityName

temp <- read.table("features.txt", sep = "", col.names = c("featureID", "featureName"))
featureNames <- temp$featureName

###########################################################################################
# Step 1 : Merges the training and the test sets to create one data set.                  #
###########################################################################################
print("Step 1 : Merging training and test data sets...")

# Step 1.1 : Prepare Training Data Set
xTrain <- read.table("train//X_train.txt", sep="")
names(xTrain) <- featureNames
trainSubjects <- read.table("train//subject_train.txt", sep="", col.names = c("Subject"))
yTrain <- read.table("train//y_train.txt", sep="", col.names=c("Activity"))
# Tidy Training Data
trainData <- cbind(xTrain,trainSubjects,yTrain)

# Step 1.2 : Prepare Test Data Set
xTest <- read.table("test//X_test.txt", sep="")
names(xTest) <- featureNames
testSubjects <- read.table("test/subject_test.txt", sep="", col.names = c("Subject"))
yTest <- read.table("test//y_test.txt", sep="", col.names=c("Activity"))
# Tidy Test Data
testData <- cbind(xTest,testSubjects,yTest)

# Step 1.3 : Merge Data Sets to create one
mData <- rbind(trainData, testData)

###########################################################################################
# Step 2 : Extracts only the measurements on the mean and standard deviation for each     #
#          measurement.                                                                   #
###########################################################################################
print("Step 2 : Extracting required measurements...")

filAttributeNames <- as.character(featureNames[grepl("mean\\(\\)|std\\(\\)",featureNames)])
filAttributeNames <- c(filAttributeNames, "Subject", "Activity")
filData <- mData[,filAttributeNames]

###########################################################################################
# Step 3 : Uses descriptive activity names to name the activities in the data set         #
###########################################################################################
print("Step 3 : Using descriptive activity names...")

filData$Activity <- as.factor(filData$Activity)
levels(filData$Activity) <- activityLabels

###########################################################################################
# Step 4 : Appropriately labels the data set with descriptive variable names.             #
###########################################################################################
print("Step 4 : Changing raw names to descriptive variable names...")

# Making the names human readable
descAttributeNames <- gsub("tBody", "time-body", filAttributeNames)
descAttributeNames <- gsub("fBody", "freq-body", descAttributeNames)
descAttributeNames <- gsub("Acc", "-acceleration", descAttributeNames)
descAttributeNames <- gsub("Jerk", "-jerk", descAttributeNames)
descAttributeNames <- gsub("\\(|\\)", "", descAttributeNames)
descAttributeNames <- gsub("Gyro", "-gyro", descAttributeNames)
descAttributeNames <- gsub("Mag", "-magnitude", descAttributeNames)
descAttributeNames <- gsub("tGravity", "time-gravity", descAttributeNames)
descAttributeNames <- gsub("bodyBody", "body", descAttributeNames)
descAttributeNames <- tolower(descAttributeNames)

names(filData) <- descAttributeNames

###########################################################################################
# Step 5 : From the data set in step 4, creates a second, independent tidy data set with  #
#          the average of each variable for each activity and each subject.               #
###########################################################################################
print("Step 5 : Creating tidy data set with summary data...")

# This piece requires dplyr package. Installing if not available else loading
if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")};library(dplyr)
tidyData <- filData %>% group_by(subject, activity) %>% summarise_each(funs(mean))

###########################################################################################
# Save the data sets for future use                                                       #
###########################################################################################
print("Saving the work and exiting...")

# Reset directory to original
setwd(projectDir)

# Save the files as .RData
write.table(tidyData, file="tidyData.txt", row.names=FALSE)

# Clean all environment variables
rm(list=ls())

# End of Script