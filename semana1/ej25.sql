SELECT 
  brand,
  COUNT(*) AS total_productos
FROM `bigquery-public-data.thelook_ecommerce.products`
WHERE category = 'Jeans' 
GROUP BY brand
HAVING count(*) > 10
ORDER BY total_productos DESC
