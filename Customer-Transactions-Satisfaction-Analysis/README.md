# Training Management & Performance Reporting System Using SQL

## Project Overview

This project focuses on building a **SQL-based reporting layer** for a training management system.

The database contains information about trainees, courses, instructors, labs, enrollments, grades, sessions, and attendance.

The main goal of this project is to transform relational database data into structured reporting views that can be used to analyze:

* Trainee performance
* Session attendance
* Instructor performance

Instead of working directly with multiple raw tables for every report, **SQL Views** were created to simplify data access and prepare the data for reporting and Business Intelligence tools.

---

## Project Objectives

* Analyze trainee academic performance.
* Track attendance status for each trainee.
* Analyze instructor performance across courses.
* Combine data from multiple relational tables.
* Create reusable SQL Views for reporting.
* Prepare a structured reporting layer that can be connected to BI tools such as Power BI.

---

## Database Structure

The project uses several related tables:

* **Trainees** – Contains trainee information.
* **Courses** – Contains course information.
* **Instructors** – Contains instructor information.
* **Labs** – Contains lab and building information.
* **Enrollments** – Contains trainee course enrollment information.
* **Grades** – Contains trainee exam and total grades.
* **Sessions** – Contains training session information.
* **Attendance** – Contains trainee attendance status.

---

##  Reporting Views

### 1. Trainee Performance View

**View:** `v_TraineePerformance`

This view combines trainee information with their grades to provide a simple reporting dataset for analyzing trainee performance.

### Information included:

* Trainee ID
* Student Name
* University
* Faculty
* Total Grade

The view also uses `ISNULL()` to handle missing faculty information and replace NULL values with `"Unknown"`.

---

### 2. Session Attendance View

**View:** `v_SessionAttendance`

This view combines information from the Labs, Trainees, Attendance, and Sessions tables.

It provides a detailed view of trainee attendance across training sessions.

### Information included:

* Lab ID
* Building
* Trainee ID
* Student Name
* Session ID
* Attendance Status

This view can be used to analyze attendance patterns and identify trainees with frequent absences or late attendance.

---

### 3. Instructor Performance View

**View:** `v_InstrucrorsPerformance`

This view combines instructor, course, enrollment, and grades data to provide an overview of instructor-related training outcomes.

### Information included:

* Instructor Name
* Course Name
* Course Duration
* Enrollment Date
* Trainee ID
* Midterm Exam Grade
* Final Exam Grade
* Total Grade

This dataset can be used to analyze course results and compare performance across instructors and courses.

---

## SQL JOINs Used

The project demonstrates the practical use of multiple SQL `JOIN` operations, including:

* `INNER JOIN`
* Joining multiple related tables
* Connecting trainees with enrollments and grades
* Connecting instructors with course offerings
* Connecting trainees with attendance sessions
* Combining data across different database entities

---

## SQL Concepts Used

This project demonstrates:

* `SELECT`
* `CREATE VIEW`
* `INNER JOIN`
* Table Relationships
* `ISNULL()`
* Data Transformation
* Relational Database Concepts
* Reporting Views
* Multi-table Queries

---

## Reporting & Business Use Cases

The created views can support several business and management decisions, including:

### Trainee Performance

* Identify high-performing trainees.
* Monitor trainee grades.
* Analyze academic performance.

### Attendance Monitoring

* Track attendance status.
* Identify attendance issues.
* Analyze session participation.

### Instructor Performance

* Compare course results.
* Analyze trainee grades by instructor.
* Evaluate training outcomes across courses.

---

##  Business Value

Creating reporting views provides a **clean and reusable data layer** between the operational database and reporting tools.

Instead of repeatedly writing complex queries across multiple tables, analysts can use the prepared views as centralized datasets for reporting and visualization.

This approach improves:

* Data accessibility
* Query simplicity
* Reporting consistency
* Data organization
* BI integration


