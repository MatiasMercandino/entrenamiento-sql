SELECT 
  category,
  COUNT(*) AS total_productos
FROM `bigquery-public-data.thelook_ecommerce.products`
GROUP BY category
HAVING COUNT(*) > 1000
ORDER BY total_productos DESC
