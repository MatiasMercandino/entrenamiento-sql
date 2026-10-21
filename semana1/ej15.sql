SELECT status, ROUND(SUM(sale_price),2) AS venta_total
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status IN ('Shipped', 'Complete')
GROUP BY status
ORDER BY venta_total DESC
