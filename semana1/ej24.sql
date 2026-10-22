SELECT 
  EXTRACT(YEAR FROM created_at) AS anio, --DATE_TRUNC(DATE(created_at),YEAR) AS anio,
  COUNT(*) AS total_usuarios
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY anio
HAVING COUNT(*) > 10000
ORDER BY anio
