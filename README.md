---
title: "README"
author: "Steve Z"
date: "May 22, 2019"
output: word_document
---

## Getting-and-Cleaning-Data-Week-4-Assignment

This repository containst the submission for the assignment for week 4 of Getting and Cleaning Data Coursera course.
  .First, download and unzip the data file into your R working directory.
  .Second, download the R source code into your R working directory.
  .Finally, execute R source code to generate tidy data file.

# Data description

The variables in the data X are sensor signals measured with waist-mounted smartphone from 30 subjects. The variable in the data Y indicates activity type the subjects performed during recording.

# Code explaination

The code accomplishes the following
    Merges the training and the test sets to create one data set.
    Extracts only the measurements on the mean and standard deviation for each measurement.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names.
    creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# New dataset

The new dataset consists of variables calculated based on the mean and standard deviation. 
Each row of the dataset is an average of each activity type for all subjects.

