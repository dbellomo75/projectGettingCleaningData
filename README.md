projectGettingCleaningData
==========================

This repository contain the following files:
run_analysis.R
tidyData.txt
The file run_analysis.R read the files (they have to be present in the same directory):
* X_train.txt
* X_test.txt
* subject_train.txt
* subject_test.txt
* y_train.txt
* y_test.txt
* activity_labels.txt
* features.txt

and generates a file tidyData.txt with the average values of the 79 variables with a mean and standard deviation measurement. The data are conditioned on the 30 subjects and on the 6 activities.

