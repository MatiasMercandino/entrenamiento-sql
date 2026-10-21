SELECT DISTINCT country
FROM `bigquery-public-data.thelook_ecommerce.users`
ORDER BY country;


SELECT id, first_name, last_name, city
FROM `bigquery-public-data.thelook_ecommerce.users`
WHERE country = 'Australia';
