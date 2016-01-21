# read in key libraries

library(data.table)
library(plyr)
library(dplyr)

# set working directory

setwd("C:/Users/Spoere01/Desktop/RCoursera/Cleaningdata/UCI_Dataset/UCI_HAR")


### Part 1 - Prepare initial data set

#read in data

features <- read.table(file="features.txt", header=FALSE)

trainobs <- as.data.frame(fread(input="train/X_train.txt", header=FALSE))
trainsubjects <- as.data.frame(fread(input="train/Subject_train.txt", header=FALSE))
trainactivities <- as.data.frame(fread(input="train/y_train.txt", header=FALSE))

testobs <- as.data.frame(fread(input="test/X_test.txt", header=FALSE))
testsubjects <- as.data.frame(fread(input="test/Subject_test.txt", header=FALSE))
testactivities <- as.data.frame(fread(input="test/y_test.txt", header=FALSE))

# Pull out only mean and standard deviation metrics
keyfeatures <- grep("mean\\()|std\\()",features$V2)
keyfeaturesnames <- grep("mean\\()|std\\()",features$V2,value=TRUE)

# Remove all non text symbols
keyfeaturesnamesclean<- tolower(gsub("-|\\()","",keyfeaturesnames))


#Subset training and test data sets on only relevant variables
trainobskeyfeatures <- trainobs[,keyfeatures]
testobskeyfeatures <- testobs[,keyfeatures]




#Rename two primary category variables
names(trainobskeyfeatures)<- keyfeaturesnamesclean
names(trainsubjects) <- "subject"
names(trainactivities) <- "activity"

names(testsubjects) <- "subject"
names(testactivities) <- "activity"


#Recode Activity variable for training and test data sets
activitytype <- data.frame(activity=1:6, activityname=c("walkingnormal","walkingupstairs","walkingdownstairs","sitting","standing","laying"))

trainactivities2 <- join(trainactivities,activitytype,by="activity",type="left",match="all")
trainfull <- cbind(trainsubjects,activitytype=trainactivities2$activityname,trainobskeyfeatures)

testactivities2 <- join(testactivities,activitytype,by="activity",type="left",match="all")
testfull <- cbind(testsubjects,activitytype=testactivities2$activityname,testobskeyfeatures)


# Rename the important metric variables with more descriptive names

names(trainfull) <- sub("^t","timesignal",names(trainfull))
names(trainfull) <- sub("^f","fouriersignal",names(trainfull))
names(trainfull) <- sub("bodybody","body",names(trainfull))

names(trainfull) <- sub("acc","acceleration",names(trainfull))
names(trainfull) <- sub("mag","magnitude",names(trainfull))

names(trainfull) <- sub("x$","xaxis",names(trainfull))
names(trainfull) <- sub("y$","yaxis",names(trainfull))
names(trainfull) <- sub("z$","zaxis",names(trainfull))



#Create new variable indicating training or test data
trainfull[,69] <- "training"
testfull[,69] <- "test"
trainfull <-rename(trainfull,trainingortestdata=V69)




#append the train and test data sets
names(testfull) <- names(trainfull)
totaldata <- rbind(trainfull,testfull)


### Part 2 - Create tidy data set

#Reorder Variables (trainortestdata variable right after subject and activity)
totaldata2 <- totaldata[,c(1,2,69,3:68)]

# Create subject/activity groups and obtain means for key metric variables by the groups
by_group <- group_by(totaldata2,subject,activitytype,trainingortestdata)
summarizedata <- summarise_each(by_group,funs(mean))




