-- Deliverable 1
SELECT e.emp_no, e.first_name, e.last_name, ts.title, ts.from_date, ts.to_date
INTO retirement_title
FROM employees AS e
INNER JOIN titles AS ts
ON e.emp_no = ts.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no;

SELECT * FROM retirement_title;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_title
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

SELECT COUNT(title), title
INTO retiring_title
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_title;

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, ts.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ts
ON (e.emp_no = ts.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibilty;


-- Added query on mentorship eligibility: Get the count #
SELECT COUNT(*) FROM mentorship_eligibilty;

-- Added query on mentorship eligibility: Count all Grouped by title 
SELECT COUNT(title), title
FROM mentorship_eligibilty
GROUP BY title
ORDER BY count DESC;

