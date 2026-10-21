SELECT 
  ROUND(AVG(retail_price),2) AS precio_promedio, 
  ROUND(MIN(retail_price),2) AS precio_minimo , 
  ROUNd(MAX(retail_price),2) AS precio_maximo
FROM `bigquery-public-data.thelook_ecommerce.products`
