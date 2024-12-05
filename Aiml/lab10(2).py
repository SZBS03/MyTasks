from sklearn.datasets import fetch_california_housing
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score
import matplotlib.pyplot as plt
import pandas as pd

# Step 1: Load the Boston Housing dataset
housing = fetch_california_housing()
X = housing.data
y = housing.target

# Step 2: Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Step 3: Train the Linear Regression model
linear_regressor = LinearRegression()
linear_regressor.fit(X_train, y_train)

# Step 4: Make predictions
y_pred = linear_regressor.predict(X_test)
yPredicted = pd.DataFrame({'Actual Housing Prices': y_test.flatten(), 'Predicted Housing Prices': y_pred.flatten()})
print(yPredicted)

# Step 5: Evaluate the model
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

# Step 6: Print the evaluation results
print("Mean Squared Error (MSE):", mse)
print("R² Score:", r2)

# Step 7: Visualize the predictions vs actual values
plt.figure(figsize=(10, 6))
plt.scatter(y_test, y_pred, color='blue', alpha=0.6)
plt.plot([min(y_test), max(y_test)], [min(y_test), max(y_test)], color='red', linestyle='--')
plt.title("Predicted vs Actual House Prices (california)")
plt.xlabel("Actual House Prices")
plt.ylabel("Predicted House Prices")
plt.savefig(r"/home/sheikh_zaid/MyTasks/Aiml/Regression_House_Prices.png" , dpi = 300, bbox_inches = 'tight')
plt.show()
