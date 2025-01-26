CREATE TABLE order_items (
         order_item_id INT, 
         order_id INT, 
         product_name VARCHAR(100), 
         quantity INT, 
         price DECIMAL(10, 2)
     );
     INSERT INTO order_items VALUES 
         (1, 1, 'Smartphone', 2, 20000.00), 
         (2, 1, 'Washing Machine', 1, 30000.00), 
         (3, 2, 'Laptop', 1, 60000.00), 
         (4, 3, 'Tablet', 3, 20000.00), 
         (5, 4, 'Headphones', 4, 3000.00), 
         (6, 5, 'Smartwatch', 2, 15000.00);

SELECT * FROM ORDER_ITEMS

/*
Get the total revenue generated from all products sold.
*/

--APPROACH 1

SELECT PRODUCT_NAME,
       SUM(QUANTITY * PRICE) AS TOTAL_REVENUE
FROM ORDER_ITEMS
GROUP BY 1

--APPROACH 2

SELECT 
       SUM(QUANTITY * PRICE) AS TOTAL_REVENUE
FROM ORDER_ITEMS




