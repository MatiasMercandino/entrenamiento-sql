SELECT 
  status,
  ROUND(AVG(TIMESTAMP_DIFF(shipped_at, created_at, HOUR)) / 24, 2) AS dias_promedio
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUP BY status
HAVING AVG(TIMESTAMP_DIFF(shipped_at, created_at, HOUR)) / 24 > 1
ORDER BY dias_promedio DESC
