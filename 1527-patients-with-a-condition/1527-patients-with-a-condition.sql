# Write your MySQL query statement below
/*SELECT patient_id,patient_name,conditions
FROM Patients
WHERE conditions LIKE '% DIAB1%';
*/
SELECT * FROM patients WHERE conditions REGEXP '\\bDIAB1'