
-- order by alphabetical order
SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;


-- Number of students in a cohort
SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);

--Get all of the students that don't have an email or phone number.

SELECT name, id, cohort_id
FROM students
WHERE email IS NULL
OR phone IS NULL;

-- Get all of the students without a gmail.com account and a phone number.
SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;

-- Get all of the students currently enrolled.

SELECT name, id, cohort_id
FROM students
WHERE end_date IS null
ORDER BY cohort_id;

-- Get all graduates without a linked Github account.
SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;


