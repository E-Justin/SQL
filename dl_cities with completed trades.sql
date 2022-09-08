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
