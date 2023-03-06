/* https://leetcode.com/problems/calculate-special-bonus/ */

SELECT
employee_id,
CASE /* use a case statement to only select employee IDs where the ID is odd and the first character of their name is not m */
    WHEN employee_id % 2 <> 0 AND LEFT(name,1) <> 'm' 
    THEN salary
    ELSE 0
END AS bonus
FROM
Employees
ORDER BY
employee_id