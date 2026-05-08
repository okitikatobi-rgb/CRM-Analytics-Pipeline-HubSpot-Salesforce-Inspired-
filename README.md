# CRM-Analytics-Pipeline-HubSpot-Salesforce-Inspired-

**Project Overview**
This project focused on building a complete CRM Analytics Pipeline that transforms raw retail sales data into a structured Customer Relationship Management (CRM) database for analysis and reporting. Using an ETL (Extract, Transform, Load) process, transactional sales data from the Sample Superstore dataset was cleaned, transformed, and organized into CRM entities such as Contacts, Leads, Deals, and Activities. The final database was integrated with SQL analytics and Power BI dashboards to support business intelligence reporting, customer analysis, and sales performance monitoring.

**Project Goal**

The main goal of the project was to develop an end-to-end CRM analytics solution capable of converting unstructured transactional data into meaningful business insights. The project aimed to simulate a real-world CRM environment by generating customer profiles, sales opportunities, lead conversion tracking, and customer engagement activities. It also sought to demonstrate practical skills in data engineering, SQL analytics, ETL development, and dashboard reporting using modern business intelligence tools.

**Key Columns**

The project dataset included several important columns used across the CRM tables. Key columns in the Contacts table included ContactID, ContactName, Segment, Country, City, State, PostalCode, and Region. The Leads table contained LeadID, ContactID, LeadDate, LeadSource, and LeadStatus. The Deals table included DealID, ContactID, DealAmount, CloseDate, Stage, Category, Quantity, and Profit. The Activities table consisted of ActivityID, ContactID, DealID, ActivityType, ActivityDate, and Notes. These columns enabled customer tracking, revenue analysis, lead conversion monitoring, and sales activity reporting.

**Tools and Technologies**

The project was developed using Python for ETL pipeline development and data transformation. Pandas and NumPy were used for data cleaning, manipulation, aggregation, and synthetic data generation. SQL Server served as the relational database management system, while PyODBC was used to establish database connectivity between Python and SQL Server. Advanced SQL queries were used for analytical reporting and performance analysis. Power BI and DAX measures were used to create interactive dashboards, KPI cards, trend analysis, and customer performance reports.

**KPIs and Metrics**

Several key performance indicators (KPIs) were developed to measure CRM and sales performance. These included Total Revenue, Total Profit, Total Deals, Total Leads, Conversion Rate, Average Deal Value, Customer Lifetime Value (CLV), Win Rate, and Profit Margin. These metrics helped evaluate business profitability, customer acquisition efficiency, sales effectiveness, and customer value. The KPIs were implemented in Power BI using DAX measures and visualised through dashboards and analytical reports.

**Skills** 

This project demonstrated practical skills in data engineering, ETL pipeline development, relational database design, SQL analytics, and business intelligence reporting. Additional skills included data cleaning, data transformation, synthetic data generation, database connectivity, primary and foreign key management, incremental data loading, and dashboard development in Power BI. The project also showcased analytical thinking, problem-solving, and the ability to convert raw transactional data into business-ready insights.

**Key Insights**

The CRM analytics solution provided valuable insights into customer behaviour, lead conversion performance, regional sales trends, and overall business profitability. Analysis revealed which customer segments and regions generated the highest revenue and profit margins, while lead conversion metrics helped evaluate the effectiveness of different marketing channels. Revenue trend analysis identified seasonal sales patterns, and customer ranking analysis highlighted high-value customers contributing the most revenue. Overall, the project demonstrated how structured CRM analytics can support strategic decision-making and improve sales and customer relationship management processes.
