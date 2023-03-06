/* https://leetcode.com/problems/fix-names-in-a-table/ */
-- format names that are incorrectly listed. Every name must have a capital first letter, and all remaining characters must be lower case
-- eg. mIchAel --> Michael
SELECT
    user_id,
    UPPER(SUBSTRING(name,1,1)) + LOWER(SUBSTRING(name,2,LEN(name))) as name
    --Concatenate the first character converted to upper case and the remaining characters converted to lower case
    --I'm a genius!
FROM
    Users
ORDER BY
    user_id