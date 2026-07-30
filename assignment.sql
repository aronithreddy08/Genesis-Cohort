%sql
CREATE OR REPLACE TABLE Customers (
    CustomerName STRING,
    CustomerID INT,
    City STRING,
    AccountType STRING,
    Balance INT,
    LoanAmount INT
);
INSERT INTO Customers VALUES
('John',101,'Dallas','Savings',5000,10000),
('Mary',102,'Austin','Current',2500,5000),
('David',103,'Dallas','Savings',8000,0),
('Emma',104,'Houston','Savings',1500,3000),
('Alex',105,'Austin','Current',7000,12000),
('Sophia',106,'Dallas','Savings',5000,8000);
SELECT CustomerName, City, Balance, LoanAmount
FROM Customers;

SELECT DISTINCT City
FROM Customers;

SELECT *
FROM Customers
ORDER BY LoanAmount DESC;

SELECT *
FROM Customers
ORDER BY LoanAmount DESC
LIMIT 5;

SELECT COUNT(*) AS TotalCustomers
FROM Customers;

SELECT SUM(LoanAmount) AS TotalLoanAmount
FROM Customers;

SELECT MIN(Balance) AS MinimumBalance
FROM Customers;

SELECT MAX(Balance) AS MaximumBalance
FROM Customers;

SELECT AVG(Balance) AS AverageBalance
FROM Customers;
