#We modify the directory address with the code 'setwd'.
setwd("C:/Users/DANIEL/Documents/GitHub/-Coursera-Getting-and-Cleaning-Data-Course-Project-/UCI HAR Dataset")


#For the solution of the problem, we need to install the plyr and data.table packages that help to manage the data.
library(plyr)
library(data.table)

#############################################################
# 1.Combine the training and test sets to create a data set.
#############################################################
SubjectTrain = read.table('./train/subject_train.txt')
xTrain = read.table('./train/x_train.txt')
yTrain = read.table('./train/y_train.txt')

SubjectTest = read.table('./test/subject_test.txt')
xTest = read.table('./test/x_test.txt')
yTest = read.table('./test/y_test.txt')

xDataSet <- rbind(xTrain, xTest)
yDataSet <- rbind(yTrain, yTest)
subjectDataSet <- rbind(SubjectTrain, SubjectTest)

dim(subjectDataSet)
dim(xDataSet)
dim(yDataSet)


#############################################################
# 2.Extraction of the mean and standard deviation measurements 
#   for each measurement.
#############################################################


xDataSet_mean_std <- xDataSet[, grep("-(mean|std)\\(\\)", read.table("features.txt")[, 2])]
names(xDataSet_mean_std) <- read.table("features.txt")[grep("-(mean|std)\\(\\)", read.table("features.txt")[, 2]), 2] 
View(xDataSet_mean_std)
dim(xDataSet_mean_std)


#############################################################
# 3.  Use descriptive activity names to name the activities 
#in the data set.
#############################################################


yDataSet[, 1] <- read.table("activity_labels.txt")[yDataSet[, 1], 2]
names(yDataSet) <- "Activity"
View(yDataSet)

#############################################################
# 4.  Label the data set with descriptive activity names.
#############################################################

names(subjectDataSet) <- "Subject"
summary(subjectDataSet)

DataSet <- cbind(xDataSet_mean_std, yDataSet, subjectDataSet)

names( DataSet) <- make.names(names( DataSet))
names( DataSet) <- gsub('Acc',"Acceleration",names( DataSet))
names( DataSet) <- gsub('GyroJerk',"AngularAcceleration",names( DataSet))
names( DataSet) <- gsub('Gyro',"AngularSpeed",names( DataSet))
names( DataSet) <- gsub('Mag',"Magnitude",names( DataSet))
names( DataSet) <- gsub('^t',"TimeDomain.",names( DataSet))
names( DataSet) <- gsub('^f',"FrequencyDomain.",names( DataSet))
names( DataSet) <- gsub('\\.mean',".Mean",names( DataSet))
names( DataSet) <- gsub('\\.std',".StandardDeviation",names( DataSet))
names( DataSet) <- gsub('Freq\\.',"Frequency.",names( DataSet))
names( DataSet) <- gsub('Freq$',"Frequency",names( DataSet))

View( DataSet)
names( DataSet)

#############################################################
# 5.  Creates a second, independent tidy data set with the 
#     average of each variable for each activity and each 
#     subject.
#############################################################

Dataindep<-aggregate(. ~Subject + Activity,  DataSet, mean)
Dataindep<-Dataindep[order(Dataindep$Subject,Dataindep$Activity),]
write.table(Dataindep, file = "TidyData.txt",row.name=FALSE)
View(Dataindep)
