
------- TELCO CUSTOMER CHURN ANALYSIS USING SQL(BigQuery) --------

-- ==================================
-- 1. DATA TYPE CLEANING (ON-THE-FLY)
-- ==================================
SELECT
  TotalCharges, SAFE_CAST(TotalCharges AS FLOAT64) AS total_charges_num
FROM `bigquery-sql-practice-483506.practice_ds.customer churn`
LIMIT 1000;

-- ===================
-- 2. CORE CHURN KPIs
-- ===================
SELECT
  COUNT(*) AS total_customers,
  countif(churn = TRUE) AS churned_customers,
  round(countif(churn = TRUE) / COUNT(*) * 100, 2) AS churn_rate_percentage
FROM
  `bigquery-sql-practice-483506.practice_ds.customer churn`;

-- ==================
-- 3. CHURN BY TENURE
-- ==================
SELECT
  tenure,
  COUNT(*) AS total_customers,
  countif(churn = TRUE) AS churned_customers,
  round(countif(churn = TRUE) / COUNT(*) * 100, 2) AS churn_rate_percentage
FROM
  `bigquery-sql-practice-483506.practice_ds.customer churn`
GROUP BY tenure
ORDER BY tenure;

-- =========================
-- 4. CHURN BY CONTRACT TYPE
-- =========================
SELECT
  Contract,
  countif(churn = TRUE) AS churned_customers
FROM
  `bigquery-sql-practice-483506.practice_ds.customer churn`
GROUP BY Contract
ORDER BY Contract;

-- ============================
-- 5. CHURN BY INTERNET SERVICE
-- ============================
SELECT
  InternetService,
  COUNT(*) AS total_customers,
  countif(churn = TRUE) AS churned_customers,
  round(countif(churn = TRUE) / COUNT(*) * 100, 2) AS churn_rate_percentage
FROM
  `bigquery-sql-practice-483506.practice_ds.customer churn`
GROUP BY InternetService
ORDER BY InternetService;

-- ==========================
-- 6. REVENUE IMPACT OF CHURN
-- ==========================
SELECT
  churn,
  round(avg(MonthlyCharges), 2) AS avg_monthly_charges,
  round(sum(safe_cast(TotalCharges AS FLOAT64)), 2) AS total_revenue
FROM
  `bigquery-sql-practice-483506.practice_ds.customer churn`
GROUP BY churn;

-- ==============================================================================
-- END OF ANALYSIS
-- ==============================================================================
-- This SQL analysis focuses on identifying churn drivers and revenue impact 
-- using business-oriented KPIs and segmentation.
--
-- Tools Used: Google BigQuery (Standard SQL)
-- Dataset: Telco Customer Churn
-- ==============================================================================
