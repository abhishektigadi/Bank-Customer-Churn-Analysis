CREATE TABLE bank_churn (
		CreditScore       INT,
		Geography         VARCHAR(50),
		Gender            VARCHAR(50),
		Age               INT,
		Tenure            INT,
		Balance           FLOAT,
		NumOfProducts     INT,
		HasCrCard         INT,
		IsActiveMember    INT,
		EstimatedSalary   FLOAT,
		Exited            INT
);

SELECT * FROM bank_churn
LIMIT 10;

SELECT COUNT(*) FROM bank_churn;

-- Overall churn rate

SELECT
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    COUNT(*) - SUM(Exited) AS retained_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn;

-- Churn by geography

SELECT
    Geography,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY Geography
ORDER BY churn_rate DESC;

-- Churn by gender

SELECT
    Gender,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY Gender
ORDER BY churn_rate DESC;

-- Churn by age group

SELECT
    CASE
        WHEN Age <= 30 THEN '18-30'
        WHEN Age <= 40 THEN '31-40'
        WHEN Age <= 50 THEN '41-50'
        WHEN Age <= 60 THEN '51-60'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY age_group
ORDER BY churn_rate DESC;

-- Churn by tenure

SELECT
    Tenure,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY Tenure
ORDER BY Tenure;

-- Churn by active membership

SELECT
    IsActiveMember,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY IsActiveMember;

-- Churn by number of products

SELECT
    NumOfProducts,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

-- Customer segmentation

SELECT
    CASE
        WHEN Age < 30 THEN 'Young'
        WHEN Age < 50 THEN 'Middle-aged'
        ELSE 'Senior'
    END AS age_segment,
    IsActiveMember,
    COUNT(*) AS customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate
FROM bank_churn
GROUP BY age_segment, IsActiveMember
ORDER BY churn_rate DESC;

-- High-balance customers who churned

SELECT
    Geography,
    Age,
    CreditScore,
    Balance,
    NumOfProducts,
    IsActiveMember
FROM bank_churn
WHERE Exited = 1
AND Balance > 100000
ORDER BY Balance DESC;

-- Rank churn by geography

SELECT
    Geography,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate,
    RANK() OVER (
        ORDER BY SUM(Exited) * 100.0 / COUNT(*) DESC
    ) AS churn_rank
FROM bank_churn
GROUP BY Geography;