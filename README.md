# CleaningDataProject
Course project for cleaning data coursera class


The file run_Analysis.R assumes the user has downloaded the following data set into the working directory:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The dataset is data experiment data from an accelerameter gathered from various test subjects performing various activities. From the dataset's readme.txt file:

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- 

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------


The script in this repository (1) loads both the test and train datasets, (2) merges them together, (3) isolates only the the standard deviation and mean variables, (4) cleans up the labels, and then (5) summarizes (takes the mean) all of the variables by subject and activity.

Variables:

activityname - name of activity that was being performed by subject when data was collected
  Possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject - ID corresponding to subject who data was collected from, ranges from 1 to 30


The rest of the variables are averages of various measurements taken by an individual subject performing an activity.  From the features_info.txt file provided with the data:
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

"tbodyaccelerationmeanx"                    
"tbodyaccelerationmeany"                   
"tbodyaccelerationmeanz"                    
"tgravityaccelerationmeanx"                
"tgravityaccelerationmeany"                 
"tgravityaccelerationmeanz"                
"tbodyaccelerationjerkmeanx"                
"tbodyaccelerationjerkmeany"               
"tbodyaccelerationjerkmeanz"                
"tbodygyromeanx"                           
"tbodygyromeany"                            
"tbodygyromeanz"                           
"tbodygyrojerkmeanx"                        
"tbodygyrojerkmeany"                       
"tbodygyrojerkmeanz"                        
"tbodyaccelerationmagmean"                 
"tgravityaccelerationmagmean"               
"tbodyaccelerationjerkmagmean"             
"tbodygyromagmean"                          
"tbodygyrojerkmagmean"                     
"fbodyaccelerationmeanx"                    
"fbodyaccelerationmeany"                   
"fbodyaccelerationmeanz"                    
"fbodyaccelerationjerkmeanx"               
"fbodyaccelerationjerkmeany"                
"fbodyaccelerationjerkmeanz"               
"fbodygyromeanx"                            
"fbodygyromeany"                           
"fbodygyromeanz"                            
"fbodyaccelerationmagmean"                 
"fbodyaccelerationjerkmagmean"              
"fbodygyromagmean"                         
"fbodygyrojerkmagmean"                      
"tbodyaccelerationstandarddeviationx"      
"tbodyaccelerationstandarddeviationy"       
"tbodyaccelerationstandarddeviationz"      
"tgravityaccelerationstandarddeviationx"    
"tgravityaccelerationstandarddeviationy"   
"tgravityaccelerationstandarddeviationz"    
"tbodyaccelerationjerkstandarddeviationx"  
"tbodyaccelerationjerkstandarddeviationy"   
"tbodyaccelerationjerkstandarddeviationz"  
"tbodygyrostandarddeviationx"               
"tbodygyrostandarddeviationy"              
"tbodygyrostandarddeviationz"               
"tbodygyrojerkstandarddeviationx"          
"tbodygyrojerkstandarddeviationy"           
"tbodygyrojerkstandarddeviationz"          
"tbodyaccelerationmagstandarddeviation"     
"tgravityaccelerationmagstandarddeviation" 
"tbodyaccelerationjerkmagstandarddeviation" 
"tbodygyromagstandarddeviation"            
"tbodygyrojerkmagstandarddeviation"         
"fbodyaccelerationstandarddeviationx"      
"fbodyaccelerationstandarddeviationy"       
"fbodyaccelerationstandarddeviationz"      
"fbodyaccelerationjerkstandarddeviationx"   
"fbodyaccelerationjerkstandarddeviationy"  
"fbodyaccelerationjerkstandarddeviationz"   
"fbodygyrostandarddeviationx"              
"fbodygyrostandarddeviationy"               
"fbodygyrostandarddeviationz"              
"fbodyaccelerationmagstandarddeviation"     
"fbodyaccelerationjerkmagstandarddeviation"
"fbodygyromagstandarddeviation"             
"fbodygyrojerkmagstandarddeviation"   

