SELECT a.student_id, a.student_name, b.subject_name, 
(SELECT COUNT(1) 
	FROM Examinations 
	WHERE student_id = a.student_id 
	AND subject_name = b.subject_name) AS attended_exams
FROM Students a JOIN Subjects b
ORDER BY a.student_id, b.subject_name;
