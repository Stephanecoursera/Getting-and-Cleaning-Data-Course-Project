# Getting-and-Cleaning-Data-Course-Project
files to answer the Getting and Cleaning Data Course
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version SBO
==================================================================
SBO
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md': description of the data and variables

- 'run_analysis.R': Script that collect, work with, and clean a data set to prepar a tidy dataset

- 'X_train.txt' : Training set

- 'y_train.txt' : Training labels

- 'X_test.txt' : Test set

- 'y_test.txt' : Test labels

- 'features.txt': List of all features.

- 'tidy_features.txt' : List of the features selected for the tidy datset

- 'activity_labels.txt' : Links the class labels with their activity name.
lent. 

- 'train/subject_train.txt' and 'test/subject_test.txt': Their descriptions are equivalent. Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'tidy_dataset.txt' : the tidy dataset output of the script run_analysis.R.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws
