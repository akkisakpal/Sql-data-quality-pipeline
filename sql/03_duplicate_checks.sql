-- Detect duplicate customers based on email
SELECT email, COUNT(*) AS record_count
FROM customers
GROUP BY email
HAVING COUNT(*) > 1;

-- Detect duplicate orders
SELECT order_id, COUNT(*) AS record_count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Detect duplicate order items
SELECT order_item_id, COUNT(*) AS record_count
FROM order_items
GROUP BY order_item_id
HAVING COUNT(*) > 1;
