SELECT a.Name
FROM Employee a
JOIN (
	SELECT ManagerId 
	FROM Employee
	GROUP BY ManagerId
	HAVING COUNT(ManagerId) >= 5
) b
ON a.Id = b.ManagerId;
