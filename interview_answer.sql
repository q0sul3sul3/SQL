CREATE TABLE Doctor(
DoctorID VARCHAR(128), 
DoctorName VARCHAR(255), 
MRN VARCHAR(12));

CREATE TABLE Patient(PatientID VARCHAR(128), 
PatientName VARCHAR(255), 
Notes VARCHAR(255), 
DOB DATE, 
Gender VARCHAR(10), 
NRIC VARCHAR(10));

CREATE TABLE Appointment(
AppointmentID VARCHAR(128), 
DoctorID VARCHAR(128), 
PatientID VARCHAR(128), 
StartDate DATETIME, 
EndDate DATETIME, 
Subject VARCHAR(225));

CREATE TABLE Invoice(
InvoiceID VARCHAR(128), 
PatientID VARCHAR(128), 
TotalAmount DOUBLE, 
DoctorID VARCHAR(128));

-- 1.
INSERT INTO Patient(PatientID) VALUES('0002');

-- 2.
SELECT * FROM Appointment WHERE DoctorID='DT0001';

-- 3.
SELECT SUM(TotalAmount) FROM Invoice WHERE PatientID='0001';

-- 4. 
SELECT DoctorID, COUNT(*) FROM Appointment WHERE StartDate>='2022-01-01' AND EndDate<='2022-12-31' GROUP BY DoctorID;

-- 5.
UPDATE Patient SET DOB='2021-01-01' WHERE PatientID='0002';

-- 6.
INSERT INTO Invoice(InvoiceID, PatientID, TotalAmount, DoctorID) VALUES
('IV00001', 'P0002', 100, 'TAN'), 
('IV00002', 'P0002', 3600, 'TAN'), 
('IV00003', 'P0002', 200, 'TAN'), 
('IV00004', 'P0002', 500, 'PAG'), 
('IV00005', 'P0002', 0, 'TAN');