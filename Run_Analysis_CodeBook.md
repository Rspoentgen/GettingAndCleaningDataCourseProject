
Human Activity Recognition Using Smartphones - Final Tidy Dataset
Version 2.0
Remy Spoentgen


Originally:
Human Activity Recognition Using Smartphones Modified Datasets
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

==================================================================

Data Set Background 		(*taken from authors' initial description)


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
 Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 
 The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used.
 From each window, a vector of features was obtained by calculating variables from the time and frequency domain.



==================================================================
Modifications:

The subjects, activities, and metric variables files were merged together for training and test data separately, and the resulting two files were appended together.
Only a subset of the metric variables dealing with mean and standard deviation (std) were kept (66 metrics). Additionally, one variable was created designated whether a subject was in the training or test groups.
In the end, the data contains 69 columns (subject number, activity name, training/test group, and the 66 metric variables).  Lastly, all metrics were averaged by subject/activity, resulting in a tidy dataset 
where each metric variable value represents the mean measurement for that group. 

The list below provides the final modified, more descriptive variable names and the initial names. 
It should be noted that all the final variables represent the mean of the variables, averaged across different subject/activity groups.
 


Final Variables									Initial Variables

                                 
timesignalbodyaccelerationmeanxaxis 			tBodyAcc-mean()-X
timesignalbodyaccelerationmeanyaxis            	tBodyAcc-mean()-Y
timesignalbodyaccelerationmeanzaxis           	tBodyAcc-mean()-Z
timesignalbodyaccelerationstdxaxis             	tBodyAcc-std()-X
timesignalbodyaccelerationstdyaxis            	tBodyAcc-std()-Y
timesignalbodyaccelerationstdzaxis             	tBodyAcc-std()-Z
timesignalgravityaccelerationmeanxaxis        	tGravityAcc-mean()-X
timesignalgravityaccelerationmeanyaxis         	tGravityAcc-mean()-Y
timesignalgravityaccelerationmeanzaxis        	tGravityAcc-mean()-Z
timesignalgravityaccelerationstdxaxis          	tGravityAcc-std()-X
timesignalgravityaccelerationstdyaxis         	tGravityAcc-std()-Y
timesignalgravityaccelerationstdzaxis          	tGravityAcc-std()-Z
timesignalbodyaccelerationjerkmeanxaxis       	tBodyAccJerk-mean()-X
timesignalbodyaccelerationjerkmeanyaxis        	tBodyAccJerk-mean()-Y
timesignalbodyaccelerationjerkmeanzaxis       	tBodyAccJerk-mean()-Z
timesignalbodyaccelerationjerkstdxaxis        	tBodyAccJerk-std()-X
timesignalbodyaccelerationjerkstdyaxis        	tBodyAccJerk-std()-Y
timesignalbodyaccelerationjerkstdzaxis        	tBodyAccJerk-std()-Z
timesignalbodygyromeanxaxis                   	tBodyGyro-mean()-X
timesignalbodygyromeanyaxis                    	tBodyGyro-mean()-Y
timesignalbodygyromeanzaxis                   	tBodyGyro-mean()-Z
timesignalbodygyrostdxaxis                     	tBodyGyro-std()-X
timesignalbodygyrostdyaxis                    	tBodyGyro-std()-Y
timesignalbodygyrostdzaxis                     	tBodyGyro-std()-Z
timesignalbodygyrojerkmeanxaxis               	tBodyGyroJerk-mean()-X
timesignalbodygyrojerkmeanyaxis                	tBodyGyroJerk-mean()-Y
timesignalbodygyrojerkmeanzaxis               	tBodyGyroJerk-mean()-Z
timesignalbodygyrojerkstdxaxis                	tBodyGyroJerk-std()-X
timesignalbodygyrojerkstdyaxis                	tBodyGyroJerk-std()-Y
timesignalbodygyrojerkstdzaxis                 	tBodyGyroJerk-std()-Z
timesignalbodyaccelerationmagnitudemean       	tBodyAccMag-mean()
timesignalbodyaccelerationmagnitudestd         	tBodyAccMag-mean()
timesignalgravityaccelerationmagnitudemean    	tBodyAccMag-mean()
timesignalgravityaccelerationmagnitudestd      	tBodyAccMag-std()
timesignalbodyaccelerationjerkmagnitudemean   	tBodyAccMag-std()
timesignalbodyaccelerationjerkmagnitudestd     	tBodyAccMag-std()
timesignalbodygyromagnitudemean               	tBodyGyroMag-mean()
timesignalbodygyromagnitudestd                 	tBodyGyroMag-std()
timesignalbodygyrojerkmagnitudemean           	tBodyGyroJerkMag-mean()
timesignalbodygyrojerkmagnitudestd             	tBodyGyroJerkMag-std()
fouriersignalbodyaccelerationmeanxaxis        	fBodyAcc-mean()-X
fouriersignalbodyaccelerationmeanyaxis         	fBodyAcc-mean()-Y
fouriersignalbodyaccelerationmeanzaxis        	fBodyAcc-mean()-Z
fouriersignalbodyaccelerationstdxaxis          	fBodyAcc-std()-X
fouriersignalbodyaccelerationstdyaxis         	fBodyAcc-std()-Y
fouriersignalbodyaccelerationstdzaxis          	fBodyAcc-std()-Z
fouriersignalbodyaccelerationjerkmeanxaxis    	fBodyAccJerk-mean()-X
fouriersignalbodyaccelerationjerkmeanyaxis     	fBodyAccJerk-mean()-Y
fouriersignalbodyaccelerationjerkmeanzaxis    	fBodyAccJerk-mean()-Z
fouriersignalbodyaccelerationjerkstdxaxis      	fBodyAccJerk-std()-X
fouriersignalbodyaccelerationjerkstdyaxis     	fBodyAccJerk-std()-Y
fouriersignalbodyaccelerationjerkstdzaxis      	fBodyAccJerk-std()-Z
fouriersignalbodygyromeanxaxis                	fBodyGyro-mean()-X
fouriersignalbodygyromeanyaxis                 	fBodyGyro-mean()-Y
fouriersignalbodygyromeanzaxis                	fBodyGyro-mean()-Z
fouriersignalbodygyrostdxaxis                  	fBodyGyro-std()-X
fouriersignalbodygyrostdyaxis                 	fBodyGyro-std()-Y
fouriersignalbodygyrostdzaxis                  	fBodyGyro-std()-Z
fouriersignalbodyaccelerationmagnitudemean    	fBodyAccMag-mean()
fouriersignalbodyaccelerationmagnitudestd     	fBodyAccMag-mean()
fouriersignalbodyaccelerationjerkmagnitudemean	fBodyAccMag-mean()
fouriersignalbodyaccelerationjerkmagnitudestd  	fBodyAccMag-std()
fouriersignalbodygyromagnitudemean            	fBodyAccMag-std()
fouriersignalbodygyromagnitudestd              	fBodyAccMag-std()
fouriersignalbodygyrojerkmagnitudemean        	fBodyGyroJerkMag-mean()
fouriersignalbodygyrojerkmagnitudestd  			fBodyGyroJerkMag-std()
		



Additionally, three other variables are included in the dataset:

subject - id for individual in experiment 

Final Variable		Initial Variable 
1-30				1-30

activity - activity type that was tested 

Final Variable		Initial Variable
walkingnormal		1
walkingupstairs		2
walkingdownstairs	3
sitting				4
standing			5
laying				6


trainingortestdata - indicator for if subject was part of the training or test experiment groups

Final Variable		Initial Variable

training			N/A (indicated by file type)
test				N/A (indicated by file type)



  



