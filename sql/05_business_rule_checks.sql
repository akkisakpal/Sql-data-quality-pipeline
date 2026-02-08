-- Orders marked as completed but with zero or negative amount
SELECT *
FROM orders
WHERE order_status = 'COMPLETED'
  AND total_amount <= 0;

-- Orders with future order dates
SELECT *
FROM orders
WHERE order_date > CURRENT_DATE;

-- Order items with unusually high quantities (potential data error)
SELECT *
FROM order_items
WHERE quantity > 100;
