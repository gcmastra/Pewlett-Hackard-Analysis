
-- Employee Database Clallenge- deliverable one
-- Student name: Christopher Mastrangelo 

-- Deliverable One - create retirement_titles table and export to CSV

-- note the instructions in the challenge do not say to filter by hire date when creating the table and file
-- but the extra where clause may come in handy later so I just commented it out for now

SELECT e.emp_no,
    e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--     AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
ORDER BY e.emp_no;

-- paste this in to use in step 8 

SELECT DISTINCT ON (rt.emp_no)
rt.emp_no,
rt.first_name, 
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.from_date DESC;



SELECT count(ut.title), ut.title 
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count(ut.title) DESC;

-- SELECT * from retiring_titles


-- Use Dictinct with Order By to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
ORDER BY _____, _____ DESC;

--- pause here on Sat 8.14 in order to push files so far for deliverable one

-- Deliverable Two - Employees eligible for mentoring program

SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
    e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE de.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no, de.to_date DESC;

-- comments - not sure why they would limit mentoring to people born in only one year? 
-- someone born in 1965 is 56 years old now - that seems old to be mentored by another person 
-- count 1549 employees eligible for mentoring? or eligible to be mentors after the old people leave?