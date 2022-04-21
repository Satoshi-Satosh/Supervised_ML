## THE SPARKS FOUNDATION- DATA SCIENCE AND BUSINESS ANALYTICS 
### AUTHOR : RAHUL KUMAR SHAH
#### GRIP- MAR22
#### TASK 1: Prediction using Supervised Machine Learning
##### Objective: Predict the percentage of a student based on the no. of study hours
----------------------------------------------------------------------------------------
  #### To import data set 
library(readxl)
STUDENT_SCORES <- read_excel("STUDENT SCORES.xlsx")
#### To view the data in R
View(STUDENT_SCORES)
#### To attach the data 
 attach(STUDENT_SCORES)
#### To Summarize the data
 summary(STUDENT_SCORES)

#### To Call out variable names
 names(STUDENT_SCORES)


#### To make simple regression model
 mod <- lm(Scores~Hours)

#### To know the summarry of model
 summary(mod)

### To plot the data 
plot(Hours,Scores,main="STUDENT SCORES",
     xlab="No. of Hours",ylab="SCORES",cex.main=1.5,cex.lab=1.25,
     col="red",lwd=2)

#### To call the coeficient    
 coef(mod)

#### Prediction of Marks if study 9.25 hours
 2.483673 + (9.775803)*9.25
         #or using code
 predict(mod, newdata = data.frame(Hours=9.25))

