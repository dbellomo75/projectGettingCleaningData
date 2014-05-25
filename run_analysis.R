## Get the measured data
X_train <- read.table("X_train.txt")
X_test  <- read.table("X_test.txt")

## Get the ID of the subjects
sub_train<- read.table("subject_train.txt")
sub_test<- read.table("subject_test.txt")

## Get the ID for the activities
actID_train<- read.table("y_train.txt")
actID_test<- read.table("y_test.txt")

## Merge Training and test data sets
X     <- rbind(X_train,X_test)
sub   <- rbind(sub_train,sub_test)
colnames(sub) <-"subjectID"
actID <- rbind(actID_train,actID_test)
colnames(actID) <-"activityID"

## Get the activities labels
Alabels <- read.table("activity_labels.txt")

## Get 561 feature names
features <- read.table("features.txt")

## Extract measurement on mean and std
imean= grep("mean()",features$V2)
istd=grep("std()",features$V2)
i=sort(c(imean,istd))

## Create a raw dataframe
Xsmall<-X[,i]
featuresShort<-features[i,"V2"]
colnames(Xsmall)<-featuresShort
IDs<-cbind(sub,actID)
dataRaw<-cbind(IDs,Xsmall)

## Order by subject and activity ID 
dataRaw<-dataRaw[order(dataRaw$subjectID,dataRaw$activityID),]

## Calculate columns mean conditioned to subject and actvity
f1<-as.factor(dataRaw$subjectID)
f2<-as.factor(dataRaw$activityID)
splitdata<-split(dataRaw,interaction(f1,f2))
M<-sapply(splitdata,colMeans)
Mt<-t(M)
v<-as.numeric(row.names(Mt))
Mt<-Mt[order(v),]

dd<-data.frame(Mt[,"subjectID"],Mt[,"activityID"],Mt[,as.character(featuresShort)])

## Replace activity IDs with labels
a<- vector(mode="character", length=nrow(Mt))
a[Mt[,"activityID"]==as.numeric(Alabels$V1[1])]<-as.character(Alabels$V2[1])
a[Mt[,"activityID"]==as.numeric(Alabels$V1[2])]<-as.character(Alabels$V2[2])
a[Mt[,"activityID"]==as.numeric(Alabels$V1[3])]<-as.character(Alabels$V2[3])
a[Mt[,"activityID"]==as.numeric(Alabels$V1[4])]<-as.character(Alabels$V2[4])
a[Mt[,"activityID"]==as.numeric(Alabels$V1[5])]<-as.character(Alabels$V2[5])
a[Mt[,"activityID"]==as.numeric(Alabels$V1[6])]<-as.character(Alabels$V2[6])
dd$

tidydata<-cbind(Mt[,"subjectID"],a,Mt[,as.character(featuresShort)])
colnames(tidydata)[1]<-"subjectID"
colnames(tidydata)[2]<-"activityID"

write.table(tidydata, "/Users/dbellomo/R sandbox/GettingCleaningData/Project/tidyData.txt", sep="\t")



#cbind(dataRaw$sujectID,dataRaw$activity,ID,Mt)
#M<-sapply(splitdata,function(x) colMeans(x[, as.character(featuresShort)]))



