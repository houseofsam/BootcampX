-- Get the average duration of assistance requests for each cohort.

SELECT 
  cohorts.name AS name, 
  AVG((assistance_requests.completed_at) - (assistance_requests.started_at)) AS average_assistance_time
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time;

-- SELECT 
--   cohorts.name AS name, 
--   AVG(SELECT AVG((assistance_requests.completed_at) - (assistance_requests.started_at)) AS average_assistance_request_duration
--   FROM assistance_requests)
-- FROM cohorts
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_request_duration DESC;



-- SELECT 
--   students.cohort_id as name,
--   cohorts.name
--   AVG(assistance_requests.completed_at - assistance_requests.started_at) AS average_assistance_time
-- FROM students
-- JOIN assistance_requests ON assistance_requests.student_id = students.id
-- GROUP BY students.cohort_id
-- ORDER BY average_assistance_request_duration;