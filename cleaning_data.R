library(tidyr)
library(ggplot2)
library(datasets)

  Data = read.table("student-mat.csv",sep=";",header=TRUE)
  
  #"GP" - Gabriel Pereira or "MS" - Mousinho da Silveira
  Data$school <- recode(Data$school, "GP"="1", "MS"="2") 
  Data$school <- as.integer(Data$school)
  
  Data$sex <- recode(Data$sex, "M"="1", "F"="2") 
  Data$sex <- as.integer(Data$sex)
  
  #U-urban, R-rural
  Data$address <- recode(Data$address, "U"="1", "R"="2") 
  Data$address <- as.integer(Data$address)
  
  #"LE3" - less or equal to 3 or "GT3" - greater than 3
  Data$famsize <- recode(Data$famsize, "LE3"="1", "GT3"="2") 
  Data$famsize <- as.integer(Data$famsize)
  
  #Parents: "T" - living together or "A" - apart
  Data$Pstatus <- recode(Data$Pstatus, "T"="1", "A"="2") 
  Data$Pstatus <- as.integer(Data$Pstatus)
  
  #"teacher", "health" care related, civil "services" (e.g. administrative or police), "at_home" or "other"
  Data$Mjob <- recode(Data$Mjob, "teacher"="1", "health"="2", "services" = "3", "at_home"="4", "other"="5") 
  Data$Mjob <- as.integer(Data$Mjob)
  
  #"teacher", "health" care related, civil "services" (e.g. administrative or police), "at_home" or "other"
  Data$Fjob <- recode(Data$Fjob, "teacher"="1", "health"="2", "services" = "3", "at_home"="4", "other"="5") 
  Data$Fjob <- as.integer(Data$Fjob)
  
  #reason to choose this school: close to "home", school "reputation", "course" preference or "other"
  Data$reason <- recode(Data$reason, "home"="1", "reputation"="2", "course" = "3","other"="4") 
  Data$reason <- as.integer(Data$reason)
  
  #student's guardian: "mother", "father" or "other")
  Data$guardian <- recode(Data$guardian, "mother"="1", "father"="2", "other"="3") 
  Data$guardian <- as.integer(Data$guardian)
  
  #extra educational support: 1-yes, 2-no
  Data$schoolsup <- recode(Data$schoolsup, "yes"="1", "no"="2") 
  Data$schoolsup <- as.integer(Data$schoolsup)
  
  #family educational support: 1-yes, 2-no
  Data$famsup <- recode(Data$famsup, "yes"="1", "no"="2") 
  Data$famsup <- as.integer(Data$famsup)
  
  #extra paid classes within the course subject: 1-yes, 2-no
  Data$paid <- recode(Data$paid, "yes"="1", "no"="2") 
  Data$paid <- as.integer(Data$paid)
  
  # extra-curricular activities: 1-yes, 2-no
  Data$activities <- recode(Data$activities, "yes"="1", "no"="2") 
  Data$activities <- as.integer(Data$activities)
  
  #attended nursery school: 1-yes, 2-no
  Data$nursery <- recode(Data$nursery, "yes"="1", "no"="2") 
  Data$nursery <- as.integer(Data$nursery)
  
  #wants to take higher education: 1-yes, 2-no
  Data$higher <- recode(Data$higher, "yes"="1", "no"="2") 
  Data$higher <- as.integer(Data$higher)
  
  #Internet access at home: 1-yes, 2-no
  Data$internet <- recode(Data$internet, "yes"="1", "no"="2") 
  Data$internet <- as.integer(Data$internet)
  
  #with a romantic relationship: 1-yes, 2-no
  Data$romantic <- recode(Data$romantic, "yes"="1", "no"="2") 
  Data$romantic <- as.integer(Data$romantic)
  
  write.csv(Data,"srudent-math.csv")

