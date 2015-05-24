---
title: "ReadMe"
output: html_document
---

There is 1 script, CleanData.R, that performs all the transformations.

For each of the training and test data sets the following were performed:

1. Combinde the measurements, activity index, and subjects into one data frame
2. Name the measurements according to the labels provided
3. Subset the data frame to only include measurements with "mean()" or "std()"

The test and train data sets were then combined and activity labels added.
The final step was to take the mean of all measurements, grouped by activity label and subject id.

See http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones for more information on the source of the input data.