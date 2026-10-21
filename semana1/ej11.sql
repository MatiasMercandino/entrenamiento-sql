SELECT 
  status,
  COUNT(DISTINCT order_id) AS total_ordenes
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
ORDER BY total_ordenes DESC
