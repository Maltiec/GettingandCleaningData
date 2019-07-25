library(dplyr)
library(data.table)
#loadd train and test subjects and activity datasets
subjects_train<-read.csv("subject_train.txt",col.names = "Subject",header = FALSE, sep = "")
subjects_test<-read.csv("subject_test.txt",col.names = "Subject", header = FALSE, sep = "")
activities_train<-read.csv("y_train.txt",col.names = "Activity", header = FALSE, sep = "")
activities_test<-read.csv("y_test.txt",col.names = "Activity", header = FALSE, sep = "")

#load features dataset 
features<-read.csv("features.txt",header = FALSE, sep = "")
#fix features names  (removing all "-" and "()", double words, changing to uppercmlcase)
features$V2 <- gsub('-mean', 'Mean', features$V2)
features$V2 <- gsub('-std', 'Std', features$V2)
features$V2 <- gsub('[()-]', '', features$V2)
features$V2 <- gsub('BodyBody', 'Body', features$V2)

#load train and test datasets 
train_set<-read.csv("x_train.txt",col.names = features$V2, header = FALSE, sep = "")
test_set<-read.csv("x_test.txt",col.names = features$V2, header = FALSE, sep = "")
act_labels<-read.csv("activity_labels.txt",header = FALSE, sep = "")

#merge loaded data
merged_Y<-rbind(activities_train,activities_test)
merged_X<-rbind(train_set,test_set)
merged_subjects<-rbind(subjects_train,subjects_test)

#select Mean and Std variables
mean_set<-select(merged_X,contains("Mean"))
std_set<-select(merged_X,contains("Std"))
mean_std_set<-bind_cols(mean_set,std_set)
merged_set<-bind_cols(merged_Y,mean_std_set)

#making dataset with activities and subjects for mean and std variables 
mean_std_set<-bind_cols(merged_subjects,merged_set)

#clearing memory
remove(train_set,test_set,act_labels,merged_set,merged_subjects,merged_X,merged_Y)

#adding readable activity labels
mean_std_set$Activity<-as.factor(mean_std_set$Activity)
mean_std_set$Activity<-gsub("1","WALKING",mean_std_set$Activity)
mean_std_set$Activity<-gsub("2","WALKING_UPSTAIRS",mean_std_set$Activity)
mean_std_set$Activity<-gsub("3","WALKING_DOWNSTAIRS",mean_std_set$Activity)
mean_std_set$Activity<-gsub("4","SITTING",mean_std_set$Activity)
mean_std_set$Activity<-gsub("5","STANDING",mean_std_set$Activity)
mean_std_set$Activity<-gsub("6","LAYING",mean_std_set$Activity)

#convert resultin dataset to data.table type and make tidy dataset
mean_std_set<-data.table(mean_std_set)
tidy.dataset <- mean_std_set[, lapply(.SD, mean), by=list(Activity, Subject)]


