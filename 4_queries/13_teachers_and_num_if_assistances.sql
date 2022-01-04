-- Get the name of all teachers that performed an assistance request during a cohort.
-- include the number of assistances as well.
SELECT 
  DISTINCT teachers.name AS teacher, 
  cohorts.name AS cohort,
  COUNT(teacher_id)
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;