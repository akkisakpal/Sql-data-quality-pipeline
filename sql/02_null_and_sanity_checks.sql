-- Check for null customer identifiers
SELECT *
FROM customers
WHERE customer_id IS NULL;

-- Check for orders without associated customers
SELECT *
FROM orders
WHERE customer_id IS NULL;

-- Check for negative or zero order amounts
SELECT *
FROM orders
WHERE total_amount <= 0;

-- Check for invalid item quantities
SELECT *
FROM order_items
WHERE quantity <= 0;
