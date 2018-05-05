The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

These signals were used to estimate variables of the feature vector for each pattern:  

# Data: 

**mytidydata.txt** - *180 observations & 81 variables*

- Features are normalized and bounded within [-1,1].
- Each row on the text file is the average of the feature/metric for a subject & activity

# Variables:

**Acitivty**: *6 Possible Values identifying the activity*
- WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING


**Subject**: *30 Possible values indicating the volunteer*
- Integers 1 to 30

## Feature Variables - Split to Time & Frequency Domain
`Note: XYZ is used to denote 3-axial signals in the X, Y and Z directions`

### Time Domain  

`Mean and Standard Deviation of Body, & Gravity Acceleration`  
**timeBodyAccelerometerMeanX**  
**timeBodyAccelerometerMeanY**  
**timeBodyAccelerometerMeanZ**  
**timeBodyAccelerometerStandardDeviationX**  
**timeBodyAccelerometerStandardDeviationY**    
**timeBodyAccelerometerStandardDeviationZ**    
**timeGravityAccelerometerMeanX**  
**timeGravityAccelerometerMeanY**  
**timeGravityAccelerometerMeanZ**  
**timeGravityAccelerometerStandardDeviationX**  
**timeGravityAccelerometerStandardDeviationY**  
**timeGravityAccelerometerStandardDeviationZ**  

`Mean and Standard Deviation of Jerk - Body linear acceleration derived in time to obtain Jerk signals`
**timeBodyAccelerometerJerkMeanX**  
**timeBodyAccelerometerJerkMeanY**  
**timeBodyAccelerometerJerkMeanZ**  
**timeBodyAccelerometerJerkStandardDeviationX**  
**timeBodyAccelerometerJerkStandardDeviationY**  
**timeBodyAccelerometerJerkStandardDeviationZ**  


`Mean and Standard Deviation of Angular Velocity`  
**timeBodyGyroscopeMeanX**  
**timeBodyGyroscopeMeanY**  
**timeBodyGyroscopeMeanZ**  
**timeBodyGyroscopeStandardDeviationX**  
**timeBodyGyroscopeStandardDeviationY**  
**timeBodyGyroscopeStandardDeviationZ**  

`Mean and Standard Deviation of Jerk - Angular Velocity derived in time to obtain Jerk signals`
**timeBodyGyroscopeJerkMeanX**  
**timeBodyGyroscopeJerkMeanY**  
**timeBodyGyroscopeJerkMeanZ**  
**timeBodyGyroscopeJerkStandardDeviationX**  
**timeBodyGyroscopeJerkStandardDeviationY**  
**timeBodyGyroscopeJerkStandardDeviationZ**  


`Mean of Magnitude of Body Acceleration, Gravity Acceleration, Body Acceleration Jerk, Body Angular Velocity, and Body Angular Velocity Jerk`  
**timeBodyAccelerometerMagnitudeMean**  
**timeGravityAccelerometerMagnitudeMean**  
**timeBodyAccelerometerJerkMagnitudeMean**  
**timeBodyGyroscopeMagnitudeMean**  
**timeBodyGyroscopeJerkMagnitudeMean**  

`Standard Deviation of Magnitude of Body Acceleration, Gravity Acceleration, Body Acceleration Jerk, Body Angular Velocity, and Body Angular Velocity Jerk`  
**timeBodyAccelerometerMagnitudeStandardDeviation**  
**timeGravityAccelerometerMagnitudeStandardDeviation**  
**timeBodyAccelerometerJerkMagnitudeStandardDeviation**  
**timeBodyGyroscopeMagnitudeStandardDeviation**  
**timeBodyGyroscopeJerkMagnitudeStandardDeviation**  

### Frequency Domain


`Mean, Standard Deviation, and Average Frequency of Body Acceleration`
**frequencydomainBodyAccelerometerMeanX**  
**frequencydomainBodyAccelerometerMeanY**  
**frequencydomainBodyAccelerometerMeanZ**  
**frequencydomainBodyAccelerometerStandardDeviationX**  
**frequencydomainBodyAccelerometerStandardDeviationY**  
**frequencydomainBodyAccelerometerStandardDeviationZ**  
**frequencydomainBodyAccelerometerMeanFrequencyX**  
**frequencydomainBodyAccelerometerMeanFrequencyY**  
**frequencydomainBodyAccelerometerMeanFrequencyZ**  



