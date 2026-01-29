-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
-- School Management System Insert Data SQL File
-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

-- $$$$$$$$$$$$$$$$$$$
USE school_management;
-- $$$$$$$$$$$$$$$$$$$

-- Departments
INSERT INTO Departments (department_name) VALUES
('Mathematics'),('Science'),('English'),('Social Studies'),('Computer Science'),
('Physics'),('Chemistry'),('Biology'),('Commerce'),('Economics'),
('Hindi'),('Telugu'),('French'),('Physical Education'),('Arts'),
('Music'),('Dance'),('Psychology'),('Statistics'),('Environmental Science');

-- Teachers
INSERT INTO Teachers (first_name,last_name,phone,email,hire_date) VALUES
('Anil','Sharma','9000000001','anil1@school.com','2020-06-01'),
('Sunita','Verma','9000000002','sunita2@school.com','2019-05-10'),
('Ravi','Kumar','9000000003','ravi3@school.com','2021-07-15'),
('Neha','Singh','9000000004','neha4@school.com','2018-03-20'),
('Amit','Patel','9000000005','amit5@school.com','2022-01-05'),
('Pooja','Reddy','9000000006','pooja6@school.com','2020-11-11'),
('Vikas','Gupta','9000000007','vikas7@school.com','2017-09-09'),
('Kiran','Rao','9000000008','kiran8@school.com','2019-12-01'),
('Suresh','Yadav','9000000009','suresh9@school.com','2016-08-08'),
('Meena','Joshi','9000000010','meena10@school.com','2015-02-14'),
('Arjun','Malik','9000000011','arjun11@school.com','2021-04-19'),
('Divya','Nair','9000000012','divya12@school.com','2018-06-22'),
('Rahul','Chopra','9000000013','rahul13@school.com','2022-07-01'),
('Sneha','Kapoor','9000000014','sneha14@school.com','2019-01-12'),
('Manoj','Das','9000000015','manoj15@school.com','2020-03-03'),
('Anita','Mishra','9000000016','anita16@school.com','2017-10-10'),
('Deepak','Bansal','9000000017','deepak17@school.com','2016-05-05'),
('Kavya','Iyer','9000000018','kavya18@school.com','2021-09-09'),
('Nitin','Agarwal','9000000019','nitin19@school.com','2022-02-02'),
('Rekha','Pandey','9000000020','rekha20@school.com','2018-12-12');

-- Classes
INSERT INTO Classes (class_name,section,class_teacher_id) VALUES
('1','A',1),('1','B',2),('2','A',3),('2','B',4),
('3','A',5),('3','B',6),('4','A',7),('4','B',8),
('5','A',9),('5','B',10),('6','A',11),('6','B',12),
('7','A',13),('7','B',14),('8','A',15),('8','B',16),
('9','A',17),('9','B',18),('10','A',19),('10','B',20);

-- Subjects
INSERT INTO Subjects (subject_name,class_id) VALUES
('Math',1),('Science',1),('English',2),('Math',2),
('Science',3),('English',3),('Math',4),('Science',4),
('English',5),('Math',6),('Science',7),('English',8),
('Computer',9),('Math',10),('Science',11),('English',12),
('Math',13),('Science',14),('English',15),('Computer',16);

-- Teacher_Subject
INSERT INTO Teacher_Subject (teacher_id,subject_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);

-- Students
INSERT INTO Students (first_name,last_name,gender,date_of_birth,class_id,admission_date,phone,address) VALUES
('Rahul','Verma','Male','2010-05-10',1,'2022-06-01','8000000001','Hyderabad'),
('Amit','Shah','Male','2011-04-11',2,'2022-06-01','8000000002','Delhi'),
('Sneha','Patil','Female','2010-03-12',3,'2022-06-01','8000000003','Pune'),
('Riya','Singh','Female','2011-02-13',4,'2022-06-01','8000000004','Mumbai'),
('Karan','Mehta','Male','2010-01-14',5,'2022-06-01','8000000005','Ahmedabad'),
('Neeraj','Yadav','Male','2011-07-15',6,'2022-06-01','8000000006','Noida'),
('Pooja','Rao','Female','2010-08-16',7,'2022-06-01','8000000007','Bangalore'),
('Ankit','Gupta','Male','2011-09-17',8,'2022-06-01','8000000008','Jaipur'),
('Divya','Nair','Female','2010-10-18',9,'2022-06-01','8000000009','Kochi'),
('Rohan','Das','Male','2011-11-19',10,'2022-06-01','8000000010','Kolkata'),
('Maya','Sharma','Female','2010-12-10',11,'2022-06-01','8000000011','Lucknow'),
('Vivek','Singh','Male','2011-01-12',12,'2022-06-01','8000000012','Bhopal'),
('Isha','Kaur','Female','2010-02-14',13,'2022-06-01','8000000013','Chennai'),
('Sahil','Verma','Male','2011-03-16',14,'2022-06-01','8000000014','Patna'),
('Ritika','Gupta','Female','2010-04-18',15,'2022-06-01','8000000015','Indore'),
('Arnav','Reddy','Male','2011-05-20',16,'2022-06-01','8000000016','Hyderabad'),
('Anaya','Shah','Female','2010-06-22',17,'2022-06-01','8000000017','Delhi'),
('Kabir','Patel','Male','2011-07-24',18,'2022-06-01','8000000018','Ahmedabad'),
('Sanya','Mehta','Female','2010-08-26',19,'2022-06-01','8000000019','Mumbai'),
('Raghav','Yadav','Male','2011-09-28',20,'2022-06-01','8000000020','Noida');

