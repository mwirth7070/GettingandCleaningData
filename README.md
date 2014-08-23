GettingandCleaningData
======================

Course Project

The file run_analysis.R gives has plenty of detailed comments as to what each line of code does, so if you'd like a more thorough explanation, please open the file and take a look.  In general though, what this program does is take the raw data and filters them to include just the measurements of mean and standard deviation calculations.  It then aggregates and averages them for each particular subject (1-30) and activity (there are six in total) and exports this to a txt file.

From the source data site (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#):

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
