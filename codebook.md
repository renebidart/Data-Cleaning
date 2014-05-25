#Codebook

##Initial Data Details(copied from source)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:


- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##Final Variables

>Only variables that were related to standard deviation or means were included in the final file. The variable names were also changed from the initial data by omitting all: (), - and changing everything  to lowercase. The means for all these variables were calculated by subject and activity, which is what is included in the final data set. 

Each variable is in the format:(f/t),(body/gravity),(gyro/gyromag/gyrojerkmag/acc/accmag/accjerkmag),(mean/std),(x/y/z).
e.g.:tgravityaccmeanz

With the parts meaning:
(f/t)- Either time or frequency

(gyro/gyromag/gyrojerkmag/acc/accmag/accjerkmag)-what data is being used-(acceleration, jerk, also speperated into portions from gravity and the body)

(mean/std)-Either a mean or standard dvxiation measurement

(x/y/z)- The direction of the motion

