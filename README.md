# E-Commerce-Fraud-Detection-SQL
An analytical risk project focused on identifying velocity anomalies and geographical fraud patterns in e-commerce transactions using SQL.



# E-Commerce Fraud Detection & Risk Analytics (SQL)

## 📌 Project Overview
This project focuses on uncovering fraudulent behavior patterns and identifying transaction anomalies in an e-commerce platform. By analyzing ~150,000 transaction records and mapping IP addresses to their respective countries, this analysis provides actionable, data-driven insights to mitigate organizational risk and detect automated bot attacks.

## 🗂️ Dataset Structure
The project utilizes two relational datasets:
* `Fraud_Data.csv`: Main transactional ledger including timestamps, purchase values, device/browser metadata, and fraud labeling (`class`: 0 = Legitimate, 1 = Fraud).
* `IpAddress_to_Country.csv`: A lookup table mapping IP address numeric bounds to countries.

---

## 🔍 Key Business Questions & SQL Solutions

### 1. Fraud Overview & Portfolio Risk
**Business Question:** What is the baseline fraud rate across the platform's transaction history?

