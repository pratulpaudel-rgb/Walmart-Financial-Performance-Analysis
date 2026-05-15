# Walmart Financial,Economical & Sales Anlaysis Performance

# Project Overview
An end-to-end data analytics project investigating how macroeconomic indicators (Unemployment, CPI, Fuel Prices) impact Walmart’s weekly store sales across 45 locations. 

# Tech Stack
* MS SQL Server: Data extraction, transformation, and creation of standardized Views.
* Microsoft Excel: Exploratory Data Analysis (EDA), Correlation Matrices, and Trend Testing.
* Power BI: Star Schema data modeling, DAX time-intelligence development, and Executive Dashboard design.

---

# The Data Pipeline & Methodology

# 1. Data Engineering (SQL)
* Standardized messy string date formats (`DD-MM-YYYY`) into standard SQL system `DATE` types.
* Created an enterprise-ready `Clean_Walmart_Data` view to act as a Single Source of Truth.
* Developed custom business logic using `CASE WHEN` to segment stores into `High` vs. `Normal` sales tiers.

# 2. Exploratory Data Analysis (Excel)
* Conducted a statistical correlation analysis between economic factors and revenue.
* **Key Finding:** The exploratory analysis revealed a correlation of -0.0094 between Fuel Price and Weekly Sales. This near-zero value indicates that wild fluctuations in gas prices have practically no direct linear impact on Walmart's revenue.
* There is a moderate negative correlation (-0.302) between the Consumer Price Index (CPI) and the Unemployment rate.

# 3. Business Intelligence Dashboard (Power BI)
* Engineered a decoupled, dedicated `DateTable` for dynamic time-intelligence filtering.
* Designed a single-page Executive Dashboard following strict visual hierarchy constraints.

---

#📊 Dashboard Preview
 
![Walmart Executive Dashboard Preview](images/PowerBIss.png)

---

## 💡 Key Business Insights
1. **The Holiday Boom:** Holiday weeks generate an average 15% increase in revenue, heavily driven by late November (Thanksgiving) and December (Christmas) spikes.
2. **Economic Resilience:** Despite rising unemployment trends in specific regions, core essential sales remained steady, highlighting Walmart's status as an anti-recessionary retailer.
3. **Top Performers:** Store 20 and Store 4 out-performed the national weekly average by over 40%.

---

## 📁 Repository Structure
* `/data`: Raw data inputs.
* `/scripts`: Cleaned T-SQL script commands.
* `/reports`: Excel worksheets and `.pbix` interactive layout files.
