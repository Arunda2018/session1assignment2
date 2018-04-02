# regression analysis mainly focus on finding a relationship b/w a dependent variable 
# and one or more independent variables.

# predict the value of a dependent variable based on one or more independent variables

# coefficient explains the impact of changes in an independent variable on the dependent variable

# regression is denoted by the function: y=f(x,@)
# where y is the dependent variable, x is the dependent variable and B is the unknown coefficient

# regression is widely used in prediction and forecasting

# types of regression models--Univariate and Multivariate

# In univraiate regression--the response variable is affected by just one predictor variable
# univariate is the simplest form of statistical analysis
# Multivariate models refers when the response variable is affected by more then one predictor variables
# both Univariate and Multivariate models are further calssified into Linear and Non Linear models

# in the linear model the model is fitted in a straight line
# else all considered as non linear
#Univariate Linear regression is further classified into ---Simple and Multiple
# when one independent variable is used in regression it it called as Simple Univariate Linear rgression
# when 2 or more independent variables are used in regression it is called as Multiple Uniariate Linear rgression

faithful
#first make a scatter plot to find out is there any relationship b/w the 2 variables
attach(faithful)
plot(eruptions,waiting,xlab = "Erruption duration",ylab="time waited")
abline(lm(waiting~eruptions))

# the resultant line shows a positive relationship b/w the 2 variables
icecream = read.csv("icecream.csv")
attach(icecream)
# the factor cons(Consumtion rate is the dependent variable)
#and rest are independent or predictor variables

# for linear regression on given icecream data set
analysis = lm(cons~income+price+temp,data = icecream)
summary(analysis)

#linear regression model on rating.csv using r

rate = read.csv("rating.csv")
attach(rate)
fit = lm(salary~expereience+score,data = rate)
summary(fit)


# the final result---the salary expected will be increased 1,400 dollors for each additional year of exp, when the apttitude score is same
# and the salary expected will increase 250 dollors for each 