SELECT 
  DATE(created_at) AS dia,
  COUNT(*) AS total_ordenes
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE created_at >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 30 DAY) AND created_at <= CURRENT_TIMESTAMP()
GROUP BY dia
ORDER BY dia DESC;
