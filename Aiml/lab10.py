# Implement the example given in the manual and elaborate the results.

import numpy as np
import matplotlib . pyplot as plt
import pandas as pd
from sklearn . model_selection import train_test_split
from sklearn . linear_model import LinearRegression
from sklearn import metrics

dataset = pd . read_excel ( r"C:\Users\Hp\Downloads\SalaryAge.xlsx ")
x = dataset ['YearsExperience']. values . reshape ( -1 ,1)
y = dataset ['Salary']. values . reshape ( -1 ,1)


xTrain , xTest , yTrain , yTest = train_test_split (x ,y , test_size =0.4 ,
random_state = 0)

linearRegressor = LinearRegression ()
linearRegressor.fit( xTrain , yTrain )

yPredict = linearRegressor.predict( xTest )

yPrediction = pd . DataFrame ({'Actual': yTest . flatten () , 'Predict' : yPredict.flatten()})
print( yPrediction )

# dataset . plot ( x = 'YearsExperience' , y ='Salary', style ='o')
# plt . title ('YearsExperience vs Salary' )
# plt . xlabel ('YearsExperience')
# plt . ylabel ('Salary')
# plt . show ()

plt . scatter ( xTrain , yTrain , color = 'red', marker= '*')
plt . plot ( xTrain , linearRegressor . predict ( xTrain ) , color = 'blue')
plt . title ('Salary vs Experience ( Training set )')
plt . xlabel ('Years of Experience ')
plt . ylabel ('Salary')
plt . savefig (r"/home/sheikh_zaid/MyTasks/Aiml/SalaryVSExperience.png",dpi = 300, bbox_inches = 'tight')
plt . show ()

print ('Mean Absolute Error :', metrics . mean_absolute_error ( yTest , yPredict )
)
print ('Mean Squared Error :', metrics . mean_squared_error ( yTest , yPredict ) )
print ('Root Mean Squared Error :', np . sqrt ( metrics . mean_squared_error ( yTest
, yPredict ) ) )

# elaboration:
# the result shows the accuracy of prediction with respect to the 20 % of training data set provided , it predicts the linear regression with help of slope and intesept of rows