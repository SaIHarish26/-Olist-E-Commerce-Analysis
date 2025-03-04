# Olist-E-Commerce-Analysis
## Overview:
This project leverages SQL, Excel, Tableau, and Power BI to conduct comprehensive data analysis on e-commerce transactional data, driving actionable insights for revenue optimization and enhanced customer satisfaction. By analyzing key performance indicators (KPIs) such as payment trends, delivery efficiency, and regional sales performance, I identified critical patterns and opportunities for business improvement.
## Technologies Used
•	SQL (MySQL) – For data extraction, transformation, complex querying, and performance analysis.
•	Excel – For data cleaning, preprocessing, trend identification, and exploratory analysis using pivot tables and advanced functions.
•	Power BI & Tableau – For dynamic and interactive data visualization, dashboard creation, and real-time KPI monitoring.
Key Highlights:
•	Payment Behavior Analysis: 
o	Identified significant weekday/weekend payment trends, with a focus on credit card transaction analysis, revealing that high review scores were correlated with credit card usage.
•	Delivery Performance Optimization: 
o	Analyzed delivery times and their impact on customer reviews, pinpointing areas for improvement, such as the pet_shop category, to reduce delivery times and boost satisfaction.
•	Regional Sales Analysis: 
o	Conducted city-wise revenue analysis, highlighting São Paulo as a key market with high average payment and product values.
•	Monthly Trend Analysis: 
o	Visualized monthly order and payment trends to identify peak sales periods and potential areas for strategic planning.
•	Product and Payment Analysis: 
o	Identified top product categories and payment type distribution.
## Technical Execution:
•	SQL: 
o	Developed complex SQL queries to extract, transform, and analyze data from multiple tables (orders, payments, reviews, customers).
o	Example: SQL SELECT COUNT(order_id) FROM olist_order_payments_dataset JOIN olist_order_reviews_dataset USING (order_id) WHERE payment_type = 'credit_card' AND review_score = 5;
•	Data Visualization: 
o	Created interactive dashboards in Tableau and Power BI, showcasing payment distributions, delivery performance, and regional sales, with drill-down capabilities for detailed analysis.
•	Excel: 
o	used for data cleaning, preprocessing, and exploratory Data analysis.
## Impact:
•	Provided data-driven recommendations to optimize delivery times, particularly for underperforming product categories.
•	Identified key markets for targeted marketing and sales strategies.
•	Delivered actionable insights to improve payment processing and inventory management.
