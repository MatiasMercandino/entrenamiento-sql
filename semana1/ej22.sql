SELECT 
  FORMAT_DATE('%A', DATE(created_at)) AS dia_semana,
  COUNT(*) AS total_ordenes
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY dia_semana
ORDER BY total_ordenes DESC
