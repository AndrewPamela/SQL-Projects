# Northwind Sales & Customer Analytics

## Project Overview

This project analyzes the Northwind database using SQL to explore order activity, employee performance, customer ordering patterns, freight performance, and shipping status.

The analysis was designed around practical business questions that can support reporting and better understanding of sales and order operations.

## Business Questions

The analysis focused on five key questions:

1. What is the overall order and freight performance?
2. Which employees handled the highest number of orders?
3. Which customers placed the most orders?
4. How did order activity change over time?
5. How many orders were shipped and how many remained unshipped?

## Tools Used

* MySQL
* SQL
* GitHub

## SQL Techniques Used

* SELECT statements
* JOINs
* Aggregate functions
* GROUP BY
* ORDER BY
* COUNT(DISTINCT)
* CASE statements
* Date functions
* Filtering and sorting

## Key Findings

### Overall Order and Freight Performance

The dataset contains **830 orders**.

* Total freight: **64,942.69**
* Average freight per order: **78.24**
* Minimum freight: **0.02**
* Maximum freight: **1,007.64**

### Employee Order Performance

**Peacock** handled the highest number of orders with **156 orders**.

The next highest were:

* Leverling — 127 orders
* Davolio — 123 orders
* Callahan — 104 orders

### Customer Order Activity

**QUICK-Stop (SAVEA)** placed the highest number of orders with **31 orders**.

The next highest were:

* Cactus Comidas para llevar (ERNSH) — 30 orders
* Old World Delicatessen (QUICK) — 28 orders
* Consolidated Holdings (FOLKO) — 19 orders
* Galería del gastrónomo (HUNGO) — 19 orders

### Order Activity Over Time

Order activity was analyzed monthly from **July 2016 to May 2018**.

The highest monthly order volume was **74 orders in April 2018**, while the lowest was **14 orders in May 2018**.

Overall, the monthly results account for all **830 orders** in the analysis.

### Shipping Performance

All **830 orders** had a recorded shipping date.

* Shipped orders: **830**
* Unshipped orders: **0**
* Shipped percentage: **100%**

## Project Structure

```text
Northwind-Sales-Customer-Analytics/
│
├── README.md
│
└── SQL/
    └── Northwind_Business_Analysis.sql
```

## Conclusion

This project demonstrates the use of SQL to answer practical business questions from a relational database. The analysis covers order volume, freight, employee activity, customer activity, order trends, and shipping status.
