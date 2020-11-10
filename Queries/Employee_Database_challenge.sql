-- -- Deliverable 1
-- -- Number of retiring employees by title
-- -- birthdate - 1952-1-1 and 1955-12-31

-- SELECT e.emp_no, e.first_name, e.last_name, t.titles, t.from_date, t.to_date
-- INTO retirement_titles
-- FROM employees as e
-- INNER JOIN titles as t
-- 	ON e.emp_no = t.emp_no 
-- WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- ORDER BY e.emp_no

-- -- Getting the dinstinct titles
-- SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, titles
-- INTO unique_titles
-- FROM retirement_titles
-- ORDER BY emp_no ASC, to_date DESC

-- -- Retrieve number of employees by their recent job title
-- SELECT COUNT(emp_no), titles
-- INTO retiring_titles
-- FROM unique_titles
-- GROUP BY titles
-- ORDER BY count DESC


-- -- Deliverable 2
-- -- Mentorship Eligibity 
-- -- Employees that are eligible for mentorship
-- -- Employees born between 1965-1-1 and 1965-12-31

-- SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, te.titles
-- -- INTO retirement_titles
-- FROM employees as e
-- INNER JOIN dept_employee as de
-- 	ON de.emp_no = e.emp_no
-- INNER JOIN titles as te
-- 	ON te.emp_no = e.emp_no 
-- WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
-- 	AND (te.to_date = '9999-01-01')
-- ORDER BY e.emp_no ASC, te.titles ASC





