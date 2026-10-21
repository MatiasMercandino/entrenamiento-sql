SELECT traffic_source, COUNT(*) AS total_usuarios
FROM `bigquery-public-data.thelook_ecommerce.users`
GROUP BY traffic_source
ORDER BY total_usuarios DESC
