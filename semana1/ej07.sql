SELECT 
  COUNT(DISTINCT id) AS total_productos, 
  COUNT(DISTINCT category) AS total_categorias , 
  COUNT(DISTINCT brand) AS total_marcas
FROM `bigquery-public-data.thelook_ecommerce.products`
