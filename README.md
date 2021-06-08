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

![1](https://user-images.githubusercontent.com/45697471/121124026-3b8c5e00-c7f2-11eb-92f1-d7fb5774a6a4.png)
![2](https://user-images.githubusercontent.com/45697471/121124029-3cbd8b00-c7f2-11eb-814a-d22514f40e3b.png)


Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- As we can see from the P-scores returned from the summary of the regression model, the variables that statistically provided a non-random amount of variance to the mpg values were: vehicle weight, spoiler angle, and AWD. This is true because they all returned a p-value above 0.05, which was our significance level. 

Is the slope of the linear model considered to be zero? Why or why not?
- The p-value of this linear model is 5.35e-11. This value is smaller than the signifiance level of 0.05%, meaning we can reject our null hypothesis. This means that the slope of this linear model is not zero. 

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
- The r-squared value of our linear model is 0.7149, meaning that approximately 71% of all mpg predictions will be correct using this model. Therefore, it is safe to say that this linear model predicts MechaCar mpg effectively. 

## Summary Statistics on Suspension Coils 

This section of the analysis answers the following question: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- As shown in the image, the summary statistics for the summary coils are as follows: Mean = 1498.78, Median = 1500, Variance = 62.29356, and Standard deviation = 7.892627
- Since the mean and median in our summary statistics are quite similar, we can say that the dataset has a normal distribution. 
- Based on our results, the variance is rougly 62 pounds per square inch for all the lots, which is siginificantly less than the 100 pounds per square inch requirement. Meaning the current manufacturing data for all lots meets the design specification. However, when we look at the variance figures for lot 3, specifically, the variance value is 170, which is much higher than the design specification. For this reason, we can conclude that only lots 1 and 2 meet the design specification when looked at individually. 

## T-Tests on Suspension Coils 

- The one-sample t-test was used to figure out if there is a statistical difference in PSI across all manufacturing lots from the population mean of 1,500 pounds per square inch. As we can see from the image, this test returned a p-score of 0.06028, which is greater than our significance level of 0.05, meaning that we cannot reject the null hypothesis. Therefore, the two means are statistically similar. 
- When conducting the same t-test using the subset() argument to determine if the PSI for *each* manufacturing lot is statiscally different from the population mean of 1,500 pounds per square inch, we find that Lot 1 and 2 return a p-value greater than 0.05. However Lot 3 returns a p-value of 0.04168. This means that we can reject the null hypothesis for this lot and that the two means are not statistically similar. 

## Study Design: MechaCar vs Competition 

Metrics that are of interest to consumers when considering vehicle performance are: cost, fuel efficiency (city or highway), horsepower, maintenance cost, and safety ratings. In this section, I will be writing a brief description of a statistical study that can be done on vehicle fuel efficiency to quantify how MechaCar performs against the competition. 

Fuel efficiency measures how far a vehicle can travel per unit of fuel. Customers look for vehicles with higher fuel efficiency as they require less gas to drive longer distances, and because fuel efficient vehicles are considered to be better for the environment. Fuel efficiency can be measured in MPG or L/100K. What we can look at in this study is whether MechaCars has a higher MPG than its competitors. One test that can be used to test our hypothesis is the one-way ANOVA test, which is used to test the means of a single dependent variable across a single independent variable with multiple groups. In our case, we can look at fuel efficiency of different cars based on vehicle class. In this test, our hypothesis would be: 
- H0 : The means of all groups are equal, or µ1 = µ2 = … = µn.
- Ha : At least one of the means is different from all other groups.
This means that the null hypothesis is that means of all mpgs of all groups are equal. The alternative hypothesis is that at least one of the means is different from all other groups.

The data we would need for this study includes: 
- Vehicle classes (eg. Sedan, SUV, Compact, etc)
- MPG data 


### Contact 
Email: mishaal22s@gmail.com 

