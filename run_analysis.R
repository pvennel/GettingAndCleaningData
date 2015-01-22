# combined files
#     - subject 
#     - X_data
#     - Y_data

library("dplyr", lib.loc="~/R/win-library/3.1")
library("data.table", lib.loc="~/R/win-library/3.1")
library("stringr", lib.loc="~/R/win-library/3.1")
library("plyr", lib.loc="~/R/win-library/3.1")
library("tidyr", lib.loc="~/R/win-library/3.1")


## Task#1
activity <- read.table("UCI_HAR/activity_labels.txt")
names(activity) <- c("ACTIVITY_ID","ACTIVITY_DESC")

subject_test <- read.csv("UCI_HAR/test/subject_test.txt", header=F)
subject_train <- read.csv("UCI_HAR/train/subject_train.txt", header=F)
names(subject_test) <- c("SUBJECT_ID")
names(subject_train) <- c("SUBJECT_ID")


featuresDF <- read.table("UCI_HAR/features-clean.txt", header=F) 

x_data_test <- read.table("UCI_HAR/test/X_test.txt", header=F)
y_data_test <- read.table("UCI_HAR/test/y_test.txt", header=F)
names(y_data_test) <- c("ACTIVITY_ID")
names(x_data_test) <- featuresDF$V2


## apply this as the column name to the Data Frame x_data_test.
## just get the second column from featuresDF as that contains the descriprion.


x_data_train <- read.table("UCI_HAR/train/X_train.txt", header=F)
y_data_train <- read.table("UCI_HAR/train/y_train.txt", header=F)
names(y_data_train) <- c("ACTIVITY_ID")
names(x_data_train) <- featuresDF$V2

subjectDF <- rbind(subject_test, subject_train)
y_dataDF <- rbind(y_data_test, y_data_train)
x_dataDF <- rbind(x_data_test, x_data_train)


##  combine the columns using cbind
SubjectTrainingDF <- cbind(subjectDF, y_dataDF, x_dataDF)


###  Task#2
#Hadley Wickham's stringr package
## I am creating a list of column names that contain the word "std" or "mean" in 
## any case in anywhere in the column name.
stdCol <- grep("mean|std|SUBJECT_ID|ACTIVITY_ID", names(SubjectTrainingDF), ignore.case = T)

## using the list of filtered column name, I am creating a subset of the original Data Frame.
filterSubjectDF <- SubjectTrainingDF[stdCol]



### Task#3
## I wanted to retain the ACTIVITY_ID column so that I can verify if the values were correctly applied to the description column.
## create a new column to store ACTIVITY Description
filterSubjectDF["ACTIVITY_DESC"] <- NA

## using Table was easy for me as I am more familiar wit this package.
tempTbl1 <- data.table(filterSubjectDF)
tempTbl2 <- data.table(activity)
tempTbl1[, ACTIVITY_DESC:=tempTbl2[ACTIVITY_ID==tempTbl1$ACTIVITY_ID, ACTIVITY_DESC]]
## convert back to DF
filterSubjectDF <- as.data.frame.matrix(tempTbl1) 


## Task#4


newColNames <- c("SUBJECT_ID", "ACTIVITY_ID", "timeBodyAccel-mean-X", "timeBodyAccel-mean-Y", "timeBodyAccel-mean-Z",
                 "timeBodyAccel-std-X", "timeBodyAccel-std-Y", "timeBodyAccel-std-Z", "timeGravityAccel-mean-X", 
                 "timeGravityAccel-mean-Y", "timeGravityAccel-mean-Z", "timeGravityAccel-std-X", "timeGravityAccel-std-Y", 
                 "timeGravityAccel-std-Z", "timeBodyAccelJerk-mean-X", "timeBodyAccelJerk-mean-Y", "timeBodyAccelJerk-mean-Z", 
                 "timeBodyAccelJerk-std-X", "timeBodyAccelJerk-std-Y", "timeBodyAccelJerk-std-Z", "timeBodyGyro-mean-X", 
                 "timeBodyGyro-mean-Y", "timeBodyGyro-mean-Z", "timeBodyGyro-std-X", "timeBodyGyro-std-Y", 
                 "timeBodyGyro-std-Z", "timeBodyGyroJerk-mean-X", "timeBodyGyroJerk-mean-Y", "timeBodyGyroJerk-mean-Z", 
                 "timeBodyGyroJerk-std-X", "timeBodyGyroJerk-std-Y", "timeBodyGyroJerk-std-Z", "timeBodyAccelMag-mean", 
                 "timeBodyAccelMag-std", "timeGravityAccelMag-mean", "timeGravityAccelMag-std", "timeBodyAccelJerkMag-mean", 
                 "timeBodyAccelJerkMag-std", "timeBodyGyroMag-mean", "timeBodyGyroMag-std", "timeBodyGyroJerkMag-mean", 
                 "timeBodyGyroJerkMag-std", "freqBodyAccel-mean-X", "freqBodyAccel-mean-Y", "freqBodyAccel-mean-Z", 
                 "freqBodyAccel-std-X", "freqBodyAccel-std-Y", "freqBodyAccel-std-Z", "freqBodyAccel-meanFreq-X", "freqBodyAccel-meanFreq-Y", 
                 "freqBodyAccel-meanFreq-Z", "freqBodyAccelJerk-mean-X", "freqBodyAccelJerk-mean-Y", "freqBodyAccelJerk-mean-Z",		 
                 "freqBodyAccelJerk-std-X", "freqBodyAccelJerk-std-Y", "freqBodyAccelJerk-std-Z", "freqBodyAccelJerk-meanFreq-X",             
                 "freqBodyAccelJerk-meanFreq-Y", "freqBodyAccelJerk-meanFreq-Z", "freqBodyGyro-mean-X", "freqBodyGyro-mean-Y",                   
                 "freqBodyGyro-mean-Z", "freqBodyGyro-std-X", "freqBodyGyro-std-Y", "freqBodyGyro-std-Z",                     
                 "freqBodyGyro-meanFreq-X", "freqBodyGyro-meanFreq-Y", "freqBodyGyro-meanFreq-Z", "freqBodyAccelMag-mean", 
                 "freqBodyAccelMag-std", "freqBodyAccelMag-meanFreq", "freqBodyBodyAccelJerkMag-mean", "freqBodyBodyAccelJerkMag-std",             
                 "freqBodyBodyAccelJerkMag-meanFreq", "freqBodyBodyGyroMag-mean", "freqBodyBodyGyroMag-std", 
                 "freqBodyBodyGyroMag-meanFreq", "freqBodyBodyGyroJerkMag-mean", "freqBodyBodyGyroJerkMag-std",            
                 "freqBodyBodyGyroJerkMag-meanFreq", "angle-timeBodyAccelMean_gravity", "angle-timeBodyAccelJerkMean_gravityMean", 
                 "angle-timeBodyGyroMean-gravityMean", "angle-timeBodyGyroJerkMean_gravityMean", "angle-X_gravityMean", 
                 "angle-Y_gravityMean", "angle-Z_gravityMean", "ACTIVITY_DESC")

names(filterSubjectDF) <- newColNames

### Task#5
SummarySubjectDF <- ddply(filterSubjectDF, .(SUBJECT_ID, ACTIVITY_ID, ACTIVITY_DESC), numcolwise(mean))

## To tidy up, remove column ACTIVITY_ID as there is already ACTIVITY_DESC
SummarySubjectDF["ACTIVITY_ID"] <- NULL

write.table(SummarySubjectDF, "SummarySubjectData.txt", sep = " ", row.name= FALSE)
