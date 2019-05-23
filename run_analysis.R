
# load dplyr library
library(dplyr)

#set working direcetory
setwd("UCI HAR Dataset")

# read features and label data
feat <- read.table("features.txt")
actlab <- read.table("activity_labels.txt") 

#read training data
xtrain <- read.table("./train/X_train.txt")
ytrain <- read.table("./train/Y_train.txt")
strain <- read.table("./train/subject_train.txt")

# read testing data
xtest <- read.table("./test/X_test.txt")
ytest <- read.table("./test/y_test.txt")
stest <- read.table("./test/subject_test.txt")

#Merge train and test data
xall <- rbind(xtrain, xtest)
yall <- rbind(ytrain, ytest)
sall <- rbind(strain, stest)

#get mean and stdv
sel_feat <- feat[grep(".*mean\\(\\)|std\\(\\)", feat[,2], ignore.case = FALSE),]
xall <- xall[,sel_feat[,1]]

#name activities in dataset
colnames(yall) <- "activity"
yall$actlab <- factor(yall$activity, labels = as.character(actlab[,2]))
ylabel <- yall[,-1]

#add description labels
colnames(xall) <- feat[sel_feat[,1],2]

#create tidy data
total <- cbind(xall, ylabel, sall)
tot_mean <- total %>% group_by(ylabel, subject) %>% summarize_each(funs(mean))
write.table(tot_mean, file="tidydata.txt", row.names = FALSE, col.names = FALSE)


