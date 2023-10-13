SELECT *, COUNT(a.name) as number_students
FROM 
	(SELECT c.name 
	FROM School.Student s 
	INNER JOIN School.Class c 
	ON s.class_id = c.id) as a
GROUP BY a.name

SELECT *, COUNT(a.name) as number_students
FROM 
	(SELECT c.name 
	FROM School.Student s 
	INNER JOIN School.Class c 
	ON s.class_id = c.id) as a
GROUP BY a.name
HAVING number_students >= 5
