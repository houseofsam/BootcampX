-- List each assignment with the total number of assistance requests with it
-- SELECT 
--   assignment_id AS id, 
--   assignments.name AS name, 
--   assignments.day AS day, 
--   assignments.chapter AS chapter,
--   COUNT(assignment_id) AS total_requests
-- FROM assistance_requests
-- JOIN assignments ON assignments.id = assignment_id
-- GROUP BY 
--   assistance_requests.assignment_id, 
--   assignments.name, 
--   assignments.day, 
--   assignments.chapter
-- ORDER BY total_requests DESC;

SELECT 
  assignments.id AS id, 
  assignments.name AS name, 
  assignments.day AS day, 
  assignments.chapter AS chapter,
  COUNT(assignment_id) AS total_requests
FROM assignments
JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY total_requests DESC;