import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score
import matplotlib.pyplot as plt

# Step 1: Data Cleaning
dataset = pd.read_excel(r"C:\Users\Hp\Downloads\weather-1.xlsx")
dataset_cleaned = dataset.dropna()  # Drop rows with missing values

# Define features (X) and target (y)
X = dataset_cleaned[[
    "Basel Growing Degree Days [2 m elevation corrected]",
    "Basel Wind Speed [10 m]",
    "Basel Wind Direction [10 m]"
]]
y = dataset_cleaned["Basel Temperature [2 m elevation corrected]"]

# Step 2: Split data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Step 3: Train the Linear Regression model
linear_regressor = LinearRegression()
linear_regressor.fit(X_train, y_train)

# Step 4: Predict and evaluate the model
y_pred = linear_regressor.predict(X_test)

# Calculate evaluation metrics
mae = mean_absolute_error(y_test, y_pred)
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

# Print the evaluation metrics
print("Mean Absolute Error (MAE):", mae)
print("Mean Squared Error (MSE):", mse)
print("R² Score:", r2)

# Print Prediction comparision
yPrediction = pd . DataFrame ({'Actual': y_pred . flatten () , 'Predict' : y_pred.flatten()})
print( yPrediction )

# Step 5: Visualization of Predictions vs Actual
plt.figure(figsize=(10, 6))
plt.scatter(y_test, y_pred, color='grey', alpha=0.5)
plt.plot([min(y_test), max(y_test)], [min(y_test), max(y_test)], color='red', linestyle='--')
plt.title("Predicted vs Actual Basel Temperature")
plt.xlabel("Actual Basel Temperature")
plt.ylabel("Predicted Basel Temperature")
plt.savefig('/home/sheikh_zaid/MyTasks/Aiml/Regression(1).png', dpi=300, bbox_inches='tight')
plt.show()
