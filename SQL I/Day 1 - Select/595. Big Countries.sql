# Write your MySQL query statement below
# https://leetcode.com/problems/big-countries/
SELECT 
    w.name as name,
    w.population as population,
    w.area as area
FROM 
    World as w
WHERE 
    area >= 3000000
OR
    population >= 25000000;