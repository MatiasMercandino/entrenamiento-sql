SELECT 
  EXTRACT(MONTH FROM returned_at) AS mes,
  FORMAT_DATE('%B', DATE(returned_at)) AS nombre_mes,
  COUNT(*) AS total_devoluciones
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE returned_at IS NOT NULL
GROUP BY mes, nombre_mes
ORDER BY total_devoluciones DESC
