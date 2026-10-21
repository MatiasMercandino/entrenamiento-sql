SELECT order_id, created_at, status
FROM `bigquery-public-data.thelook_ecommerce.orders`
WHERE status = 'Returned' AND EXTRACT(YEAR FROM created_at) = 2026; #created_at >= '2026-01-01' para hacerlo rápido sin leer todas las filas
