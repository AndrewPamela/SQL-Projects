SELECT
    COUNT(Order_ID) AS Total_Orders,
    ROUND(SUM(Freight), 2) AS Total_Freight,
    ROUND(AVG(Freight), 2) AS Average_Freight,
    ROUND(MIN(Freight), 2) AS Minimum_Freight,
    ROUND(MAX(Freight), 2) AS Maximum_Freight
FROM order_details;

SELECT
    Employee_ID,
    Last_Name,
    COUNT(DISTINCT Order_ID) AS Orders_Handled
FROM employees
GROUP BY
    Employee_ID,
    Last_Name
ORDER BY
    Orders_Handled DESC;

SELECT
    e.Customer_ID,
    c.Company_Name,
    COUNT(DISTINCT e.Order_ID) AS Total_Orders
FROM employees AS e
JOIN customers AS c
    ON e.Customer_ID = c.Customer_ID
GROUP BY
    e.Customer_ID,
    c.Company_Name
ORDER BY
    Total_Orders DESC;
    
    SELECT
    DATE_FORMAT(Order_Date, '%Y-%m') AS Order_Month,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM employees
GROUP BY
    DATE_FORMAT(Order_Date, '%Y-%m')
ORDER BY
    Order_Month;

SELECT
    CASE
        WHEN Shipped_Date IS NULL OR TRIM(Shipped_Date) = '' THEN 'Unshipped'
        ELSE 'Shipped'
    END AS Shipping_Status,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM order_details
GROUP BY
    CASE
        WHEN Shipped_Date IS NULL OR TRIM(Shipped_Date) = '' THEN 'Unshipped'
        ELSE 'Shipped'
    END
ORDER BY
    Shipping_Status;
    SELECT
    CASE
        WHEN Shipped_Date IS NULL OR TRIM(Shipped_Date) = '' THEN 'Unshipped'
        ELSE 'Shipped'
    END AS Shipping_Status,
    COUNT(DISTINCT Order_ID) AS Total_Orders,
    ROUND(
        COUNT(DISTINCT Order_ID) * 100.0 /
        (SELECT COUNT(DISTINCT Order_ID) FROM order_details),
        2
    ) AS Percentage_of_Orders
FROM order_details
GROUP BY
    CASE
        WHEN Shipped_Date IS NULL OR TRIM(Shipped_Date) = '' THEN 'Unshipped'
        ELSE 'Shipped'
    END;