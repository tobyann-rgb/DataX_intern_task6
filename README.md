# DataX_intern_task6
Sales Trend Analysis Using Aggregations

## Project Overview
This project focuses on analyzing monthly revenue and order volume to identify time-based sales trends for an online retail platform. By leveraging SQL aggregations and date extractions, the analysis provides a clear view of transaction volumes and revenue health over time.

## Tools & Dataset
* **Database Environment:** MySQL Workbench
* **Dataset:** `Ecommerce_SQL_Database` (utilizing a relational join between the `orders` and `products` tables)
* **Deliverables Included:** SQL script, results table screenshot (`task6_sales_trends.png`), and this documentation

## SQL Methodology & Operations
To accurately extract these business metrics, the following SQL operations were executed:
* **Time-Series Extraction:** Used `YEAR()` and `MONTH()` functions on the `order_date` to dynamically group transactions into chronological monthly periods.
* **Order Volume Calculation:** Implemented `COUNT(DISTINCT order_id)` to ensure that multi-item carts were counted as a single unique order, preventing volume inflation.
* **Revenue Aggregation:** Calculated gross monthly income using `SUM(quantity * unit_price)`. 
* **Data Organization:** Grouped the aggregated metrics by year and month, then applied an `ORDER BY` clause to sort the results chronologically (newest to oldest), restricting the output to the most recent 12 periods using `LIMIT 12`.

## Results Summary
The executed query successfully generated a structured results table detailing the rolling monthly performance. The accompanying `task6_sales_trends.png` visually confirms the precise order volume and total revenue generated per month.
