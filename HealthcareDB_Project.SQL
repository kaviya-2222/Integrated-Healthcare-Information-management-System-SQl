CREATE DATABASE HealthcareDB;
USE HealthcareDB;
CREATE TABLE Department(
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50),
location VARCHAR(50)
);
CREATE TABLE Doctor(
doctor_id INT PRIMARY KEY,
doctor_name VARCHAR(50),
specialization VARCHAR(50),
dept_id INT,
FOREIGN KEY(dept_id) REFERENCES Department(dept_id)
);
CREATE TABLE Patient(
patient_id INT PRIMARY KEY,
patient_name VARCHAR(50),
age INT,
gender VARCHAR(10),
phone VARCHAR(15),
city VARCHAR(50)
);
CREATE TABLE Appointment(
appointment_id INT PRIMARY KEY,
patient_id INT,
doctor_id INT,
appointment_date DATE,
status VARCHAR(20),
FOREIGN KEY(patient_id) REFERENCES Patient(patient_id),
FOREIGN KEY(doctor_id) REFERENCES Doctor(doctor_id)
);
CREATE TABLE Prescription(
prescription_id INT PRIMARY KEY,
appointment_id INT,
medicine_name VARCHAR(100),
dosage VARCHAR(50),
FOREIGN KEY(appointment_id) REFERENCES Appointment(appointment_id)
);
CREATE TABLE Billing(
bill_id INT PRIMARY KEY,
patient_id INT,
total_amount DECIMAL(10,2),
payment_status VARCHAR(20),
bill_date DATE,
FOREIGN KEY(patient_id) REFERENCES Patient(patient_id)
);

INSERT INTO Department VALUES
(1,'Cardiology','Block A'),
(2,'Neurology','Block B'),
(3,'Orthopedics','Block C'),
(4,'Dermatology','Block D'),
(5,'Pediatrics','Block E');
SELECT * FROM Department;

INSERT INTO Doctor VALUES
(101,'Dr.Ravi','Cardiologist',1),
(102,'Dr.Anitha','Neurologist',2),
(103,'Dr.Kumar','Orthopedic',3),
(104,'Dr.Priya','Dermatologist',4),
(105,'Dr.Suresh','Pediatrician',5),
(106,'Dr.Manoj','Cardiologist',1),
(107,'Dr.Divya','Neurologist',2),
(108,'Dr.Karthik','Orthopedic',3),
(109,'Dr.Deepika','Dermatologist',4),
(110,'Dr.Ramesh','Pediatrician',5);
SELECT * FROM Doctor;

INSERT INTO Patient VALUES
(201,'Kaviya',22,'Female','9876500001','Chennai'),
(202,'Prabhu',30,'Male','9876500002','Salem'),
(203,'Sandhiya',25,'Female','9876500003','Madurai'),
(204,'Yuvaraj',32,'Male','9876500004','Trichy'),
(205,'Mangalesh',28,'Male','9876500005','Coimbatore'),
(206,'Selvi',40,'Female','9876500006','Erode'),
(207,'Vindhiya',27,'Female','9876500007','Chennai'),
(208,'Sushmitha',24,'Female','9876500008','Salem'),
(209,'Viji',35,'Female','9876500009','Madurai'),
(210,'Lincy',29,'Female','9876500010','Trichy'),
(211,'Yoga',26,'Female','9876500011','Chennai'),
(212,'Arasu',38,'Male','9876500012','Salem'),
(213,'Rahul',31,'Male','9876500013','Coimbatore'),
(214,'Meena',33,'Female','9876500014','Erode'),
(215,'Arun',36,'Male','9876500015','Madurai'),
(216,'Divya',23,'Female','9876500016','Chennai'),
(217,'Karthik',34,'Male','9876500017','Trichy'),
(218,'Anu',21,'Female','9876500018','Salem'),
(219,'Sathish',39,'Male','9876500019','Coimbatore'),
(220,'Deepa',28,'Female','9876500020','Erode');
SELECT * FROM Patient;

INSERT INTO Appointment VALUES
(301,201,101,'2026-02-01','Completed'),
(302,202,102,'2026-02-02','Completed'),
(303,203,103,'2026-02-03','Pending'),
(304,204,104,'2026-02-04','Completed'),
(305,205,105,'2026-02-05','Pending'),
(306,206,106,'2026-02-06','Completed'),
(307,207,107,'2026-02-07','Completed'),
(308,208,108,'2026-02-08','Pending'),
(309,209,109,'2026-02-09','Completed'),
(310,210,110,'2026-02-10','Completed'),
(311,211,101,'2026-02-11','Pending'),
(312,212,102,'2026-02-12','Completed'),
(313,213,103,'2026-02-13','Completed'),
(314,214,104,'2026-02-14','Pending'),
(315,215,105,'2026-02-15','Completed'),
(316,216,106,'2026-02-16','Completed'),
(317,217,107,'2026-02-17','Pending'),
(318,218,108,'2026-02-18','Completed'),
(319,219,109,'2026-02-19','Completed'),
(320,220,110,'2026-02-20','Pending');
SELECT * FROM Appointment;

