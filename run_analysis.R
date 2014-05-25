setwd("/Users/rene_b23/desktop/coursera")

Xtest<-read.table("./UCI HAR Dataset/test/X_test.txt", sep="")

Xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt",sep="")

features<-read.table("./UCI HAR Dataset/features.txt",sep="")


trainSub <- read.table("UCI HAR Dataset/train/subject_train.txt", comment.char = "", colClasses="numeric")
trainY <- read.table("UCI HAR Dataset/train/y_train.txt")

testSub <- read.table("UCI HAR Dataset/test/subject_test.txt", comment.char = "", colClasses="numeric")
testY <- read.table("UCI HAR Dataset/test/y_test.txt")



allX<-rbind(Xtest,Xtrain)
names(allX)= features[,2]


otherTest<-cbind(testSub, testY)
otherTrain<-cbind(trainSub, trainY)
allother<-rbind(otherTest,otherTrain)
mynames <- c("Subject", "Activity")
names(allother)= mynames

all<-cbind(allother,allX)
 


for(i in 1:nrow(all)){
  if(all[i,"Activity"]=="1"){
    all[i,"Activity"]<-"WALKING"
  }
  else if (all[i,"Activity"]=="2"){
    all[i,"Activity"]<-"WALKING_UPSTAIRS"
  }
  else if (all[i,"Activity"]=="3"){
    all[i,"Activity"]<-"WALKING_DOWNSTAIRS"
  }
  else if (all[i,"Activity"]=="4"){
    all[i,"Activity"]<-"SITTING"

  }
  else if (all[i,"Activity"]=="5"){
    all[i,"Activity"]<-"STANDING"
  }
  else if (all[i,"Activity"]=="6"){
    all[i,"Activity"]<-"LAYING"
  }
  
}


b<-grepl("std|mean",as.character(names(all)))
b[1]<-TRUE
b[2]<-TRUE
suball<-all[b]

names(suball)<-gsub("\\(\\)", "", names(suball))
names(suball)<-gsub("-", "", names(suball))
names(suball)<-tolower(names(suball))

suballmelt <- melt(suball,id=c("subject","activity")) 

finaldata<-dcast(suballmelt,c("subject","activity") ~ variable,mean)

write.table(finaldata, "./finalData.txt")







