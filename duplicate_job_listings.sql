/*
This is the same question as problem #8 in the SQL Chapter of Ace the Data Science Interview!

Assume you are given the table below that shows job postings for all companies on the LinkedIn 
platform. Write a query to get the number of companies that have posted duplicate job listings 
(two jobs at the same company with the same title and description).
*/

WITH duplicate_jobs 
AS (
SELECT COUNT(*)
FROM job_listings
GROUP BY title, description, company_id
HAVING COUNT(*) > 1
)
SELECT COUNT(*)
FROM duplicate_jobs;