INSERT INTO Prescription VALUES
(501,301,'Paracetamol','500mg'),
(502,302,'Amoxicillin','250mg'),
(503,303,'Ibuprofen','400mg'),
(504,304,'Cetirizine','10mg'),
(505,305,'Metformin','500mg'),
(506,306,'Aspirin','75mg'),
(507,307,'Azithromycin','500mg'),
(508,308,'Pantoprazole','40mg'),
(509,309,'Atorvastatin','10mg'),
(510,310,'Losartan','50mg'),
(511,311,'Omeprazole','20mg'),
(512,312,'Dolo','650mg'),
(513,313,'Vitamin D','1000IU'),
(514,314,'Calcium','500mg'),
(515,315,'Insulin','10 units'),
(516,316,'Cough Syrup','10ml'),
(517,317,'Antacid','5ml'),
(518,318,'Diclofenac','50mg'),
(519,319,'Montelukast','10mg'),
(520,320,'Levocetirizine','5mg');
SELECT * FROM Prescription;

INSERT INTO Billing VALUES
(401,201,5000,'Paid','2026-02-01'),
(402,202,4500,'Paid','2026-02-02'),
(403,203,6000,'Pending','2026-02-03'),
(404,204,7000,'Paid','2026-02-04'),
(405,205,3500,'Pending','2026-02-05'),
(406,206,8000,'Paid','2026-02-06'),
(407,207,5200,'Paid','2026-02-07'),
(408,208,6100,'Pending','2026-02-08'),
(409,209,4800,'Paid','2026-02-09'),
(410,210,5500,'Paid','2026-02-10'),
(411,211,7200,'Pending','2026-02-11'),
(412,212,6400,'Paid','2026-02-12'),
(413,213,5300,'Paid','2026-02-13'),
(414,214,5800,'Pending','2026-02-14'),
(415,215,6700,'Paid','2026-02-15'),
(416,216,4500,'Paid','2026-02-16'),
(417,217,3900,'Pending','2026-02-17'),
(418,218,4100,'Paid','2026-02-18'),
(419,219,7600,'Paid','2026-02-19'),
(420,220,5000,'Pending','2026-02-20');
SELECT * FROM Billing;

-- joins
-- 1. patient-doctor-appointment details
SELECT p.patient_name,
       d.doctor_name,
       d.specialization,
       a.appointment_date,
       a.status
FROM Patient p
INNER JOIN Appointment a ON p.patient_id = a.patient_id
INNER JOIN Doctor d ON a.doctor_id = d.doctor_id;

-- 2.paitent-billing details
 SELECT p.patient_name,
       b.total_amount,
       b.payment_status,
       b.bill_date
FROM Patient p
INNER JOIN Billing b ON p.patient_id = b.patient_id
ORDER BY b.total_amount DESC;

-- 3. doctor-department details
SELECT d.doctor_name,
       d.specialization,
       dept.dept_name,
       dept.location
FROM Doctor d
INNER JOIN Department dept ON d.dept_id = dept.dept_id;

-- 4.patient-prescription details
SELECT p.patient_name,
       pr.medicine_name,
       pr.dosage
FROM Patient p
INNER JOIN Appointment a ON p.patient_id = a.patient_id
INNER JOIN Prescription pr ON a.appointment_id = pr.appointment_id;

-- 5.full healthcare report
SELECT p.patient_name,
       d.doctor_name,
       dept.dept_name,
       b.total_amount,
       b.payment_status
FROM Patient p
INNER JOIN Appointment a ON p.patient_id = a.patient_id
INNER JOIN Doctor d ON a.doctor_id = d.doctor_id
INNER JOIN Department dept ON d.dept_id = dept.dept_id
INNER JOIN Billing b ON p.patient_id = b.patient_id;

-- CONDITIONS
-- total patients
SELECT COUNT(*) AS Total_Patients
FROM Patient;

-- patients above 30
SELECT patient_name,age
FROM Patient
WHERE age>30
ORDER BY age;

-- descending
SELECT * FROM Billing 
ORDER BY total_amount DESC;

-- female patients
SELECT * FROM patient
WHERE gender="female"
ORDER BY Patient_name;

