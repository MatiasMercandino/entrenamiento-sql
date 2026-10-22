SELECT 
  EXTRACT(YEAR FROM created_at) AS anio,
  traffic_source AS fuente_trafico,
  COUNT(*) AS total_usuarios
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY anio, fuente_trafico
HAVING COUNT(*) > 1000
ORDER BY anio,total_usuarios DESC;
