---
title: "Human Activity Recognition Using Smartphones Dataset"
author: "Peter Vennel"
date: "Monday, January 19, 2015"
output: pdf_document
---

###DATA DICTIONARY      

<br>
<br>

####SUBJECT        

This data set contains the Subject info        

Subject Id    | Subject Description
------------- | -------------
1  | Subject - 1
2  | Subject - 2
3  | Subject - 3
4  | Subject - 4
5  | Subject - 5
6  | Subject - 6
7  | Subject - 7
8  | Subject - 8
9  | Subject - 9
10 | Subject - 10
11 | Subject - 11
12 | Subject - 12
13 | Subject - 13
14 | Subject - 14
15 | Subject - 15
16 | Subject - 16
17 | Subject - 17
18 | Subject - 18
19 | Subject - 19
20 | Subject - 20
21 | Subject - 21
22 | Subject - 22
23 | Subject - 23
24 | Subject - 24
25 | Subject - 25
26 | Subject - 26
27 | Subject - 27
28 | Subject - 28
29 | Subject - 29
30 | Subject - 30 

<br>
<br>

####ACTIVITY       

This has description of the Activities done by each subject.        

Activity Id | Activity Description
------------- | -------------
1  | WALKING
2  | WALKING_UPSTAIRS
3  | WALKING_DOWNSTAIRS
4  | SITTING
5  | STANDING
6  | LAYING

<br>
<br>

####SUMMARYSUBJECTDF       

The data is grouped by Subject (SUBJECT_ID) by Activity (ACTIVITY_DESC). The columns contain the Mean ( also known as Average) value of the column for that observation. So this means there will be a row for every combination of Subject and activity (30 subjects by 6 Activity = 180 rows)       

