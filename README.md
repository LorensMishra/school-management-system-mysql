# 📘 School Management System (MySQL)

## 📌 Project Overview

The **School Management System** is a relational database project built using **MySQL** to manage academic and administrative activities of a school.
It efficiently stores and organizes data related to **students, teachers, classes, subjects, attendance, exams, marks, fees, parents, departments, and timetables** while maintaining strong data integrity.

---

## 🎯 Objectives

* Design a **normalized database (up to 3NF)**
* Implement **15 interrelated tables**
* Enforce **PRIMARY KEY & FOREIGN KEY constraints**
* Support **real-world school operations**
* Enable **complex JOIN queries for reports**

---

## 🛠️ Technologies Used

* **Database:** MySQL
* **Tool:** MySQL Workbench
* **Query Language:** SQL

---

## 🗂️ Database Tables (15)

1. Students
2. Teachers
3. Classes
4. Subjects
5. Teacher_Subject
6. Attendance
7. Exams
8. Marks
9. Fees
10. Fee_Payments
11. Parents
12. Student_Parent
13. Timetable
14. Departments
15. Teacher_Department

Each table is designed with:

* Proper data types
* Primary keys
* Foreign key relationships

---

## 🧩 Database Features

* Fully **normalized structure**
* One-to-Many and Many-to-Many relationships
* Data consistency using constraints
* Supports reporting using **JOIN, GROUP BY, WHERE, HAVING**
* Scalable for real school systems

---

## 📁 Project Structure

```text
School-Management-System-MySQL/
│
├── schema.sql          # Table creation with constraints
├── insert_data.sql     # Sample data (20–30 records per table)
├── queries.sql         # Basic & advanced SQL queries
├── query_questions.md  # Question list 
├── README.md           # Project documentation
```

---

## ▶️ How to Use This Project

### Step 1: Clone the Repository

```bash
git clone https://github.com/LorensMishra/School-Management-System-MySQL.git
```

```bash
git clone https://github.com/your-username/School-Management-System-MySQL.git
```

### Step 2: Open MySQL Workbench

* Create a new database:

```sql
CREATE DATABASE school_management;
USE school_management;
```

### Step 3: Create Tables

* Run `schema.sql`

### Step 4: Insert Data

* Run `insert_data.sql`

### Step 5: Execute Queries

* Run queries from `queries.sql` to generate reports

---

## 📊 Sample Queries Included

* Student attendance report
* Marks and exam results
* Fee payment status
* Teacher-subject allocation
* Class timetable view
* Department-wise teacher listing

---

## 🔍 Advanced SQL Concepts Used

* INNER JOIN / LEFT JOIN
* GROUP BY & HAVING
* Subqueries
* Aggregate functions
* Foreign key cascading
* Data validation

---

## 📈 Use Cases

* School administration systems
* Academic database design practice
* Interview preparation (SQL + DBMS)
* College mini/major projects

---

## 🧠 Learning Outcomes

* Strong understanding of **RDBMS concepts**
* Practical experience with **MySQL**
* Hands-on practice with **real-world data modeling**
* Improved SQL querying skills

---

## 🚀 Future Enhancements

* User roles (Admin, Teacher, Student)
* Stored procedures & triggers
* Views for reports
* Integration with backend (Java / Python / PHP)

---

## 👤 Author

**Lorens Mishra**

🎓 MCA Graduate

💻 Aspiring Software Developer / Data Analyst

---

## ⭐ Support

If you find this project helpful:

* ⭐ Star the repository
* 🍴 Fork it
* 🧠 Use it for learning & interviews

---

