-- Get each day with the total number of assignments and the total duration of the assignments
SELECT DISTINCT day, COUNT(day) AS number_of_assignments, SUM(duration) AS duration
FROM assignments
GROUP BY day
ORDER BY DAY;