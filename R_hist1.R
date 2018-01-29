pwd
pwd
setwd("~/Documents/project/DataScience")
originData <- read.csv2('DOT_ONTIME.csv',
sep=",",
header = TRUE,
stringsAsFactors =FALSE)
nrow(originData)
nrow(originData)
airports <- c("ATL", "LAX", "ORD", "DFW", "JFK", "SFO", "CLT", 'LAS', "PHX")
originData <- subset(originData, DEST %in% airports & ORIGIN %in% airports)
nrow(originData)
head(originData,2)
tail(originData,2)
tapply(onTineData$ARR_DEL15, onTineData$ARR_DEL15, length)
tapply(onTineData$ARR_DEL15, onTimeData$ARR_DEL15, length)
setwd("~/Documents/project/DataScience")
originData <- read.csv2('DOT_ONTIME.csv',
sep=",",
header = TRUE,
stringsAsFactors =FALSE)
nrow(originData)
airports <- c("ATL", "LAX", "ORD", "DFW", "JFK", "SFO", "CLT", 'LAS', "PHX")
originData <- subset(originData, DEST %in% airports & ORIGIN %in% airports)
nrow(originData)
head(originData,2)
tail(originData,2)
originData$X <- NULL
head(originData,15)
cor(originData[c("ORIGIN_AIRPORT_ID", "ORIGIN_AIRPORT_SEQ_ID")])
cor(originData[c("DEST_AIRPORT_ID", "DEST_AIRPORT_SEQ_ID")])
originData$ORIGIN_AIRPORT_SEQ_ID <- NULL
originData$DEST_AIRPORT_SEQ_ID <- NULL
mismatched <- originData[originData$CARRIER != originData$UNIQUE_CARRIER,]
nrow(mismatched)
originData$UNIQUE_CARRIER <- NULL
head(originData,2)
narrow(originData)
nrow(originData)
head(originData,2)
onTimeData <- originData[!is.na(originData$ARR_DEL15) & originData$ARR_DEL15 !="" & !is.na(originData$DEP_DEL15) & originData$DEP_DEL15 !="",]
nrow(onTimeData)
onTimeData$DISTANCE <- as.integer(onTimeData$DISTANCE)
onTimeData$DIVERTED <- as.integer(onTimeData$DIVERTED)
onTimeData$CANCELLED <- as.integer(onTimeData$CANCELLED)
onTimeData$ARR_DEL15 <- as.factor(onTimeData$ARR_DEL15)
onTimeData$DEP_DEL15 <- as.factor(onTimeData$DEP_DEL15)
onTimeData$DEST_AIRPORT_ID <- as.factor(onTimeData$DEST_AIRPORT_ID)
onTimeData$ORIGIN_AIRPORT_ID <-  as.factor(onTimeData$ORIGIN_AIRPORT_ID)
onTimeData$DAY_OF_WEEK <-  as.factor(onTimeData$DAY_OF_WEEK)
onTimeData$DEST <- as.factor(onTimeData$DEST)
onTimeData$ORIGIN  <- as.factor(onTimeData$ORIGIN)
onTimeData$DEP_TIME_BLK  <-  as.factor(onTimeData$DEP_TIME_BLK)
onTimeData$CARRIER  <- as.factor(onTimeData$CARRIER)
tapply(onTimeData$ARR_DEL15, onTimeData$ARR_DEL15, length)
6460/(norow(onTimeData))
6460/(nrow(onTimeData))
install.packages('caret')
library(caret)
set.seed(1235)
featuresCols <- c('ARR_DEL15', 'DAY_OF_WEEK', 'CARRIER', 'DEST', 'ORIGIN', 'DEP_TIME_BLK')
onTimeDataFiltered <- onTimeData[,featuresCols]
inTrainRows <- createDataPartition(onTimeDataFiltered$ARR_DEL15, p=0.7, list = FALSE)
head(inTrainRows)
head(inTrainRows, 10)
View(inTrainRows)
View(inTrainRows)
View(onTimeDataFiltered)
View(onTimeData)
View(originData)
trainDataFiltered <- onTimeDataFiltered[inTrainRows,]
trainDataFiltered <- onTimeDataFiltered[inTrainRows,]
testDataFiltered <- onTimeDataFiltered[,inTrainRows]
testDataFiltered <- onTimeDataFiltered[-inTrainRows,]
logisticRegModel <- train(ARR_DEL15 ~ . , data = trainDataFiltered, method= 'glm', family='binomial')
logisticRegModel <- train(ARR_DEL15 ~ . , data = trainDataFiltered, method= 'glm', family='binomial')
install.packages('e1071', dependencies=TRUE)
logisticRegModel <- train(ARR_DEL15 ~ . , data = trainDataFiltered, method= 'glm', family='binomial')
logisticRegModel
logRegPrediction  <- predict(logisticRegModel, testDataFiltered)
logRegConfMat <- confusionMatrix(logRegPrediction, testDataFiltered[,'ARR_DEL15'])
logRegConfMat
1904/(1904+34)
library(randomForest)
rfModel <- randomForest(trainDataFiltered[-1], trainDataFiltered$ARR_DEL15, proximity = TRUE, importance = TRUE )
# exclude the first colomn
rfModel <- randomForest(trainDataFiltered[-1], trainDataFiltered$ARR_DEL15, proximity = TRUE, importance = TRUE )
