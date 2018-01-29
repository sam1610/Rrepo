origData<- read.csv2()
nrow(origData)
airport <- c("", "", ...)
nrow(origData)
heaad(origData,2)
tail(origData,2)
origData$X <- Null
cor(origData[c("ORIGIN_Airport_Seq_ID", "ORIGIN_Airport_ID" )])
supprimer les  champs superflux:
    Dest_airport_seq_ID



mismatched <- origData[origData$CARRIER !=origData$UNIQUE_CARRIER,]
nrow(mismatched)
 supprimer les champs:
    UNIQUE_CARRIER

suppeimer les hsmps vides ou bien  nn mumeriques

onTimeData <-  originData[!is.na(origData$ARR_DEL15) & origData$ARR_DEL15 !="" !is.na(origData$DEP_DEL15) & origData$DEP_DEL15="",]
nrow(origData)
convert certain champ en Numerique :
 onTimeData$Distance <- as.integer(onTimeData$Distance)
 idem pour Canceled, diverted,
 
 convert following fields to factors:
  onTimeData$arr_del15 <- as.factor(onTimeData$arr_del15)
idem for the following  fields:
  arr_del15, dep_del15, dest_airport_id, day_of_week
 Dest, Origin, Dep_time_blk, Carrier 

#   revenir sur les regles   :  DATA  Rules:




Machine learning Workflow

Asking the right Question => preparing data => Slecting algorithm => training The mode => Testign the Model 

STEPS:
Review Data source
DOwnloaded DAta from DOT Site
Used R to load CSV file 
Cleaned up data 
Molded DAta 



