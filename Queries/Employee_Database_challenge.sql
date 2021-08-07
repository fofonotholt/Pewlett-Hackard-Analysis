-- Deliveralble 1
-- Steps 1 to 7
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
    INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

SELECT * FROM retirement_titles

-- Steps 8 to 14
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY rt.emp_no, rt.to_date DESC;

-- Steps 15 to 21
SELECT COUNT (emp_no), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT (emp_no) DESC;

-- Deliverable 2
-- steps 1 to 11
SELECT DISTINCT ON (e.emp_no) e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    t.title
INTO mentorship_eligibility
FROM employees as e
    INNER JOIN dept_emp as de
    ON (e.emp_no = de.emp_no)
    INNER JOIN titles as t
    ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

-- Deliverable 3
-- Aditional Queries
-- First we get the count of employees from the unique_titles table to get the number of retiring employees
SELECT COUNT (emp_no) FROM unique_titles;

-- Then we ORDER BY and GROUP BY the mentorship_eligibility table to get a comparison with the reteiring_titles data
SELECT COUNT (emp_no), title
FROM mentorship_eligibility
GROUP BY title
ORDER BY (SELECT COUNT (emp_no)) DESC;