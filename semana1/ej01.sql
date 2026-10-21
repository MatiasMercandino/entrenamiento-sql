SELECT name,retail_price,category,brand
FROM `bigquery-public-data.thelook_ecommerce.products`
ORDER BY retail_price DESC
LIMIT 10
