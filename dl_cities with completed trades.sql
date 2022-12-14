/* You are given the tables below containing information on 
   Robinhood trades and users. Write a query to list the top 
   three cities that have the most completed trade orders in 
   descending order. Output the city and number of orders.
   */

-- 9/9 second attempt

SELECT 
u.city as city,
COUNT(u.city) as total_orders
FROM trades t
INNER JOIN users u
ON t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP BY city
ORDER BY total_orders DESC
LIMIT 3;







-- 9/8: 1st attempt
WITH combined AS (
  SELECT u.user_id as uuser_id, t.user_id, u.city, t.status
  FROM trades t
  INNER JOIN 
  users u
  ON u.user_id = t.user_id
  WHERE t.status = 'Completed'
  )

SELECT 
COUNT(uuser_id) AS total_orders,
city
FROM combined
GROUP BY city
ORDER BY total_orders DESC
LIMIT 3;
