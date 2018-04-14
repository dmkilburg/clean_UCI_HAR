
## ------- Load all relevent libraries -------- ##

library(tidyr)
library(tidyverse) ## contains dplyr


## ------- Some functions used to format the feature names ---------- ##

firstElement <- function(x){x[1]}
secthirdElement <- function(x){paste0(x[2],x[3])}


## ------- Load all the relevent data -------- ##

X_train <- read.csv("./train/X_train.txt",sep="",header=F,nrows=7352)
train_subject <- readLines("./train/subject_train.txt")
train_activity <- readLines("./train/y_train.txt")

X_test <- read.csv("./test/X_test.txt",sep="",header=F,nrows=2947)
test_subject <- readLines("./test/subject_test.txt")
test_activity <- readLines("./test/y_test.txt")

X_features <- readLines("features.txt")


## -------- Merge train/test data ---------- ##

X <- rbind(X_train,X_test)


## ------- Merge subject and activity sets --------- ##

subject <- c(train_subject,test_subject)
activity <- c(train_activity,test_activity)
subActivity <- cbind(subject,activity)
names(subActivity) <- c("subject","activity")


## ------- Add features to X ---------- ##

names(X) <- gsub("[0-9]+","",X_features)


## ------- Select only features with mean,meanXYZ,std, and stdXYZ --------- ##

statsFeatures <- grep("mean\\(\\)|std", X_features) # get indexes of relevent stat features
statsData <- X[,statsFeatures]


## ------- Clean up feature names --------- ##

signal_stat_names <- strsplit(names(statsData),"-")

signal <-sapply(signal_stat_names,firstElement) ## retrieve signal
stats <- sapply(signal_stat_names,secthirdElement) ## get statistic
stats <- gsub("\\(\\)","",stats) ## remove ()
signal_stats <- paste(signal,stats,sep="-") ## reformat
names(statsData) <- signal_stats


## ------- Add the subject and activity columns --------- ##

statsData <- cbind(subActivity,statsData)


## ------- Tidy the data --------- ##

statsData %>% 
  gather(key="signal_stats",value="value",-subject,-activity) %>% # gather colunmns
  separate(col=signal_stats,into=c("signal","statistic"),sep="-") %>% # sep gathered cols
  group_by_at(vars(-value)) %>%  # group by everything other than the value column. 
  mutate(row_id=1:n()) %>% ungroup() %>%  # build group index
  spread(key=statistic, value=value) %>%    # spread
  select(-row_id) -> #removes group index. assigns final "result" to result
  result


## -------- Remove the NAs in feature names --------- ##

names(result)[4] <- "mean"; names(result)[8] <- "std"


## -------- Change activity values from ID codes to strings -------- ##

result$activity <- revalue(result$activity, c("1"="walking","2"="walkingUpstairs",
                                              "3"="walkingDownstairs","4"="sitting",
                                              "5"="standing","6"="laying"))


## -------- Create the independent data set with averages -------- ##

result %>%
    group_by(subject,activity,signal) %>%
    summarise_each(funs(mean), avg_mean = mean, avg_meanX = meanX, avg_meanY = meanY,
                  avg_meanZ = meanZ, avg_std = std, avg_stdX = stdX, avg_stdY = stdY,
                  avg_stdZ = stdZ) ->
    average_result


## -------- Write to csv --------- ##


#write.csv(average_result, file = "averages.csv",row.names=FALSE)
#write.csv(result, file = "results.csv",row.names=FALSE)

## -------- Or Using write.table ------- ##

#write.table(average_result, file = "averages.txt",row.name=FALSE)
#write.table(result, file = "results.txt",row.name=FALSE)
