SELECT name, retail_price 
FROM `bigquery-public-data.thelook_ecommerce.products`
WHERE category = 'Jeans' AND retail_price BETWEEN 50 AND 100
ORDER BY retail_price DESC
