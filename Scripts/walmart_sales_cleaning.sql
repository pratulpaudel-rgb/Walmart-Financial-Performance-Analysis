CREATE VIEW Clean_Walmart_Data AS
SELECT 
    Store,
    CONVERT(DATE, Date, 105) AS Sales_Date, -- Standardized the date
    Weekly_Sales,
    Holiday_Flag,
    Temperature,
    Fuel_Price,
    CPI,
    Unemployment,
    -- Added a calculated column for portfolio:
    CASE WHEN Weekly_Sales > 1500000 THEN 'High' ELSE 'Normal' END AS Sales_Tier
FROM Walmart_Store_sales;
GO
SELECT * FROM Clean_Walmart_Data

