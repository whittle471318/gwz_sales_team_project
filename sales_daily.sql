-- SELECT 
--   date_date,
--   ROUND(SUM(turnover),2) AS total_turnover,
--   ROUND(SUM(purchase_cost),2) AS purchase_cost
-- FROM `glassy-proton-457613-m8.git_challenge050525.gwz_sales` 
-- GROUP BY date_date
-- ORDER BY date_date asc
SELECT 
  date_date,
  category_1,
  ROUND(SUM(turnover), 2) AS total_turnover,
  ROUND(SUM(purchase_cost), 2) AS total_purchase_cost,
  ROUND(SUM(turnover) - SUM(purchase_cost), 2) AS margin
FROM 
  grounded-access-456814-a2.course14.gwz_sales
GROUP BY 
  date_date,
  category_1
ORDER BY 
  date_date ASC,
  category_1;