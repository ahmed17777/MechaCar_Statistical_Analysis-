#DELIVERABLE 1

#Load dplyr 
library(dplyr)

#Read csv
MechaCar <- read.csv('MechaCar_mpg.csv', check.names = F,stringsAsFactors = F)

#Perform Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) #generate multiple linear regression model

#Determine summary statistics 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

#DELIVERABLE 2

#Read csv
SpnCoil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#Create PSI summary 
total_summary <- SpnCoil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Create lot summary 
lot_summary <- SpnCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
