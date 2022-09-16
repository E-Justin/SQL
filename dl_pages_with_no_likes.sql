/* Assume you are given the tables below about Facebook 
    pages and page likes. Write a query to return the page 
    IDs of all the Facebook pages that don't have any likes. 
    The output should be in ascending order.
    */
    
SELECT p.page_id
FROM pages p
WHERE NOT EXISTS (
  SELECT * FROM page_likes pl
  WHERE pl.page_id = p.page_id
);


FROM pages p
LEFT JOIN page_likes pl
ON p.page_id = pl.page_id
WHERE pl.page_id IS NULL;
    
