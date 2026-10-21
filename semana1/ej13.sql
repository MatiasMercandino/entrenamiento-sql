SELECT 
  category,
  ROUND(AVG(retail_price - cost),2) AS margen_promedio,
  ROUND(AVG((retail_price - cost) / retail_price) * 100, 2) AS margen_pct
FROM `bigquery-public-data.thelook_ecommerce.products`
GROUP BY category
ORDER BY  margen_pct DESC
