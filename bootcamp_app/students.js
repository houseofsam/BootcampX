const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const input = process.argv.slice(2);

pool.query(`
  SELECT students.id AS student_id, students.name AS student_name, cohorts.name AS cohort
  FROM students
  JOIN cohorts ON cohorts.id = students.cohort_id
  WHERE cohorts.name LIKE $1
  LIMIT $2;
`, [`%${input[0]}%`, input[1]])
.then(res => {
  for (let row of res.rows) {
    console.log(`${row.student_name} has an id of ${row.student_id} and was in the ${row.cohort} cohort`);
  }
})
.catch(err => console.error('query error', err.stack));