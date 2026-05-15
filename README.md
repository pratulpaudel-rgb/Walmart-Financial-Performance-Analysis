# Walmart Financial,Economical & Sales Anlaysis Performance

# Project Overview
An end-to-end data analytics project investigating how macroeconomic indicators (Unemployment, CPI, Fuel Prices) impact Walmart’s weekly store sales across 45 locations in the United States. The analysis period is from 2010-2012.

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

1.A critical finding during the Exploratory Data Analysis (EDA) phase was the near-total absence of strong linear correlation between Weekly_Sales and external environmental metrics (Fuel Price: -0.01, CPI: -0.30, Unemployment: -0.10).

This lack of statistical correlation strongly implies that Walmart operates as a defensive, recession-resistant retail ecosystem. Rather than being swung by regional economic volatility, revenue is perhaps instead driven by internal operational activities, store-specific geographic factors, and calendar seasonality (Holidays). This insight justified moving the project into Power BI to perform granular, store-level and time-series visualizations rather than relying on macro-forecasting models.

2. It was also uncovered that while holiday weeks have a smaller overall share of the volume of total sales, it has noticeble effect on high weekly sales which was set to sales of over $1.5 million. This tells us that in this specific measure, holiday can be reliable indicator for high volume sales.



---

## 📁 Repository Structure
* `/data`: Raw data inputs.
* `/scripts`: Cleaned T-SQL script commands.
* `/reports`: Excel worksheets and `.pbix` interactive layout files.
