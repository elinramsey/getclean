---
title: "CodeBook"
output: html_document
---
##Data Input
The input data contained the following, split into training and testing sets:

1. Numeric measurements for various activities done by 1 of 30 subjects various times
2. A file with an index for each activity
3. A file with an index for each subject

Also provided were labels for each measurement and activity.

See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for more information on the source of the input data.

##Data Processing

For each of the training and test data sets the following were performed:

1. Combinde the measurements, activity index, and subjects into one data frame
2. Name the measurements according to the labels provided
3. Subset the data frame to only include measurements with "mean()" or "std()"

The test and train data sets were then combined and activity labels added.
The final step was to take the mean of all measurements, grouped by activity label and subject id.


##Data Dictionary

###Two Categorical Fields
1. Activity_Label : A plain text label of 6 possible activites
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTING
    - STANDING
    - LAYING
2. Subject_ID : A numeric ID ranging from 1 to 30 for each distinct subject.

###79 Measurements
Each measurement takes the mean of an input measurement. As the input measurements were normalized prior to this processing, they have no meaningful units.

1.  tBodyAcc-mean()-X
2.	tBodyAcc-mean()-Y
3.	tBodyAcc-mean()-Z
4.	tBodyAcc-std()-X
5.	tBodyAcc-std()-Y
6.	tBodyAcc-std()-Z
7.	tGravityAcc-mean()-X
8.	tGravityAcc-mean()-Y
9.	tGravityAcc-mean()-Z
10.	tGravityAcc-std()-X
11.	tGravityAcc-std()-Y
12.	tGravityAcc-std()-Z
13.	tBodyAccJerk-mean()-X
14.	tBodyAccJerk-mean()-Y
15.	tBodyAccJerk-mean()-Z
16.	tBodyAccJerk-std()-X
17.	tBodyAccJerk-std()-Y
18.	tBodyAccJerk-std()-Z
19.	tBodyGyro-mean()-X
20.	tBodyGyro-mean()-Y
21.	tBodyGyro-mean()-Z
22.	tBodyGyro-std()-X
23.	tBodyGyro-std()-Y
24.	tBodyGyro-std()-Z
25.	tBodyGyroJerk-mean()-X
26.	tBodyGyroJerk-mean()-Y
27.	tBodyGyroJerk-mean()-Z
28.	tBodyGyroJerk-std()-X
29.	tBodyGyroJerk-std()-Y
30.	tBodyGyroJerk-std()-Z
31.	tBodyAccMag-mean()
32.	tBodyAccMag-std()
33.	tGravityAccMag-mean()
34.	tGravityAccMag-std()
35.	tBodyAccJerkMag-mean()
36.	tBodyAccJerkMag-std()
37.	tBodyGyroMag-mean()
38.	tBodyGyroMag-std()
39.	tBodyGyroJerkMag-mean()
40.	tBodyGyroJerkMag-std()
41.	fBodyAcc-mean()-X
42.	fBodyAcc-mean()-Y
43.	fBodyAcc-mean()-Z
44.	fBodyAcc-std()-X
45.	fBodyAcc-std()-Y
46.	fBodyAcc-std()-Z
47.	fBodyAcc-meanFreq()-X
48.	fBodyAcc-meanFreq()-Y
49.	fBodyAcc-meanFreq()-Z
50.	fBodyAccJerk-mean()-X
51.	fBodyAccJerk-mean()-Y
52.	fBodyAccJerk-mean()-Z
53.	fBodyAccJerk-std()-X
54.	fBodyAccJerk-std()-Y
55.	fBodyAccJerk-std()-Z
56.	fBodyAccJerk-meanFreq()-X
57.	fBodyAccJerk-meanFreq()-Y
58.	fBodyAccJerk-meanFreq()-Z
59.	fBodyGyro-mean()-X
60.	fBodyGyro-mean()-Y
61.	fBodyGyro-mean()-Z
62.	fBodyGyro-std()-X
63.	fBodyGyro-std()-Y
64.	fBodyGyro-std()-Z
65.	fBodyGyro-meanFreq()-X
66.	fBodyGyro-meanFreq()-Y
67.	fBodyGyro-meanFreq()-Z
68.	fBodyAccMag-mean()
69.	fBodyAccMag-std()
70.	fBodyAccMag-meanFreq()
71.	fBodyBodyAccJerkMag-mean()
72.	fBodyBodyAccJerkMag-std()
73.	fBodyBodyAccJerkMag-meanFreq()
74.	fBodyBodyGyroMag-mean()
75.	fBodyBodyGyroMag-std()
76.	fBodyBodyGyroMag-meanFreq()
77.	fBodyBodyGyroJerkMag-mean()
78.	fBodyBodyGyroJerkMag-std()
79.	fBodyBodyGyroJerkMag-meanFreq()

