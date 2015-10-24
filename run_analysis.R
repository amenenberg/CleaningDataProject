#BEGIN STEP 1 - combine test and train data
#install and load packages
if("plyr" %in% rownames(installed.packages()) == FALSE) {install.packages("plyr")}
library(plyr)

if("dplyr" %in% rownames(installed.packages()) == FALSE) {install.packages("dplyr")}
library(dplyr)

#load labels
features <- read.table("features.txt", header = FALSE)
#load the test files
subject_test <- read.table("test/subject_test.txt", header = FALSE)
X_test <- read.table("test/X_test.txt", header = FALSE)
y_test <- read.table("test/y_test.txt", header = FALSE)

#Assign labels
colnames(X_test) <- features[,2]
colnames(y_test) <- c("activity")
colnames(subject_test) <- c("subject")

#bind and put test files into one dataframe
test <- cbind(subject_test, y_test, X_test,"test")
colnames(test)[564] <- c("Source")

#load the train files
subject_train <- read.csv("train/subject_train.txt", header = FALSE)
X_train <- read.table("train/X_train.txt", header = FALSE)
y_train <- read.table("train/y_train.txt", header = FALSE)

#bind and put train files into one dataframe
#Assign labels
colnames(X_train) <- features[,2]
colnames(y_train) <- c("activity")
colnames(subject_train) <- c("subject")

#bind
train <- cbind(subject_train, y_train, X_train,"train")
colnames(train)[564] <- c("Source")

#combine the test and train dataframes into one -> alldataraw
alldataraw <- rbind(test, train)
str(alldataraw)
#END STEP 1

#BEGIN STEP 2 - Extract only maen and std for each measurement
#isolate only std and mean from data
cols <- colnames(alldataraw)
stdmeancols <- union(grep("*mean\\()", cols, value = FALSE), grep("*std\\()", cols, value = FALSE))
stdmeandata <- alldataraw[,c(1,2,stdmeancols)]
#END STEP 2

#BEGIN STEP 3 - Use description activity names to name activites in dataset
#load activity names
activities <- read.table("activity_labels.txt", header = FALSE)
colnames(activities) <- c("activity", "activityname")

#join to rest of data
stdmeandata2 <- join(stdmeandata, activities)
stdmeandata2 <- stdmeandata2[,c(1,3:69)]
#END STEP 3

#BEGIN STEP 4 - Appropriately label data set with descriptive variable names
#make a vector of labels, clean up labels
labels <- names(stdmeandata2)
labels <- gsub("\\()","",labels)
labels <- gsub("std","standarddeviation", labels)
labels <- gsub("-","", labels)
labels <- gsub("Acc", "acceleration", labels)
labels <- gsub("BodyBody","Body", labels)
labels <- tolower(labels)
labels

#rename columns using vector of cleaned up labels
colnames(stdmeandata2) <- labels
#END STEP 4

#BEGIN STEP 5 - table of avg of each variable by test subject and activity
grouped <- group_by(stdmeandata2, activityname, subject)
summary <- summarise_each(grouped, funs(mean))
write.table(summary, row.names = FALSE, file = "results.txt")





