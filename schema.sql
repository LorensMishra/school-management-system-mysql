-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
-- 🎓 School Management System SQL File
-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

-- $$$$$$$$$$$$$$$$$$$$$$$$
-- STEP 1: Create Database
-- $$$$$$$$$$$$$$$$$$$$$$$$

CREATE DATABASE IF NOT EXISTS school_management;
USE school_management;

-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
-- STEP 2: Tables Creation (with Constraints)
-- $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

-- Students Table
CREATE TABLE IF NOT EXISTS Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender ENUM('Male','Female','Other'),
    date_of_birth DATE,
    class_id INT,
    admission_date DATE,
    phone VARCHAR(15),
    address TEXT
);

-- Teachers Table
CREATE TABLE IF NOT EXISTS Teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    hire_date DATE
);

-- Classes Table
CREATE TABLE IF NOT EXISTS Classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(20),
    section VARCHAR(10),
    class_teacher_id INT,
    FOREIGN KEY (class_teacher_id) REFERENCES Teachers(teacher_id)
);

-- Subjects Table
CREATE TABLE IF NOT EXISTS Subjects (
    subject_id INT AUTO_INCREMENT PRIMARY KEY,
    subject_name VARCHAR(50),
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- Teacher_Subject Table
CREATE TABLE IF NOT EXISTS Teacher_Subject (
    teacher_subject_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_id INT,
    subject_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

-- Attendance Table
CREATE TABLE IF NOT EXISTS Attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    date DATE,
    status ENUM('Present','Absent'),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- Exams Table
CREATE TABLE IF NOT EXISTS Exams (
    exam_id INT AUTO_INCREMENT PRIMARY KEY,
    exam_name VARCHAR(50),
    exam_date DATE
);

-- Marks Table
CREATE TABLE IF NOT EXISTS Marks (
    marks_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    exam_id INT,
    marks_obtained INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id),
    FOREIGN KEY (exam_id) REFERENCES Exams(exam_id)
);

-- Fees Table
CREATE TABLE IF NOT EXISTS Fees (
    fee_id INT AUTO_INCREMENT PRIMARY KEY,
    class_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

-- Fee_Payments Table
CREATE TABLE IF NOT EXISTS Fee_Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    fee_id INT,
    payment_date DATE,
    payment_status ENUM('Paid','Pending'),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (fee_id) REFERENCES Fees(fee_id)
);

-- Parents Table
CREATE TABLE IF NOT EXISTS Parents (
    parent_id INT AUTO_INCREMENT PRIMARY KEY,
    parent_name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

-- Student_Parent Table
CREATE TABLE IF NOT EXISTS Student_Parent (
    student_parent_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    parent_id INT,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (parent_id) REFERENCES Parents(parent_id)
);

-- Timetable Table
CREATE TABLE IF NOT EXISTS Timetable (
    timetable_id INT AUTO_INCREMENT PRIMARY KEY,
    class_id INT,
    subject_id INT,
    teacher_id INT,
    day VARCHAR(15),
    time_slot VARCHAR(20),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

-- Departments Table
CREATE TABLE IF NOT EXISTS Departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Teacher_Department Table
CREATE TABLE IF NOT EXISTS Teacher_Department (
    teacher_department_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_id INT,
    department_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

