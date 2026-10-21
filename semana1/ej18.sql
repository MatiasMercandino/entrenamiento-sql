SELECT 
  DATE_TRUNC(DATE(created_at),MONTH) AS mes,
  COUNT(*) AS total_ordenes
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY mes
ORDER BY mes
