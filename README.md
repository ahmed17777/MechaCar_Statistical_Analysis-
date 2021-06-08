# MechaCar Statistical Analysis 

Syed Ahmed 
June 7, 2021

## Overview 
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, I will be doing the following: 
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

## Linear Regression to Predict MPG 
Using the MechaCar_mpg.csv dataset, I designed a linear regression model that predicts the mpg of MechaCar prototypes using variables such as: vehicle length, weight, ground clearance, drivetrain (AWD), and spoiler angle. Here are the results of my model: 

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- As we can see from the P-scores returned from the summary of the regression model, the variables that statistically provided a non-random amount of variance to the mpg values were: vehicle weight, spoiler angle, and AWD. This is true because they all returned a p-value above 0.05, which was our significance level. 

Is the slope of the linear model considered to be zero? Why or why not?
- The p-value of this linear model is 5.35e-11. This value is smaller than the signifiance level of 0.05%, meaning we can reject our null hypothesis. This means that the slope of this linear model is not zero. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- The r-squared value of our linear model is 0.7149, meaning that approximately 71% of all mpg predictions will be correct using this model. Therefore, it is safe to say that this linear model predicts MechaCar mpg effectively. 
