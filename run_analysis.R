subject_test <- read.table("~/R working/UCI HAR Dataset/test/subject_test.txt", quote="\"")
X_test <- read.table("~/R working/UCI HAR Dataset/test/X_test.txt", quote="\"")
y_test <- read.table("~/R working/UCI HAR Dataset/test/y_test.txt", quote="\"")
subject_train <- read.table("~/R working/UCI HAR Dataset/train/subject_train.txt", quote="\"")
X_train <- read.table("~/R working/UCI HAR Dataset/train/X_train.txt", quote="\"")
y_train <- read.table("~/R working/UCI HAR Dataset/train/y_train.txt", quote="\"")
features <- read.table("~/R working/UCI HAR Dataset/features.txt", quote="\"")
features[,2] <- gsub("\\(\\)","",as.matrix(features[,2]))
features[,2] <- gsub("-",".",as.matrix(features[,2]))
features[,2] <- gsub("\\(",".",as.matrix(features[,2]))
features[,2] <- gsub("\\)","",as.matrix(features[,2]))
features[,2] <- gsub(",",".",as.matrix(features[,2]))
names(subject_test)[1] <- "Subject.number"
names(y_test)[1] <- "Activity.number"
colnames(X_test) <- features[,2]
names(subject_train)[1] <- "Subject.number"
names(y_train)[1] <- "Activity.number"
colnames(X_train) <- features[,2]
all_merged <- rbind(cbind(subject_test,y_test,X_test),cbind(subject_train,y_train,X_train))
std_colnames <- colnames(all_merged)[grep("std",colnames(all_merged))]
mean_colnames <- colnames(all_merged)[grep("mean",colnames(all_merged))]
mean_col_excl <- mean_colnames[grep("meanFreq",mean_colnames)]
real_mean_colnames <- mean_colnames[mean_colnames %in% mean_col_excl==FALSE]
only_mean_and_std <- cbind(all_merged[std_colnames],all_merged[real_mean_colnames],all_merged["Activity.number"],all_merged["Subject.number"])
only_mean_and_std$Activity.longname[only_mean_and_std$Activity.number==1] <- "Walking"
only_mean_and_std$Activity.longname[only_mean_and_std$Activity.number==2] <- "Walking Upstairs"
only_mean_and_std$Activity.longname[only_mean_and_std$Activity.number==3] <- "Walking Downstairs"
only_mean_and_std$Activity.longname[only_mean_and_std$Activity.number==4] <- "Sitting"
only_mean_and_std$Activity.longname[only_mean_and_std$Activity.number==5] <- "Standing"
only_mean_and_std$Activity.longname[only_mean_and_std$Activity.number==6] <- "Laying Down"
tidy_table <- (aggregate(. ~ Subject.number + Activity.longname, data = only_mean_and_std, FUN = mean))
write.csv(file="Tidy Data Set.txt",x=tidy_table)