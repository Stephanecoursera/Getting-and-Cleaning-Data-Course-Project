# load the library
library(utils)
library(magrittr)
library(dplyr)

setwd("C:/Users/A315724/Documents/Mooc/M3S4TPFINAL/")
# 1. Merges the training and the test sets to create one data set.

#read the train and test dataset
X_train <- read.table(file = "X_train.txt")
X_test <- read.table(file = "X_test.txt")

y_train <- read.table(file = "y_train.txt")
y_test <- read.table(file = "y_test.txt")


# Merge the tran and test dataset
X_file <- rbind(X_train,X_test)
Y_file <- rbind(y_train,y_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# Load of the features
features <- read.table(file = "features.txt") %>% t()

# Association of the future with the respective columns
colnames(X_file) <- features[2,]

# Selection of the measurements on the mean and standard deviation
col <- c(setdiff(grep("mean()", features[2,]),grep("meanFreq()", features[2,])), grep("std()", features[2,])) %>% sort()
Mean_Std_Measurements <- X_file[,col]

# 3. Uses descriptive activity names to name the activities in the data set

# load of the activity names
activity_labels <- read.table(file = "activity_labels.txt")

# Add the activity code to the dataset and activity name with the left_join and rename variable with explicit names
Mean_Std_Measurements <- cbind(Mean_Std_Measurements, Y_file) %>% 
        left_join(activity_labels) %>%
        rename(activity_code = V1, activity_label = V2)

# 4. Appropriately labels the data set with descriptive variable names.

# Already done


# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# a)The subject must be added
subject_train <- read.table(file = "subject_train.txt")
subject_test <- read.table(file = "subject_test.txt")
subject <- rbind(subject_train,subject_test)

tidy_dataset <- cbind(Mean_Std_Measurements, subject) %>% 
        rename(subject = V1) %>%
        group_by(activity_label,subject) %>%
        summarise_all(funs(mean)) %>%
        mutate(activity_code =NULL)

# Generate the tidy dataset
write.table(tidy_dataset, file="tidy_dataset.txt", row.name=FALSE)

write.table(colnames(tidy_dataset), file="tidy_features.txt", row.name=FALSE)
