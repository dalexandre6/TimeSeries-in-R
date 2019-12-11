# Set the working Directory (Where you place your file)
#Create a vector to store the file and Import the file:

RevenuesQ <- read.csv('RevenueQuarters.csv')

#Create a Vector with the data you want to work with.
#In this case, I just want to analyze Product 1 which is on the column 3.
#So I create a new vector that includes only column 3.

RevenueP1 <- RevenuesQ[3]


#Numerical Measures:
summary(RevenueP1)

#Transform data into a timeserie object:
#Press F1 if you need help with the ts (or any function). 
#You should hover over the function first:
#Make sure you know what's the stat and end data you want for the analysis. 
#In this case, we have the data split in Quarters, so we use frequency = 4.
RevenuesTS <- ts(RevenueP1, start = c(2000,1), end = c(2020,4), frequency = 4)

#If printed, it will display the data by Quarters.
print(RevenuesTS)

#Finally Plot the results:

plot(RevenuesTS)



