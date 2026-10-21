SELECT 
  ROUND(AVG(TIMESTAMP_DIFF(delivered_at,shipped_at,DAY)),2) AS dias_promedio
FROM `bigquery-public-data.thelook_ecommerce.orders`
