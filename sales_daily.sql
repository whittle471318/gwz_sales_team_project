SELECT 
  date_date,
  ROUND(SUM(turnover),2) AS total_turnover,
  ROUND(SUM(purchase_cost),2) AS purchase_cost
FROM `glassy-proton-457613-m8.git_challenge050525.gwz_sales` 
GROUP BY date_date
ORDER BY date_date asc