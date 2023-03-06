/* https://leetcode.com/problems/swap-salary/ */
/* Swap the sex of employees from 'm' to 'f' */

UPDATE Salary
SET sex = (
    CASE /* simple case statement, swap em and be done */
        WHEN sex = 'm' then 'f'
        WHEN sex = 'f' then 'm'
    END
)