==================================================================
The data was originally a Human Activity Recognition Using Smartphones Dataset, distributed in several files.

The tidy.data is a dataset that is a result of several data manipulation in order to provide a useful, easy to understand and tidy dataset.

The description of the original dataset is as follows:
==================================================================

Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

====================================================================

To achieve the tidy.data file, the following steps were taken:
====================================================================

* Both training and testing datasets were read and merged into a single file.
* Only the variables related with the mean and standard deviation of the measurements were kept. The list of these variables and their descriptions can be found in the Codebook.md included in this repository.
* The file with the activities peformed by the participants was also included in the same dataset and labeled accordingly.
* The identification of the participants (subjects) was also included in the dataset.
* The resulting data was grouped by subject and activity to facilitate the visualization of the data.
* The tidy_data is file containing the resulting data after these steps were taken.
* All the detailed description of the code used to peform the steps mentioned above are found in the run_analysis.R file.