Column Name                             | Column Description
--------------------------------------- | ---------------------------------------------------------------------
SUBJECT_ID                   	          | Subject Id             
ACTIVITY_DESC                           | Activity Description
timeBodyAccel-mean-X      		          | Time Body Acceleration - Mean() - X Axis              
timeBodyAccel-mean-Y                    | Time Body Acceleration - Mean() - Y Axis
timeBodyAccel-mean-Z                    | Time Body Acceleration - Mean()-Z Axis
timeBodyAccel-std-X                     | Time Body Acceleration - StandardDeviation() - X Axis
timeBodyAccel-std-Y                     | Time Body Acceleration - StandardDeviation() - Y Axis
timeBodyAccel-std-Z                     | Time Body Acceleration - StandardDeviation() - Z Axis
timeGravityAccel-mean-X                 | Time Gravity Acceleration - Mean() - X Axis
timeGravityAccel-mean-Y                 | Time Gravity Acceleration - Mean() - Y Axis
timeGravityAccel-mean-Z                 | Time Gravity Acceleration - Mean() - Z Axis
timeGravityAccel-std-X                  | Time Gravity Acceleration - StandardDeviation() - X Axis
timeGravityAccel-std-Y         	        | Time Gravity Acceleration - StandardDeviation() - Y Axis        
timeGravityAccel-std-Z                  | Time Gravity Acceleration - StandardDeviation() - Z Axis
timeBodyAccelJerk-mean-X                | Time Body Acceleration Jerk - Mean() - X axis
timeBodyAccelJerk-mean-Y                | Time Body Acceleration Jerk - Mean() - Y axis       
timeBodyAccelJerk-mean-Z                | Time Body Acceleration Jerk - Mean() - Z axis        
timeBodyAccelJerk-std-X                 | Time Body Acceleration Jerk - StandardDeviation() - X axis       
timeBodyAccelJerk-std-Y                 | Time Body Acceleration Jerk - StandardDeviation() - Y axis
timeBodyAccelJerk-std-Z                 | Time Body Acceleration Jerk - StandardDeviation() - Z axis       
timeBodyGyro-mean-X                     | Time Body Gyroscope - Mean() - X axis        
timeBodyGyro-mean-Y                     | Time Body Gyroscope - Mean() - Y axis       
timeBodyGyro-mean-Z                     | Time Body Gyroscope - Mean() - Z axis        
timeBodyGyro-std-X                      | Time Body Gyroscope - StandardDeviation() - X axis       
timeBodyGyro-std-Y                      | Time Body Gyroscope - StandardDeviation() - Y axis       
timeBodyGyro-std-Z                      | Time Body Gyroscope - StandardDeviation() - Z axis       
timeBodyGyroJerk-mean-X                 | Time Body Gyroscope Jerk - Mean() - X axis        
timeBodyGyroJerk-mean-Y                 | Time Body Gyroscope Jerk - Mean() - Y axis
timeBodyGyroJerk-mean-Z                 | Time Body Gyroscope Jerk - Mean() - Z axis
timeBodyGyroJerk-std-X                  | Time Body Gyroscope Jerk - StandardDeviation() - X axis
timeBodyGyroJerk-std-Y                  | Time Body Gyroscope Jerk - StandardDeviation() - Y axis        
timeBodyGyroJerk-std-Z                  | Time Body Gyroscope Jerk - StandardDeviation() - Z axis
timeBodyAccelMag-mean                   | Time Body Acceleration Magnitude - Mean()
timeBodyAccelMag-std                    | Time Body Acceleration Magnitude StandardDeviation()
timeGravityAccelMag-mean                | Time Gravity Acceleration Magnitude - Mean()
timeGravityAccelMag-std                 | Time Gravity Acceleration Magnitude StandardDeviation()
timeBodyAccelJerkMag-mean               | Time Body Acceleration Jerk Magnitude - Mean()
timeBodyAccelJerkMag-std                | Time Body Acceleration Jerk Magnitude StandardDeviation()
timeBodyGyroMag-mean                    | Time Body Gyroscope Magnitude - Mean()
timeBodyGyroMag-std                     | Time Body Gyroscope Magnitude StandardDeviation()
timeBodyGyroJerkMag-mean                | Time Body Gyroscope Jerk Magnitude - Mean()
timeBodyGyroJerkMag-std                 | Time Body Gyroscope Jerk Magnitude - StandardDeviation()
freqBodyAccel-mean-X                    | Frequency Body Acceleration Jerk - Mean() X axis
freqBodyAccel-mean-Y                    | Frequency Body Acceleration Jerk - Mean() Y axis
freqBodyAccel-mean-Z                    | Frequency Body Acceleration Jerk - Mean() Z axis 
freqBodyAccel-std-X                     | Frequency Body Acceleration - StandardDeviation() X axis
freqBodyAccel-std-Y                     | Frequency Body Acceleration - StandardDeviation() Y axis 
freqBodyAccel-std-Z                     | Frequency Body Acceleration - StandardDeviation() Z axis
freqBodyAccel-meanFreq-X                | Frequency Body Acceleration - Mean() Frequency X axis
freqBodyAccel-meanFreq-Y                | Frequency Body Acceleration - Mean() Frequency Y axis
freqBodyAccel-meanFreq-Z                | Frequency Body Acceleration - Mean() Frequency Z axis
freqBodyAccelJerk-mean-X                | Frequency Body Acceleration Jerk - Mean() X axis
freqBodyAccelJerk-mean-Y                | Frequency Body Acceleration Jerk - Mean() Y axis
freqBodyAccelJerk-mean-Z                | Frequency Body Acceleration Jerk - Mean() Z axis
freqBodyAccelJerk-std-X                 | Frequency Body Acceleration Jerk - StandardDeviation() X axis
freqBodyAccelJerk-std-Y                 | Frequency Body Acceleration Jerk - StandardDeviation() Y axis
freqBodyAccelJerk-std-Z                 | Frequency Body Acceleration Jerk - StandardDeviation() Z axis
freqBodyAccelJerk-meanFreq-X            | Frequency Body Acceleration Jerk - Mean() Frequency X axis
freqBodyAccelJerk-meanFreq-Y            | Frequency Body Acceleration Jerk - Mean() Frequency Y axis
freqBodyAccelJerk-meanFreq-Z            | Frequency Body Acceleration Jerk - Mean() Frequency Z axis
freqBodyGyro-mean-X                     | Frequency Body Gyroscope - Mean() X axis
freqBodyGyro-mean-Y                     | Frequency Body Gyroscope - Mean() Y axis
freqBodyGyro-mean-Z                     | Frequency Body Gyroscope - Mean() Z axis
freqBodyGyro-std-X                      | Frequency Body Gyroscope - StandardDeviation() X axis
freqBodyGyro-std-Y                      | Frequency Body Gyroscope - StandardDeviation() Y axis
freqBodyGyro-std-Z                      | Frequency Body Gyroscope - StandardDeviation() Z axis
freqBodyGyro-meanFreq-X                 | Frequency Body Gyroscope - MeanFrequency() X axis
freqBodyGyro-meanFreq-Y                 | Frequency Body Gyroscope - MeanFrequency() Y axis
freqBodyGyro-meanFreq-Z                 | Frequency Body Gyroscope - MeanFrequency() Z axis
freqBodyAccelMag-mean                   | Frequency Body Acceleration Magnitude - Mean()     
freqBodyAccelMag-std                    | Frequency Body Acceleration Magnitude - Frequency()
freqBodyAccelMag-meanFreq               | Frequency Body Acceleration Magnitude - MeanFrequency()
freqBodyBodyAccelJerkMag-mean           | Frequency Body Body Acceleration Jerk Magnitude - Mean()
freqBodyBodyAccelJerkMag-std            | Frequency Body Body Acceleration Jerk Magnitude - StandardDeviation()
freqBodyBodyAccelJerkMag-meanFreq       | Frequency Body Body Acceleration Jerk Magnitude - MeanFrequency()
freqBodyBodyGyroMag-mean                | Frequency Body Body Gyroscope Magnitude - Mean()
freqBodyBodyGyroMag-std                 | Frequency Body Body Gyroscope Magnitude StandardDeviation()       
freqBodyBodyGyroMag-meanFreq            | Frequency Body Body Gyroscope Magnitude - MeanFrequency() 
freqBodyBodyGyroJerkMag-mean            | Frequency Body Body Gyroscope Jerk Magnitude - Mean()
freqBodyBodyGyroJerkMag-std             | Frequency Body Body Gyroscope Jerk Magnitude - StandardDeviation()      
freqBodyBodyGyroJerkMag-meanFreq        | Frequency Body Body Gyroscope Jerk Magnitude - MeanFrequency()
angle-timeBodyAccelMean_gravity         | Angular( Time Body Acceleration - Mean Gravity)
angle-timeBodyAccelJerkMean_gravityMean | Angular(Time_Body_Acceleration_Jerk - Mean Gravity Mean)
angle-timeBodyGyroMean-gravityMean      | Angular(Time Body Gyroscope Mean Gravity Mean)
angle-timeBodyGyroJerkMean_gravityMean  | Angular(Time Body Gyroscope Jerk Mean Gravity Mean)
angle-X_gravityMean                     | Angular(X Axis, GravityMean)
angle-Y_gravityMean                     | Angular(Y Axis, GravityMean)
angle-Z_gravityMean                     | Angular(Z Axis, GravityMean)




