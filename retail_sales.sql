SELECT 
    Date,
    Total_Amount,
    SUM(Total_Amount) OVER (ORDER BY Date) AS running_total
FROM retail_sales
ORDER BY Date;

SELECT 
    Product_Category,
    Transaction_ID,
    Total_Amount,
    RANK() OVER (PARTITION BY Product_Category ORDER BY Total_Amount DESC) AS rank_in_category
FROM retail_sales;