-- CRM Analytics - SQL Analysis

-- 1. Lead Conversion Rate
WITH LeadSummary AS (
    SELECT 
        LeadSource,
        COUNT(*) AS TotalLeads,
        SUM(CASE WHEN LeadStatus = 'Converted' THEN 1 ELSE 0 END) AS ConvertedLeads,
        ROUND(100.0 * SUM(CASE WHEN LeadStatus = 'Converted' THEN 1 ELSE 0 END) / COUNT(*), 2) AS ConversionRate
    FROM Leads
    GROUP BY LeadSource
)
SELECT * FROM LeadSummary ORDER BY ConversionRate DESC;

-- 2. Sales Performance by Segment & Region
SELECT 
    c.Segment,
    c.Region,
    COUNT(DISTINCT d.DealID) AS TotalDeals,
    SUM(d.DealAmount) AS TotalRevenue,
    SUM(d.Profit) AS TotalProfit,
    AVG(d.DealAmount) AS AvgDealValue,
    ROUND(100.0 * SUM(d.Profit)/SUM(d.DealAmount), 2) AS ProfitMargin
FROM Deals d
JOIN Contacts c ON d.ContactID = c.ContactID
GROUP BY c.Segment, c.Region
ORDER BY TotalRevenue DESC;

-- 3. Revenue Trend (Monthly) with Window Functions
SELECT 
    YEAR(CloseDate) AS Year,
    MONTH(CloseDate) AS Month,
    SUM(DealAmount) AS MonthlyRevenue,
    SUM(SUM(DealAmount)) OVER (PARTITION BY YEAR(CloseDate) ORDER BY MONTH(CloseDate)) AS YTD_Revenue,
    AVG(SUM(DealAmount)) OVER (ORDER BY YEAR(CloseDate), MONTH(CloseDate) ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS ThreeMonthMovingAvg
FROM Deals
GROUP BY YEAR(CloseDate), MONTH(CloseDate)
ORDER BY Year, Month;

-- 4. Top Performing Customers (Using Window Function)
WITH CustomerPerformance AS (
    SELECT 
        c.ContactID,
        c.ContactName,
        c.Segment,
        SUM(d.DealAmount) AS TotalSpent,
        COUNT(DISTINCT d.DealID) AS NumberOfDeals,
        AVG(d.DealAmount) AS AvgDealSize,
        RANK() OVER (ORDER BY SUM(d.DealAmount) DESC) AS RevenueRank
    FROM Deals d
    JOIN Contacts c ON d.ContactID = c.ContactID
    GROUP BY c.ContactID, c.ContactName, c.Segment
)
SELECT * FROM CustomerPerformance 
WHERE RevenueRank <= 20
ORDER BY TotalSpent DESC;