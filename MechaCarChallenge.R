#DELIVERABLE 1

#Load dplyr 
library(dplyr)

#Read csv
MechaCar <- read.csv('MechaCar_mpg.csv', check.names = F,stringsAsFactors = F)

#Perform Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar) #generate multiple linear regression model

#Determine summary statistics 
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))

