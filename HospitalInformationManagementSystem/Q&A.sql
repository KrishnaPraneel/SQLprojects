-- Question 1: Patient Visited to Hospital
SELECT 
    V.VisitDate,
    V.OPDNumber,
    PC.Name AS PatientCategory,
    CONCAT(P.FirstName, ' ', P.LastName) AS PatientName,
    CONCAT(D.FirstName, ' ', D.LastName) AS DoctorName,
    U.Name AS UnitName
FROM Visit V
INNER JOIN PatientCategory PC ON V.PatientCategoryID = PC.PatientCategoryID
INNER JOIN Patient P ON V.PatientID = P.PatientID
INNER JOIN Doctor D ON V.DoctorID = D.DoctorID
INNER JOIN Unit U ON V.UnitID = U.UnitID;

-- Question 2: Patient Admitted in Hospital
SELECT 
    A.AdmissionDate,
    A.IPDNumber,
    PC.Name AS PatientCategory,
    CONCAT(P.FirstName, ' ', P.LastName) AS PatientName,
    CONCAT(D.FirstName, ' ', D.LastName) AS DoctorName,
    U.Name AS UnitName,
    DS.DischargeDate
FROM Admission A
INNER JOIN PatientCategory PC ON A.PatientCategoryID = PC.PatientCategoryID
INNER JOIN Patient P ON A.PatientID = P.PatientID
INNER JOIN Doctor D ON A.DoctorID = D.DoctorID
INNER JOIN Unit U ON A.UnitID = U.UnitID
INNER JOIN Discharge DS ON A.AdmissionID = DS.AdmissionID;

-- Question 3: Number of Patient visited to Medicine Dept in June 2022
SELECT COUNT(*) AS NumberofPatients
FROM Visit V
INNER JOIN Doctor D ON V.DoctorID = D.DoctorID
LEFT JOIN Department dp ON D.DepartmentID = dp.DepartmentID
WHERE YEAR(V.VisitDate) = 2022 
AND MONTH(V.VisitDate) = 6
AND dp.Name = 'Medicine';

-- Question 4: List the Patient who visited as well as Admitted in Cardiology Dept for Year 2022

-- Option 1
SELECT 
    V.PatientID AS VisitPatientID,
    A.PatientID AS AdmissionPatientID
FROM Visit V
INNER JOIN Admission A ON V.PatientID = A.PatientID
INNER JOIN Doctor D ON V.DoctorID = D.DoctorID
INNER JOIN Department dp ON D.DepartmentID = dp.DepartmentID
INNER JOIN Doctor D1 ON A.DoctorID = D1.DoctorID
INNER JOIN Department dp1 ON D1.DepartmentID = dp1.DepartmentID
WHERE YEAR(V.VisitDate) = 2022 
AND dp.Name = 'Cardiology'
AND YEAR(A.AdmissionDate) = 2022 
AND dp1.Name = 'Cardiology';

-- Option 2
CREATE TEMPORARY TABLE visit AS
SELECT PatientID
FROM Visit V
INNER JOIN Doctor D ON V.DoctorID = D.DoctorID
INNER JOIN Department dp ON D.DepartmentID = dp.DepartmentID
WHERE YEAR(V.VisitDate) = 2022 
AND dp.Name = 'Cardiology';

CREATE TEMPORARY TABLE Admission AS
SELECT PatientID
FROM Admission A
INNER JOIN Doctor D ON A.DoctorID = D.DoctorID
INNER JOIN Department dp ON D.DepartmentID = dp.DepartmentID
WHERE YEAR(A.AdmissionDate) = 2022 
AND dp.Name = 'Cardiology';

SELECT * 
FROM Admission 
INNER JOIN visit ON visit.PatientID = Admission.PatientID;

-- Option 3
SELECT PatientID
FROM Visit V
INNER JOIN Doctor D ON V.DoctorID = D.DoctorID
INNER JOIN Department dp ON D.DepartmentID = dp.DepartmentID
WHERE YEAR(V.VisitDate) = 2022 
AND dp.Name = 'Cardiology';
SELECT V.PatientID
FROM Visit V
WHERE YEAR(V.VisitDate) = 2022 
AND EXISTS (
    SELECT 1
    FROM Admission A
    INNER JOIN Doctor D ON A.DoctorID = D.DoctorID
    INNER JOIN Department dp ON D.DepartmentID = dp.DepartmentID
    WHERE A.PatientID = V.PatientID
    AND YEAR(A.AdmissionDate) = 2022 
    AND dp.Name = 'Cardiology'
);

-- Question 5: Yearwise & Departmentwise visited Patient
SELECT 
    YEAR(V.VisitDate) AS Year_,
    dp.Name AS Department,
    COUNT(V.PatientID) AS PatientCount
FROM Visit V
INNER JOIN Doctor D ON V.DoctorID = D.DoctorID
INNER JOIN Department dp ON D.DepartmentID = dp.DepartmentID
WHERE YEAR(V.VisitDate) = 2022
GROUP BY YEAR(V.VisitDate), dp.Name;