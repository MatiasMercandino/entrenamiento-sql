SELECT 
  product_category,
  COUNT(*) AS items_totales,
  COUNT(sold_at) AS items_vendidos,
  (COUNT(*)-COUNT(sold_at)) AS items_en_bodega --COUNTIF(sold_at IS NULL) AS items_en_bodega
FROM `bigquery-public-data.thelook_ecommerce.inventory_items`
GROUP BY product_category
ORDER BY items_en_bodega DESC
