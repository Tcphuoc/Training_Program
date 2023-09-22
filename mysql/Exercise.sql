-- 1. Insert table and info
CREATE TABLE School.Student(
	`id` bigint unsigned not null auto_increment unique,
	`name` varchar(255),
	`age` int,
	`class_id` bigint unsigned,
	PRIMARY KEY(id)
);

CREATE TABLE School.Class(
	`id` bigint unsigned not null auto_increment unique,
	`name` varchar(255),
	`major_id` bigint unsigned,
	PRIMARY KEY(id)
);

CREATE TABLE School.Major(
	`id` bigint unsigned not null auto_increment unique,
	`name` varchar(255),
	PRIMARY KEY (id)
);

INSERT INTO School.Student (name, age, class_id)
VALUES
('Nguyen Van A', 18, 1),
('Nguyen Van B', 18, 2),
('Nguyen Thanh C', 18, 3),
('Tran Thi D', 18, 4),
('Tran Thi E', 18, 5),
('Nguyen Tan F', 18, 5),
('Nguyen Le G', 18, 4),
('Nguyen H', 18, 3),
('Tran I', 18, 2),
('Truong Tan J', 18, 1),
('Truong Thi K', 18, 1),
('Le Thi L', 18, 2),
('Le Van M', 18, 2),
('Le Van N', 18, 5),
('Nguyen Phi O', 18, 3),
('Dang Thi P', 18, null),
('Hoang Thi Q', 18, null);

INSERT INTO School.Class (name, major_id)
VALUES
('Kinh te 1', 1),
('Kinh te 2', 1),
('IT 1', 2),
('IT 2', 2),
('Xay dung 1', 3),
('Xay dung 2', 3);

INSERT INTO School.Major (name) VALUES ('Kinh te'), ('IT'), ('Xay dung');

-- 2. Show info student and class
SELECT s.name, s.age, c.name as 'class'
FROM School.Student s 
INNER JOIN School.Class c 
ON s.class_id = c.id;

-- 3. Show info student, class and major
SELECT s.name, s.age, c.name as 'class', m.name as 'major'
FROM School.Student s 
INNER JOIN School.Class c 
ON s.class_id = c.id
INNER JOIN School.Major m 
ON m.id = c.major_id 

-- 4. Show class have no student
SELECT c.id, c.name as 'class', s.*
FROM School.Class c 
LEFT JOIN School.Student s 
ON c.id = s.class_id 
WHERE s.id IS NULL;

-- 5. Show class's major is IT
SELECT c.name as 'class', m.name as major
FROM School.Class c 
LEFT JOIN School.Major m 
ON c.major_id = m.id 
WHERE c.major_id = 2

-- 6. Execute query for image 1
SELECT *
FROM School.Student s 
LEFT JOIN School.Class c
ON s.class_id = c.id 
EXCEPT
SELECT *
FROM School.Student s 
INNER JOIN School.Class c
ON s.class_id = c.id

-- 7. Execute query for image 2
SELECT *
FROM School.Student s 
RIGHT JOIN School.Class c
ON s.class_id = c.id 
EXCEPT
SELECT *
FROM School.Student s 
INNER JOIN School.Class c
ON s.class_id = c.id