-- amount >6000
SELECT * FROM billing
WHERE total_amount>6000;

-- pending payments
SELECT *
FROM billing
WHERE payment_status = 'Pending';

-- completed payments
SELECT *
FROM billing
WHERE payment_status = 'Paid';

-- appointment bw dates
SELECT *
FROM Appointment
WHERE appointment_date BETWEEN '2026-02-05' AND '2026-02-15';

-- aggregate fns groupby,having
-- total bill amount ofpatients 
SELECT patient_id,
       AVG(total_amount) AS Avg_Bill
FROM Billing
WHERE total_amount>3000
GROUP BY patient_id
HAVING AVG(total_amount) > 4500
ORDER BY Avg_Bill DESC;

-- no of appointments for completed status
SELECT doctor_id,
       COUNT(appointment_id) AS Total_Appointments
FROM Appointment
WHERE status = 'Completed'
GROUP BY doctor_id
HAVING COUNT(appointment_id) >= 2
ORDER BY Total_Appointments DESC;

-- max bill amount by payment status
SELECT payment_status,
       MAX(total_amount) AS Max_Bill
FROM Billing
WHERE total_amount > 3000
GROUP BY payment_status
HAVING MAX(total_amount) > 5000
ORDER BY Max_Bill DESC;

-- avg bill amount >4500
SELECT patient_id,
       AVG(total_amount) AS Avg_Bill
FROM Billing
WHERE total_amount > 3000
GROUP BY patient_id
HAVING AVG(total_amount) > 4500
ORDER BY Avg_Bill DESC;

-- min bill amount by patient
SELECT patient_id,
       MIN(total_amount) AS Min_Bill
FROM Billing
WHERE total_amount > 2000
GROUP BY patient_id
HAVING MIN(total_amount) > 3000
ORDER BY Min_Bill ASC;

-- view
CREATE VIEW Healthcare_Report_View AS
SELECT p.patient_name,
       d.doctor_name,
       dept.dept_name,
       b.total_amount,
       b.payment_status
FROM Patient p
JOIN Appointment a ON p.patient_id = a.patient_id
JOIN Doctor d ON a.doctor_id = d.doctor_id
JOIN Department dept ON d.dept_id = dept.dept_id
JOIN Billing b ON p.patient_id = b.patient_id;
SELECT * FROM Healthcare_Report_View;

-- transaction
-- insert new billing
START TRANSACTION;
INSERT INTO Billing VALUES (421,201,8500,'Paid','2026-02-25');
COMMIT; -- data permanently saved

-- insert with rollback(if mistake happens)
START TRANSACTION;
INSERT INTO Billing VALUES (422,202,9000,'Paid','2026-02-26');
ROLLBACK;

-- update payment status
START TRANSACTION;
UPDATE Billing
SET payment_status = 'Paid'
WHERE bill_id = 403;
COMMIT;

-- delete appointment safely
START TRANSACTION;
DELETE FROM Appointment
WHERE appointment_id = 320;
ROLLBACK;

-- multiple pertions in one transaction
START TRANSACTION;
INSERT INTO Appointment VALUES (321,201,101,'2026-03-01','Pending');
INSERT INTO Billing VALUES (423,201,7500,'Pending','2026-03-01');
COMMIT;

-- subquery
-- Patients Whose Bill Amount is Greater Than Average Bill Amount
SELECT Patient_ID, Patient_Name
FROM Patient
WHERE Patient_ID IN
(
    SELECT Patient_ID
    FROM Billing
    WHERE Total_Amount >
    (
        SELECT AVG(Total_Amount)
        FROM Billing
    )
);
-- or
SELECT p.Patient_ID, p.Patient_Name, b.Total_Amount
FROM Patient p
JOIN Billing b 
ON p.Patient_ID = b.Patient_ID
WHERE b.Total_Amount >
(
    SELECT AVG(Total_Amount)
    FROM Billing
);

-- stored procedure
-- to retrieve patient details easily

DELIMITER //
CREATE PROCEDURE GetPatientAppointments(IN pid INT)
BEGIN
SELECT * FROM Appointment WHERE patient_id=pid;
END //
DELIMITER ;
CALL GetPatientAppointments(201);

-- trigger
DELIMITER //

CREATE TRIGGER Billing_Status_Check
BEFORE INSERT ON Billing
FOR EACH ROW
BEGIN
    IF NEW.total_amount > 6000 THEN
        SET NEW.payment_status = 'Pending';
    END IF;
END //

DELIMITER ;
-- test the trigger
INSERT INTO Billing VALUES (430,201,7000,'Paid','2026-03-05');
-- result
SELECT * FROM Billing WHERE bill_id = 430;







