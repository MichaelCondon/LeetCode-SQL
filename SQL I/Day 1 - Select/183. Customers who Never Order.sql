/*https://leetcode.com/problems/customers-who-never-order/ */

SELECT
    Customers.name as Customers
FROM
    Customers
WHERE
    Customers.id NOT IN (Select customerID from Orders); /*only add customers where the customer ID is NOT in the orders table