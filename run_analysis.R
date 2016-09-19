library(plyr)

#download the file if it does not exist on your local folder yet
if(!file.exists('./data')){dir.create('./data')}
fileurl<-'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(fileurl,destfile='./data/UCIHARDataset.zip')
unzip('./data/UCIHARDataset.zip',exdir='./data')

#list down all relevant filenames for easy copy pasting or referencing
filenames<-list.files('./data/UCI HAR Dataset',full.names=TRUE)
filenamestrain<-list.files('./data/UCI HAR Dataset/train',full.names=TRUE)
filenamestest<-list.files('./data/UCI HAR Dataset/test',full.names=TRUE)

####################################################################################
#reads in all the data and combines them into a single master dataset
activitylabels<-read.csv("./data/UCI HAR Dataset/activity_labels.txt",sep='',header=FALSE,col.names = c('activityindex','activity'))
features<-read.csv("./data/UCI HAR Dataset/features.txt",sep='',header=FALSE,col.names = c('featureindex','feature'))

subjecttrain<-read.csv('./data/UCI HAR Dataset/train/subject_train.txt',sep='',header=FALSE,col.names = c('participantid'))
xtrain<-read.csv('./data/UCI HAR Dataset/train/X_train.txt',sep='',header=FALSE,col.names = features$feature)
ytrain<-read.csv('./data/UCI HAR Dataset/train/y_train.txt',sep='',header=FALSE,col.names = c('activity'))
subjecttest<-read.csv('./data/UCI HAR Dataset/test/subject_test.txt',sep='',header=FALSE,col.names = c('participantid'))
xtest<-read.csv('./data/UCI HAR Dataset/test/X_test.txt',sep='',header=FALSE,col.names = features$feature)
ytest<-read.csv('./data/UCI HAR Dataset/test/y_test.txt',sep='',header=FALSE,col.names = c('activity'))

#combine test and training sets rowwise
xall<-rbind(xtrain,xtest)
yall<-rbind(ytrain,ytest)
subjectall<-rbind(subjecttrain,subjecttest)
#column bind the x data with the participant id and activity labels in the y datasets
finaldata<-cbind(xall,yall,subjectall)

#remove all unnecessary intermediate raw data from memoryfeatures
remove(xall,yall,subjectall,subjecttrain,subjecttest,xtest,ytest,xtrain,ytrain)
##################################################################################
#filter finaldata to only look at features which have either mean or std in their names
#include the participant id and activity label datasets
datameanstd<-finaldata[,grep('[Mm]ean|std',features$feature)]
datameanstd<-cbind(datameanstd,finaldata$activity,finaldata$participantid)

names(datameanstd)<-gsub('*\\(tBody','timebody',names(datameanstd))
names(datameanstd)<-gsub('^finaldata\\$','',names(datameanstd))
names(datameanstd)<-gsub('^t','time',names(datameanstd))
names(datameanstd)<-gsub('^f','frequency',names(datameanstd))
names(datameanstd)<-gsub('Mag','magnitude',names(datameanstd))
names(datameanstd)<-gsub('Acc','acceleration',names(datameanstd))

#remove unnecessary special characters and change everything to lowercase
names(datameanstd)<-gsub('-|\\(|\\)|\\.','',names(datameanstd))
names(datameanstd)<-tolower(names(datameanstd))

#change activity labels to wordings
activitymapfunction<-function(x) activitylabels$activity[x]
datameanstd$activity<-sapply(datameanstd$activity,activitymapfunction)

#this line groups the data according to participant and activity and applies column means 
averagedf <- ddply(datameanstd, .(participantid, activity), function(x) colMeans(x[, 1:86]))

write.table(averagedf,'average_dataset.txt',row.names = FALSE)

