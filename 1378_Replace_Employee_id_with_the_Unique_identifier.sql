SELECT unique_id , name 
FROM Employees LEFT JOIN EmployeeUNI 
ON USING(id);
