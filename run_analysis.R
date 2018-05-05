getwd()
setwd("./coursera")

# Downloading the Data 

if(!file.exists("./data")){dir.create("./data")}
fileUrl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl1,destfile="./data/smartphones.zip",method="curl")
unzip(zipfile="./data/smartphones.zip",exdir="./data")


######### - Merges the training and the test sets to create one data set

path.files <- file.path("./data", "UCI HAR Dataset") 
list.files(path.files, recursive = TRUE) #recursive tell it to list out subdirectory files names

testXdata <- read.table(file.path(path.files,"test/X_test.txt"),header = FALSE)
testXlables <- read.table(file.path(path.files,"test/y_test.txt"),header = FALSE)
testXsubject <- read.table(file.path(path.files,"test/subject_test.txt"),header = FALSE)

trainXdata <- read.table(file.path(path.files,"train/X_train.txt"),header = FALSE)
trainXlabels <- read.table(file.path(path.files,"train/y_train.txt"),header = FALSE)
trainXsubjects <- read.table(file.path(path.files,"train/subject_train.txt"),header = FALSE)

Xdata <- rbind(trainXdata, testXdata)
Xlabels <- rbind(trainXlabels, testXlables)
Xsubjects <- rbind(trainXsubjects,testXsubject)

Xdata.header <- read.table(file.path(path.files,"features.txt"), header= FALSE)

colnames(Xdata) <- Xdata.header$V2
colnames(Xlabels) <- c("activity")
colnames(Xsubjects) <- c("subject")

Xlabels$activity <- as.factor(Xlabels$activity)
Xsubjects$subject <- as.factor(Xsubjects$subject)

samsung.data <- cbind(Xlabels,Xsubjects,Xdata)
str(samsung.data$activity)
str(samsung.data$subject)

######### - Extracts only the measurements on the mean and standard deviation for each measurement.

samsung.data.ex1 <- samsung.data[,grep("activity|subject|mean|std", colnames(samsung.data), value = TRUE)]
summary(samsung.data.ex1)


######### - Uses descriptive activity names to name the activities in the data set

# Option 1
Xlabels.value <- read.table(file.path(path.files,"activity_labels.txt"), header= FALSE)
samsung.data.ex1$activity <- factor(samsung.data.ex1$activity, levels = Xlabels.value$V1, labels = Xlabels.value$V2)

# Option 2
library(plyr)
samsung.data$activity <- revalue(samsung.data$activity, c("1"="WALKING", "2"="WALKING_UPSTAIRS", "3"="WALKING_DOWNSTAIRS",
                                                          "4"="SITTING", "5"="STANDING", "6"="LAYING"))



######### - Appropriately labels the data set with descriptive variable names


colnames(samsung.data.ex1) <- gsub("[\\(\\)-]", "", colnames(samsung.data.ex1))

colnames(samsung.data.ex1) <- gsub("^t","time",colnames(samsung.data.ex1))
colnames(samsung.data.ex1) <- gsub("^f","frequencydomain",colnames(samsung.data.ex1))
colnames(samsung.data.ex1) <- gsub("Acc","Accelerometer",colnames(samsung.data.ex1))
colnames(samsung.data.ex1) <- gsub("Gyro","Gyroscope",colnames(samsung.data.ex1))
colnames(samsung.data.ex1) <- gsub("Mag","Magnitude",colnames(samsung.data.ex1))
colnames(samsung.data.ex1) <- gsub("BodyBody","Body",colnames(samsung.data.ex1))

colnames(samsung.data.ex1) <- gsub("mean","Mean",colnames(samsung.data.ex1))
colnames(samsung.data.ex1) <- gsub("Freq","Frequency",colnames(samsung.data.ex1))
colnames(samsung.data.ex1) <- gsub("std","StandardDeviation",colnames(samsung.data.ex1))


######### - From the data set in step 4, creates a second, independent tidy data set 
######### - with the average of each variable for each activity and each subject.

library(dplyr)
samsung.data.ex2<- samsung.data.ex1 %>% group_by(activity, subject) %>% summarize_all(mean)
write.table(samsung.data.ex2, "./data/mytidydata.txt", quote = FALSE, row.names = FALSE)

