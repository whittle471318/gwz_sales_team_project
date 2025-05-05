SELECT 
  date_date,
  category_1,
  ROUND(SUM(turnover), 2) AS total_turnover,
  ROUND(SUM(purchase_cost), 2) AS total_purchase_cost
FROM 
  grounded-access-456814-a2.course14.gwz_sales
GROUP BY 
  date_date,
  category_1
ORDER BY 
  date_date ASC,
  category_1;
