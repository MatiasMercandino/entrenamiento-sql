SELECT 
  category,
  COUNT(*) AS cantidad_productos,
  ROUND(AVG(retail_price),2)  AS precio_promedio
FROM `bigquery-public-data.thelook_ecommerce.products`
GROUP BY category
ORDER BY precio_promedio DESC
