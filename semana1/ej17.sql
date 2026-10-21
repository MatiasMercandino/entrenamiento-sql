SELECT 
  brand,
  ROUND(AVG(retail_price),2) AS precio_promedio,
  COUNT(*) AS total_productos
FROM `bigquery-public-data.thelook_ecommerce.products`
GROUP BY brand
HAVING COUNT(*) >= 20 AND AVG(retail_price) > 100 --no utilizar alias en having
ORDER BY precio_promedio DESC
