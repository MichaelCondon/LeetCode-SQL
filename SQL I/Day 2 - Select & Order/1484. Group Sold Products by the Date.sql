/* Write your T-SQL query statement below */
/* Group together products based on how many were sold on an individual date */
SELECT DISTINCT
    t.sell_date, --all the 't.' is to ensure I'm pulling the columns from the distinct version of the table listed below
    COUNT(distinct t.product) as num_sold,
    STRING_AGG(t.product,',') within group (order by t.product) as products --concat the strings using ',' and make sure they're ordered "lexicogrphically" (not a real word surely)
FROM
    (SELECT DISTINCT sell_date,product FROM Activities) as t
    /* so MS SQL doesn't allow for the distinct keyword to be used in many places, so this workaround is what I found from this solution: https://leetcode. com/problems/group-sold-products-by-the-date/solutions/2264839/string-agg-explanation/?envType=study-plan&id=sql-i&languageTags=mssql */
GROUP BY
    sell_date
ORDER BY
    sell_date