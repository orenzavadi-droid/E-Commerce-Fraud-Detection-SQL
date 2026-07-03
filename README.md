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




📊 Tableau Risk Dashboard Architecture
To bridge the gap between technical data extraction and executive decision-making, a dedicated interactive Risk Dashboard was engineered in Tableau using the aggregated results.

Dashboard Core Elements:
Global Geographical Heatmap: Plots fraud distribution across international regions. The color density is anchored to the fraud_rate_percentage, immediately isolating high-risk sectors (such as Canada and the UK) in warning shades of deep orange/red.

Volume vs. Incident Dual Comparison: A synchronized horizontal bar layout visualizing total transactional volume against absolute fraud counts for top-tier markets.

Interactive Cross-Filtering: Built-in actions allow stakeholders to click any target country on the map interface to instantly segment and filter the corresponding transactional volume and scale data.

(To view the layout design, please refer to the dashboard project sheets embedded within the project files).

🚀 Strategic Recommendations for Risk Teams
Implement Velocity Hard-Blocks: Deploy an automated system rule blocking any transaction initiated within less than 10 seconds of account registration to immediately neutralize bot checkouts.

Geographical Step-Up Authentication: Enforce mandatory multi-factor authentication (MFA) or manual review flags for transactions originating from high-risk outlier regions like Canada when coupled with new device IDs.

Behavioral Rather Than Value Restrictions: Since transaction values mirror legitimate behavior, focus detection infrastructure on connection speed, device fingerprinting, and browser anomalies rather than price-based thresholds.

🛠️ Tools Used
SQL (SQLite Engine)

DB Browser for SQLite for database schema design, cross-table range joins, and optimization.

Tableau for business intelligence, data visualization, and dashboard deployment.
