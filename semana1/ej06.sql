SELECT first_name, last_name, traffic_source,age
FROM `bigquery-public-data.thelook_ecommerce.users`
WHERE age > 60 AND traffic_source = 'Search'
