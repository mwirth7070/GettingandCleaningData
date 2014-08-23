#import and combine sensor output data:

testx = read.table("X_test.txt")
trainx = read.table("X_train.txt")

totalcore <- rbind(testx, trainx) #all observed data

#use features file to name column headers:

features = read.table("features.txt")
colnames(totalcore) <- features[[2]]

#filter measurements to include only those for mean and std:

meanData <- totalcore[,grepl("mean", colnames(totalcore))] 
stdData <- totalcore[,grepl("std", colnames(totalcore))] 

refineData <- cbind(meanData, stdData) #combines the filtered mean and std columns

#add activity labels:

activity = read.table("activity_labels.txt")

testy = read.table("y_test.txt")
trainy = read.table("y_train.txt")

subjecttest = read.table("subject_test.txt")
subjecttrain = read.table("subject_train.txt")

#convert activity numbers into corresponding descriptions:

testy[[1]] <- factor(testy[[1]],levels = c(1:6),labels = activity[[2]])
trainy[[1]] <- factor(trainy[[1]],levels = c(1:6),labels = activity[[2]])

#binging the files and adding the activity header:

totalactivity <- rbind(testy, trainy) #table with named activity for each subject

colnames(totalactivity) <- c("activity") #adds "activity" header

totalsubject <- rbind(subjecttest, subjecttrain) #creates column identifying each subject

colnames(totalsubject) <- c("subject") #adds "subject header

#finish with binding:

finaloutput <- cbind(refineData, totalsubject, totalactivity)

#add averaged results by subject and activity

bySubject <-finaloutput$subject

byActivity <-finaloutput$activity

AveragedResults <- aggregate(x=finaloutput[,1:79],by = list(bySubject,byActivity),FUN="mean")

#names added columns

colnames(AveragedResults)[1] <- c("Subject")

colnames(AveragedResults)[2] <- c("Activity")

#exports to txt file

write.table(AveragedResults, "tidydata.txt", row.names=F)
