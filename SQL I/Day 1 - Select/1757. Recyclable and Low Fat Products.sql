# Write your MySQL query statement below
# https://leetcode.com/problems/recyclable-and-low-fat-products/

SELECT
    product_id
FROM
    Products
WHERE
    Products.low_fats = 'Y'
AND
    Products.recyclable = 'Y';