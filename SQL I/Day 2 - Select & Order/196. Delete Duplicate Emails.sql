/* https://leetcode.com/problems/delete-duplicate-emails/ */

DELETE 
FROM 
    Person
WHERE id in ( --DELETE rows from the "Person" Table where the "id" is in the following query:
    SELECT 
        p1.id --select the id value
    FROM 
        Person as p1, --from the same table, twice (you can do this?)
        Person as p2
    WHERE
        p1.id > p2.id --only select the highest ID to delete
    AND
        p1.email = p2.email --Where the emails are the same
)