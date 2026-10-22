SELECT 
  product_category,
  ROUND(AVG(TIMESTAMP_DIFF(sold_at, created_at, DAY)),2) AS dias_promedio_en_bodega
FROM `bigquery-public-data.thelook_ecommerce.inventory_items`
GROUP BY product_category
HAVING AVG(TIMESTAMP_DIFF(sold_at, created_at, DAY)) > 29
ORDER BY dias_promedio_en_bodega DESC;
