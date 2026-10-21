SELECT 
  COUNT(*) AS total_ordenes, 
  COUNT(returned_at)AS ordenes_devueltas,
  ROUND(COUNT(returned_at) / COUNT(*) * 100, 2) AS tasa_devolucion
FROM `bigquery-public-data.thelook_ecommerce.orders`;
