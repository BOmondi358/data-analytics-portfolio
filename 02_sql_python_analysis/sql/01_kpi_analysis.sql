SELECT 
    SUM(`Total Sales`) AS total_revenue
FROM fact_sales;

SELECT 
    SUM(Quantity) AS total_units_sold
FROM fact_sales;

SELECT 
    ROUND(SUM(`Total Sales`) / COUNT(DISTINCT `Order ID`), 2) AS avg_order_value
FROM fact_sales;

SELECT 
    Category,
    SUM(`Total Sales`) AS revenue,
    ROUND(
        SUM(`Total Sales`) * 100.0 / 
        (SELECT SUM(`Total Sales`) FROM fact_sales),
        2
    ) AS revenue_pct
FROM fact_sales
GROUP BY Category
ORDER BY revenue DESC;
