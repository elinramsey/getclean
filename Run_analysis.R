library(dplyr)

setwd("~/Documents/CourseraDS/UCI HAR Dataset")

#Load mapping tables
feature_name <- read.table("features.txt")
activity_labels <- read.table("activity_labels.txt")
names(activity_labels) <- c("Activity_Index","Activity_Label")

#load train
train_x <- read.table("train/x_train.txt")
train_y <- read.table("train/y_train.txt")
train_sub <- read.table("train/subject_train.txt")

#clean train
names(train_x) <- feature_name[,2]
names(train_y) <- "Activity_Index"
names(train_sub) <- "Subject_Index"
train_x <- train_x[,grep("mean()|std()",colnames(train_x))]
train_info <- bind_cols(train_y,train_sub)
train_all <- bind_cols(train_info,train_x)

#load test
test_x <- read.table("test/x_test.txt")
test_y <- read.table("test/y_test.txt")
test_sub <- read.table("test/subject_test.txt")

#Clean test
names(test_x) <- feature_name[,2]
names(test_y) <- "Activity_Index"
names(test_sub) <- "Subject_Index"
test_x <- test_x[,grep("mean()|std()",colnames(test_x))]
test_info <- bind_cols(test_y,test_sub)
test_all <- bind_cols(test_info,test_x)

#combine
data <- bind_rows(train_all,test_all)

#Summarize
data <- full_join(activity_labels,data,by = "Activity_Index")
data <- select(data,-Activity_Index)
data <- data %>% group_by(Activity_Label,Subject_Index) %>% summarise_each(funs(mean))
write.table(data, "tidy_output.txt",row.name=FALSE)