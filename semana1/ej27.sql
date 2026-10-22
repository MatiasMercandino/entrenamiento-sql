SELECT 
  COUNTIF(created_at >= '2025-01-01' AND created_at < '2026-01-01') AS ordenes_2025,
  COUNTIF(created_at >= '2025-01-01' AND created_at < '2025-07-01') AS ordenes_2025S1,
  COUNTIF(created_at >= '2025-07-01' AND created_at < '2026-01-01') AS ordenes_2025S2
FROM `bigquery-public-data.thelook_ecommerce.orders`
