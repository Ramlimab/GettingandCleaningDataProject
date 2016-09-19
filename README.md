# Getting and Cleaning Data Course Assignment

#Overview
This is my submission for the Coursera Data Science Course. The purpose of this project is to demonstrate the ability to read in a raw dataset combine and manipulate the dataset into a tidy dataset as well as perform a short summary analysis on it.

#Summary of dataset 
The dataset used in this study is obtained from a rawdata set obtained from accelerometers from a Samsung Galaxy smartphone.  The data was collected on 30 different participants performing 6 distinct tasks.  For a full description of the dataset, you may visit the original website: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Description of R script
The attached R script file run_analsis.R does the following as per the instructions on the course webpage:

1. Downloads the raw dataset from the url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Reads in the main files required in the analysis, namely:
  1. activity_labels.txt - labels the 6 activities conducted by the participant susing an integer index from 1-6
  2. features.txt - labels the 561 distinct features obtained from both raw and processed data obtained from the smartphone 
  3. X_train.txt and X_test.txt - which provides the actual raw values of data- row represent a specific person conducting a specific activity, while the 561 columns represent the features extracted
  4. y_train.txt and y_test.txt - provides the activity labels associated with each row found in xtrain and xtest respectively
  5. subject_test.txt and subject_train.txt - Indicates which of the 30 subjects performed the activities for each row in X-train and X_test
3. The relevant training and test datasets are combined into a single master dataset
4. Filter out only features which record the mean or standard deviation measurements into a new dataset
5. Aggregates the dataset for each participant and activity and calculates the average measurement for each combination

#Final output
The final dataset average_dataset.csv is provided in this repo together with the R script file and the codebook for it.
