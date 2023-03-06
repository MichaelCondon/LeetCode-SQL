/* Write your T-SQL query statement below */
SELECT
    patient_id,
    patient_name,
    conditions
FROM
    Patients
WHERE
    conditions LIKE '% DIAB1%'--Only select the above columns when they contain the collection of string DIAB1 followed by or preceded by any characters
    OR
    conditions LIKE 'DIAB1%' --I thought I left the life of REGEX behind me, alas.