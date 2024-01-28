SELECT DISTINCT w1.id
FROM Weather w1, Weather w2 
WHERE w1.temperature > w2.temperature
AND DATEDIFF(w1.Recorddate, w2.Recorddate) = 1;
