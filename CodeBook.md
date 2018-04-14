
# CodeBook for Tidy Human Activity Recognition Using Smartphones Dataset

### This Codebook is a modified version of the original dataset README.txt that was provided with the original data. Some of the more technical collection details and descriptions provided for the features were directly copied over from the original. This data can be downloaded from this the link below
[UCI_HAR_DATA](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


### Field  : Summary
------
** Subject ** : set of numbers from 1-30, each representing a volunteer from the study. Volunteers ranged in age from 19-48 years. Each performed 6 activities (walking, walking upstairs, walking downstairs, sitting, standing and laying) while wearing a Samsung Galaxy S2
on their waist.

------
** activity ** : Physical activities that volunteers performed
 - walking
 - walkingUpstairs
 - walkingDownstairs
 - sitting
 - standing 
 - laying
------
 ** signal ** : signals obtained from the accelerometer and the gyroscope sensors. They are
 pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).
 
 The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc and tGyro. These time domain signals (prefix 
't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a 
corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc and tG
ravityAcc) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk and tBodyGyroJerk). Also the m
agnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkM
ag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc, fBodyAccJerk, fBodyGyro, fBodyAccJerkMag, fBodyGyroM
ag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

  - fBodyAcc
  - fBodyAccJerk
  - fBodyAccMag
  - fBodyBodyAccJerkMag
  - fBodyBodyGyroJerkMag
  - fBodyBodyGyroMag
  - fBodyGyro
  - tBodyAcc
  - tBodyAccJerk
  - tBodyAccJerkMag
  - tBodyAccMag
  - tBodyGyro
  - tBodyGyroJerk
  - tBodyGyroJerkMag
  - tBodyGyroMag
  - tGravityAcc
  - tGravityAccMag
  
  ------
  ** statistics ** : Standard statistical measurement features are below. mean is the average and std represents the standard deviation. X,Y,Z are the 3-axial components that represent directions in X, Y, or Z. All values were normalized in the original data to span [-1,1].
  
------

** mean ** : Mean value. Pertains to signals that measured magnitude i.e., (fBodyAccMag,tBodyGyroMag)

------

** meanX ** : Mean value in the X-direction

------

** meanY ** : Mean value in the Y-direction
 
------

** meanZ ** : Mean value in the Z-direction

------

** std ** : Standard deviation. Pertians to the same signals as mean above. (Mag signals)

------

** stdX ** : Standard deviation in the X-direction

------

** stdY ** : Standard deviation in the Y-direction

------

** stdZ ** : Standard deviation in the Z-direction

------
  
