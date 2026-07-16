-- Top 5 Employees
SELECT * FROM employee_kpi
ORDER BY total_points DESC
LIMIT 5;

-- Bottom 5 Employees
SELECT * FROM employee_kpi
ORDER BY total_points ASC
LIMIT 5;

-- Average Production
SELECT AVG(production) FROM employee_kpi;

-- Average Quality
SELECT AVG(quality) FROM employee_kpi;

-- Highest Productivity
SELECT ldap, productivity_points
FROM employee_kpi
ORDER BY productivity_points DESC;

-- Employees with Penalty
SELECT ldap, penalty
FROM employee_kpi
WHERE penalty > 0;

-- Eligible Employees
SELECT *
FROM employee_kpi
WHERE eligibility='Y';

-- Employees Below Target
SELECT *
FROM employee_kpi
WHERE total_points < target_points;

-- Rank Wise Report
SELECT rank_no, ldap, total_points
FROM employee_kpi
ORDER BY rank_no;

-- Total Penalty
SELECT SUM(penalty)
FROM employee_kpi;