`Mean, Standard Deviation, and Average Frequency of Jerk - Body linear acceleration derived in time to obtain Jerk signals`  
**frequencydomainBodyAccelerometerJerkMeanX**  
**frequencydomainBodyAccelerometerJerkMeanY**  
**frequencydomainBodyAccelerometerJerkMeanZ**  
**frequencydomainBodyAccelerometerJerkStandardDeviationX**  
**frequencydomainBodyAccelerometerJerkStandardDeviationY**  
**frequencydomainBodyAccelerometerJerkStandardDeviationZ**  
**frequencydomainBodyAccelerometerJerkMeanFrequencyX**  
**frequencydomainBodyAccelerometerJerkMeanFrequencyY**  
**frequencydomainBodyAccelerometerJerkMeanFrequencyZ**  



`Mean, Standard Deviation, and Average Frequency of Angular Velocity`  
**frequencydomainBodyGyroscopeMeanX**  
**frequencydomainBodyGyroscopeMeanY**  
**frequencydomainBodyGyroscopeMeanZ**  
**frequencydomainBodyGyroscopeStandardDeviationX**  
**frequencydomainBodyGyroscopeStandardDeviationY**  
**frequencydomainBodyGyroscopeStandardDeviationZ**  
**frequencydomainBodyGyroscopeMeanFrequencyX**  
**frequencydomainBodyGyroscopeMeanFrequencyY**  
**frequencydomainBodyGyroscopeMeanFrequencyZ**


`Mean of Magnitude of Body Acceleration, Body Acceleration Jerk, Body Angular Velocity, and Body Angular Velocity Jerk`

**frequencydomainBodyAccelerometerMagnitudeMean**  
**frequencydomainBodyAccelerometerJerkMagnitudeMean**  
**frequencydomainBodyGyroscopeMagnitudeMean**  
**frequencydomainBodyGyroscopeJerkMagnitudeMean**  

`Standard Deviation of Magnitude of Body Acceleration, Body Acceleration Jerk, Body Angular Velocity, and Body Angular Velocity Jerk`

**frequencydomainBodyAccelerometerMagnitudeStandardDeviation**  
**frequencydomainBodyAccelerometerJerkMagnitudeStandardDeviation**  
**frequencydomainBodyGyroscopeMagnitudeStandardDeviation**  
**frequencydomainBodyGyroscopeJerkMagnitudeStandardDeviation**  


`Average Frequency of Magnitude of Body Acceleration, Body Acceleration Jerk, Body Angular Velocity, and Body Angular Velocity Jerk`

**frequencydomainBodyAccelerometerMagnitudeMeanFrequency**  
**frequencydomainBodyAccelerometerJerkMagnitudeMeanFrequency**  
**frequencydomainBodyGyroscopeMagnitudeMeanFrequency**  
**frequencydomainBodyGyroscopeJerkMagnitudeMeanFrequency**  


# Transformations: 

## Transformations applied based on Project Questions:

1- Merges the training and the test sets to create one data set.  
2- Extracts only the measurements on the mean and standard deviation for each measurement.    

`samsung.data.ex1 <- samsung.data[,grep("activity|subject|mean|std", colnames(samsung.data), value = TRUE)]`

3 - Uses descriptive activity names to name the activities in the data set

`Xlabels.value <- read.table(file.path(path.files,"activity_labels.txt"), header= FALSE)
samsung.data.ex1$activity <- factor(samsung.data.ex1$activity, levels = Xlabels.value$V1, labels = Xlabels.value$V2)`  


4 - Appropriately labels the data set with descriptive variable names 

`colnames(samsung.data.ex1) <- gsub("[\\(\\)-]", "", colnames(samsung.data.ex1))`  
`colnames(samsung.data.ex1) <- gsub("^t","time",colnames(samsung.data.ex1))`  
`colnames(samsung.data.ex1) <- gsub("^f","frequencydomain",colnames(samsung.data.ex1))`  
`colnames(samsung.data.ex1) <- gsub("Acc","Accelerometer",colnames(samsung.data.ex1))`  
`colnames(samsung.data.ex1) <- gsub("Gyro","Gyroscope",colnames(samsung.data.ex1))`  
`colnames(samsung.data.ex1) <- gsub("Mag","Magnitude",colnames(samsung.data.ex1))`  
`colnames(samsung.data.ex1) <- gsub("BodyBody","Body",colnames(samsung.data.ex1))`  
`colnames(samsung.data.ex1) <- gsub("mean","Mean",colnames(samsung.data.ex1))`  
`colnames(samsung.data.ex1) <- gsub("Freq","Frequency",colnames(samsung.data.ex1))`  
`colnames(samsung.data.ex1) <- gsub("std","StandardDeviation",colnames(samsung.data.ex1))`  

5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

`samsung.data.ex2<- samsung.data.ex1 %>% group_by(activity, subject) %>% summarize_all(mean)`
