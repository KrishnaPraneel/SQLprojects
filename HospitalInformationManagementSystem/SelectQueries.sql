-- General Select Statements
SELECT * FROM Department;
SELECT * FROM Gender;
SELECT * FROM InsuranceCompany;
SELECT * FROM Nationality;
SELECT * FROM PatientCategory;
SELECT * FROM Relation;
SELECT * FROM ServiceCategory;
SELECT * FROM ServiceType;
SELECT * FROM Unit;
SELECT * FROM Ward;
SELECT * FROM Country;
SELECT * FROM Room;
SELECT * FROM Service;
SELECT * FROM Bed;
SELECT * FROM State;
SELECT * FROM City;
SELECT * FROM Doctor;
SELECT * FROM Patient;
SELECT * FROM Staff;
SELECT * FROM Visit;
SELECT * FROM Admission;
SELECT * FROM Advance;
SELECT * FROM Charge;
SELECT * FROM Bill;
SELECT * FROM Discharge;
SELECT * FROM ApplicationFunctionality;
SELECT * FROM `User`;  -- User is a reserved keyword, so use backticks
SELECT * FROM AccessRights;

-- Select top 10 records
SELECT * FROM Admission LIMIT 10;

-- OPD Queries
SELECT * FROM Patient WHERE PatientId = 28203;
SELECT * FROM Visit WHERE VisitId = 4394;
SELECT * FROM Admission WHERE PatientId = 28615;
SELECT * FROM Charge WHERE VisitId = 4394;
SELECT * FROM Bill WHERE VisitId = 4394;
SELECT * FROM Discharge;
SELECT * FROM Advance;

-- IPD Queries
SELECT * FROM Patient WHERE PatientId = 6396;
SELECT * FROM Visit WHERE PatientId = 6396;
SELECT * FROM Admission WHERE PatientId = 6396;
SELECT * FROM Charge WHERE AdmissionId = 11;
SELECT * FROM Bill WHERE AdmissionId = 11;
SELECT * FROM Discharge WHERE AdmissionId = 11;

-- Service Query
SELECT 
    ST.Name AS ServiceType,
    SC.Name AS ServiceCategory,
    S.Name AS ServiceName,
    S.Rate,
    S.CompanyId
FROM Service S
LEFT JOIN ServiceCategory SC ON S.ServiceCategoryId = SC.ServiceCategoryId
LEFT JOIN ServiceType ST ON S.ServiceTypeId = ST.ServiceTypeId
ORDER BY ST.Name;