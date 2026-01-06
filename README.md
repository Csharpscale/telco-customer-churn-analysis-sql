# Telco Customer Churn Analysis (SQL – BigQuery)

## Project Overview
This project performs a SQL-based analysis of customer churn for a telecom company using Google BigQuery.  
The goal is to identify churn patterns, high-risk customer segments, and revenue impact using business-focused KPIs.

This project focuses purely on SQL analytics without visualization tools.

---

## Business Questions Answered
- What is the overall customer churn rate?
- How does churn vary by customer tenure?
- Which contract types have the highest churn?
- How does internet service type affect churn?
- What is the revenue impact of churned vs retained customers?

---

## Key Analyses Performed
- Core churn KPIs (total customers, churned customers, churn rate)
- Churn analysis by:
  - Tenure
  - Contract type
  - Internet service
- Revenue impact comparison between churned and non-churned customers
- On-the-fly data type handling using SAFE_CAST

---

## Tools Used
- SQL (Standard SQL)
- Google BigQuery

---

## Repository Contents
- `telco_customer_churn_analysis.sql` — complete SQL analysis script

---

## Dataset
- Telco Customer Churn dataset (IBM sample dataset)
- Data queried directly from Google BigQuery  
- Raw CSV files are not included in this repository

---

## Key Insights
- Month-to-month contracts show the highest churn rates
- Fiber optic users churn more than DSL users
- Churned customers contribute significant revenue loss despite higher monthly charges

---

## Author
Ashay Pallav
