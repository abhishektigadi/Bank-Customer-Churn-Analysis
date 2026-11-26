# 🏦 Bank Customer Churn Analysis

## 📌 Project Overview

This project focuses on analyzing bank customer churn to identify patterns, customer segments, and factors associated with customer attrition. Using Python, SQL, and Power BI, the project explores customer demographics, banking activity, account balances, product usage, and customer retention.

The objective is to derive actionable business insights that can help a bank understand customer churn and develop data-driven retention strategies.

---

## 🎯 Business Problem

Customer churn is a major challenge for banking institutions, as losing customers can affect revenue, customer relationships, and long-term business growth.

The goal of this project is to analyze customer data to answer key business questions:

- What is the overall customer churn rate?
- Which geographical regions have higher customer churn?
- Which age groups are more likely to leave the bank?
- Does customer activity influence retention?
- Does the number of banking products affect churn?
- How do tenure, balance, and credit score relate to customer churn?
- Which customer segments should the bank prioritize for retention?

---

## 📊 Dataset Description

The dataset contains **10,000 bank customer records** with demographic, financial, and banking-related information.

| Column | Description |
|---|---|
| CreditScore | Customer credit score |
| Geography | Customer's geographical location |
| Gender | Customer gender |
| Age | Customer age |
| Tenure | Number of years the customer has been with the bank |
| Balance | Customer account balance |
| NumOfProducts | Number of bank products held |
| HasCrCard | Whether the customer owns a credit card |
| IsActiveMember | Whether the customer is an active member |
| EstimatedSalary | Estimated customer salary |
| Exited | Whether the customer has left the bank (1 = Yes, 0 = No) |

The original dataset also contains customer identifiers and surname fields, which were excluded from the analytical dataset.

---

## 🛠️ Tools & Technologies

- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** PostgreSQL
- **Power BI:** Interactive dashboards, DAX measures, data visualization
- **Jupyter Notebook / Google Colab:** Data analysis and exploration
- **GitHub:** Project documentation and version control

---

## 🔍 Project Workflow

### 1. Data Cleaning & Preparation — Python

- Loaded and explored the dataset using Pandas.
- Inspected data types, missing values, and duplicate records.
- Removed unnecessary customer identifier and surname columns.
- Validated categorical variables.
- Prepared a cleaned dataset for further analysis.

### 2. Exploratory Data Analysis (EDA) — Python

Performed exploratory analysis to understand customer churn patterns across different attributes.

**Analysis performed:**

- Overall customer churn and retention analysis.
- Churn analysis by geography.
- Churn analysis by gender.
- Age group segmentation.
- Customer tenure analysis.
- Active vs. inactive customer analysis.
- Churn analysis by number of banking products.
- Account balance segmentation.
- Credit score segmentation.

**Libraries used:**

- Pandas
- NumPy
- Matplotlib
- Seaborn

### 3. SQL Analysis — PostgreSQL

Used SQL to answer business questions and perform customer segmentation.

**SQL concepts used:**

- SELECT, WHERE, GROUP BY, ORDER BY
- Aggregate functions (COUNT, SUM, AVG)
- CASE WHEN
- Common Table Expressions (CTEs)
- Window functions
- Customer segmentation
- Churn rate calculations

### 4. Dashboard Development — Power BI

Developed an interactive Power BI dashboard to visualize customer churn metrics and segment-level insights.

**Dashboard KPIs:**

- Total Customers
- Churned Customers
- Retained Customers
- Customer Churn Rate
- Customer Retention Rate

**Visualizations:**

- Customer churn distribution
- Churn by geography
- Churn by gender
- Churn by age group
- Churn by tenure
- Churn by number of products
- Churn by active membership
- Churn by account balance
- Churn by credit score

**Interactive features:**

- Geography slicer
- Gender slicer
- Age group slicer
- Active membership filter

---

## 📈 Key Business Metrics

| Metric | Definition |
|---|---|
| Total Customers | Total number of customers in the dataset |
| Churned Customers | Customers who exited the bank |
| Retained Customers | Customers who remained with the bank |
| Churn Rate | Percentage of customers who exited |
| Retention Rate | Percentage of customers who remained |

---

## 💡 Business Insights & Recommendations

The analysis aims to identify customer segments with higher churn rates and provide actionable recommendations for improving customer retention.

Potential recommendations include:

- Develop targeted retention strategies for customer segments with higher churn rates.
- Improve engagement with inactive customers through personalized campaigns.
- Analyze customer age groups and geographical regions to identify retention opportunities.
- Review customer product usage and banking experience.
- Introduce proactive engagement programs for customers exhibiting higher churn patterns.
- Monitor churn-related KPIs regularly to evaluate retention initiatives.

*Final recommendations will be refined based on the actual analytical findings.*

---

## 📂 Project Structure

```text
Bank-Customer-Churn-Analysis/
│
├── Dataset/
│   ├── Bank_Churn.csv
│   └── Bank_Churn_Cleaned.csv
│
├── Python/
│   └── Bank_Customer_Churn_Analysis.ipynb
│
├── SQL/
│   └── Bank_Churn_Analysis.sql
│
├── PowerBI/
│   └── Bank_Churn_Dashboard.pbix
│
├── Screenshots/
│   └── Dashboard.png
│
└── README.md
```

---

## 📌 Project Outcome

This project demonstrates an end-to-end data analytics workflow, including data cleaning, exploratory data analysis, SQL-based business analysis, dashboard development, and business-oriented interpretation of customer churn patterns.

It showcases the ability to transform raw customer data into meaningful insights using Python, SQL, and Power BI.

---

## 👨‍💻 Author : Abhishek Tigadi

**Data Analytics Portfolio Project**

Tools: Python | SQL | Power BI
