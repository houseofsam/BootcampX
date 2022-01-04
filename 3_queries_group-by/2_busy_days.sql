-- Get the total number of assignments for each day of bootcamp.
-- and return rows where total assignments is greater than or equal to 10.
SELECT day, COUNT(*) as total_assignments
FROM assignments
GROUP BY day
HAVING COUNT(*) >= 10
ORDER BY day;