-- Parents
INSERT INTO Parents (parent_name, phone, email) VALUES
('Raj Verma','8000000021','raj1@gmail.com'),('Suresh Shah','8000000022','suresh2@gmail.com'),
('Anita Patil','8000000023','anita3@gmail.com'),('Pankaj Singh','8000000024','pankaj4@gmail.com'),
('Ramesh Mehta','8000000025','ramesh5@gmail.com'),('Vijay Yadav','8000000026','vijay6@gmail.com'),
('Suma Rao','8000000027','suma7@gmail.com'),('Rohit Gupta','8000000028','rohit8@gmail.com'),
('Manoj Nair','8000000029','manoj9@gmail.com'),('Alok Das','8000000030','alok10@gmail.com'),
('Kiran Verma','8000000031','kiran11@gmail.com'),('Deepa Shah','8000000032','deepa12@gmail.com'),
('Sanjay Patil','8000000033','sanjay13@gmail.com'),('Nikhil Singh','8000000034','nikhil14@gmail.com'),
('Prakash Mehta','8000000035','prakash15@gmail.com'),('Ashok Yadav','8000000036','ashok16@gmail.com'),
('Geeta Rao','8000000037','geeta17@gmail.com'),('Ritu Gupta','8000000038','ritu18@gmail.com'),
('Arun Nair','8000000039','arun19@gmail.com'),('Suman Das','8000000040','suman20@gmail.com');

-- Student_Parent
INSERT INTO Student_Parent (student_id, parent_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);

-- Exams
INSERT INTO Exams (exam_name, exam_date) VALUES
('Mid Term', '2024-03-01'),('Final Term', '2024-06-01'),('Unit Test 1', '2024-01-15'),
('Unit Test 2', '2024-02-15'),('Practical Exam','2024-05-15');

-- Marks
INSERT INTO Marks (student_id, subject_id, exam_id, marks_obtained) VALUES
(1,1,1,78),(2,2,1,82),(3,3,1,69),(4,4,1,74),(5,5,1,88),(6,6,2,91),(7,7,2,85),(8,8,2,73),
(9,9,2,80),(10,10,2,77),(11,11,3,84),(12,12,3,79),(13,13,3,92),(14,14,3,68),(15,15,3,75),
(16,16,4,89),(17,17,4,81),(18,18,4,76),(19,19,5,90),(20,20,5,87);

-- Fees
INSERT INTO Fees (class_id, amount) VALUES
(1,12000),(2,12500),(3,13000),(4,13500),(5,14000),(6,14500),(7,15000),(8,15500),(9,16000),(10,16500),
(11,17000),(12,17500),(13,18000),(14,18500),(15,19000),(16,19500),(17,20000),(18,20500),(19,21000),(20,21500);

-- Fee_Payments
INSERT INTO Fee_Payments (student_id, fee_id, payment_date, payment_status) VALUES
(1,1,'2024-06-01','Paid'),(2,2,'2024-06-02','Paid'),(3,3,'2024-06-03','Pending'),(4,4,'2024-06-04','Paid'),
(5,5,'2024-06-05','Pending'),(6,6,'2024-06-06','Paid'),(7,7,'2024-06-07','Paid'),(8,8,'2024-06-08','Pending'),
(9,9,'2024-06-09','Paid'),(10,10,'2024-06-10','Paid'),(11,11,'2024-06-11','Pending'),(12,12,'2024-06-12','Paid'),
(13,13,'2024-06-13','Paid'),(14,14,'2024-06-14','Pending'),(15,15,'2024-06-15','Paid'),(16,16,'2024-06-16','Paid'),
(17,17,'2024-06-17','Pending'),(18,18,'2024-06-18','Paid'),(19,19,'2024-06-19','Paid'),(20,20,'2024-06-20','Pending');

-- Attendance
INSERT INTO Attendance (student_id, date, status) VALUES
(1,'2024-01-01','Present'),(2,'2024-01-01','Absent'),(3,'2024-01-01','Present'),(4,'2024-01-01','Present'),
(5,'2024-01-01','Absent'),(6,'2024-01-01','Present'),(7,'2024-01-01','Present'),(8,'2024-01-01','Absent'),
(9,'2024-01-01','Present'),(10,'2024-01-01','Present');

-- Timetable
INSERT INTO Timetable (class_id, subject_id, teacher_id, day, time_slot) VALUES
(1,1,1,'Monday','09:00-10:00'),(2,2,2,'Monday','10:00-11:00'),(3,3,3,'Monday','11:00-12:00'),
(4,4,4,'Tuesday','09:00-10:00'),(5,5,5,'Tuesday','10:00-11:00'),(6,6,6,'Tuesday','11:00-12:00'),
(7,7,7,'Wednesday','09:00-10:00'),(8,8,8,'Wednesday','10:00-11:00'),(9,9,9,'Wednesday','11:00-12:00'),
(10,10,10,'Thursday','09:00-10:00');
