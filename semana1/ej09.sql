SELECT 
  ROUND(AVG(retail_price-cost),2) AS margen_unitario_promedio
FROM `bigquery-public-data.thelook_ecommerce.products`;
