Select *
From Trainees

Select *
From Courses

Select *
From Instructors

Select *
From Labs

Select *
From Enrollments

Select *  
From Grades
----------------------
--Trainee performance Based on ( Total Grads )

CREATE VIEW v_TraineePerformance AS (

SELECT
    t.TraineeID,
    t.EnglishName AS StudentName,
    t.Gender,
    t.University,
    ISNULL(t.Faculty,'Unknown') AS Faculty,
    t.AcademicYear,
    g.Attendance,
    g.Assignment,
    g.Project,
    g.MidExam,
    g.FinalExam,
    g.Total,

    CASE
        WHEN g.Total>=90 THEN 'A'
        WHEN g.Total>=80 THEN 'B'
        WHEN g.Total>=70 THEN 'C'
        WHEN g.Total>=60 THEN 'D'
        ELSE 'F'
    END AS Grade,

    CASE
        WHEN g.Total>=60 THEN 'Pass'
        ELSE 'Fail'
    END AS Result

FROM Trainees t
INNER JOIN Enrollments e
ON t.TraineeID=e.TraineeID

INNER JOIN Grades g
ON e.EnrollmentID=g.EnrollmentID);

--------------------------------------------
	---Attendece Statues for each student 

CREATE VIEW v_SessionAttendance AS (

SELECT 
      t.TraineeID,
      t.EnglishName,
      t.University,
      L.Building,
      S.Topic,
      S.SessionDate,
      A.Status
FROM Labs L
INNER JOIN Trainees t ON L.LabID = t.LabID
INNER JOIN Attendance A ON A.TraineeID = t.TraineeID
INNER JOIN Sessions S ON S.SessionID = A.SessionID);

-------------------------------
--- InstractorsPerformance 
CREATE VIEW v_InstructorPerformance AS(

SELECT

I.InstructorName,

COUNT(DISTINCT e.TraineeID) TotalStudents,

AVG(g.Total) AverageScore,

MAX(g.Total) HighestScore,

MIN(g.Total) LowestScore

FROM Instructors I

INNER JOIN CourseOfferings co
ON co.InstructorID=I.InstructorID

INNER JOIN Enrollments e
ON e.OfferingID=co.OfferingID

INNER JOIN Grades g
ON g.EnrollmentID=e.EnrollmentID

GROUP BY I.InstructorName);
--------------------------------
CREATE VIEW v_KPI AS

SELECT

COUNT(DISTINCT t.TraineeID) AS TotalStudents,

AVG(g.Total) AS AverageScore,

SUM(CASE
WHEN g.Total<60 THEN 1 ELSE 0 END) AS FailedStudents,

SUM(CASE WHEN g.Total < 60 THEN 1 ELSE 0 END) * 1.0
/ COUNT(*) AS FailRate

FROM Trainees t

INNER JOIN Enrollments e
ON t.TraineeID=e.TraineeID

INNER JOIN Grades g
ON e.EnrollmentID=g.EnrollmentID;

SELECT @@SERVERNAME;
SELECT DB_NAME();

SELECT * FROM sys.views
WHERE name = 'v_SessionAttendance';
