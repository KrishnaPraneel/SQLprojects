-- Insert data into PatientCategory
INSERT INTO PatientCategory (Name, AddedBy, UpdatedBy) VALUES ('Self', 1, 1);
INSERT INTO PatientCategory (Name, AddedBy, UpdatedBy) VALUES ('Company', 1, 1);
INSERT INTO PatientCategory (Name, AddedBy, UpdatedBy) VALUES ('Staff', 1, 1);
INSERT INTO PatientCategory (Name, AddedBy, UpdatedBy) VALUES ('StaffDependent', 1, 1);

-- Insert data into Department
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Cardiology', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Gynaecology', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Medicine', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Nephrology', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Ophthalmology', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Orthopedic', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Paediatrics', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Physiotherapy', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Neurology', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Surgery', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Dental', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('ENT', 1, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Administration', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Reception', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Billing', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Store', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Account', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Maintenance', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Bio-Medical', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Computer(IT)', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Pathology', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Radiology', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Nursing', 0, 1, 1);
INSERT INTO Department (Name, isClinical, AddedBy, UpdatedBy) VALUES ('Pharmacy', 0, 1, 1);

-- Insert data into Gender
INSERT INTO Gender (Name, AddedBy, UpdatedBy) VALUES ('Male', 1, 1);
INSERT INTO Gender (Name, AddedBy, UpdatedBy) VALUES ('Female', 1, 1);

-- Insert data into InsuranceCompany
INSERT INTO InsuranceCompany (Name, AddedBy, UpdatedBy) VALUES ('Star Health', 1, 1);
INSERT INTO InsuranceCompany (Name, AddedBy, UpdatedBy) VALUES ('Vidal Healthcare', 1, 1);
INSERT INTO InsuranceCompany (Name, AddedBy, UpdatedBy) VALUES ('Aditya Birla', 1, 1);
INSERT INTO InsuranceCompany (Name, AddedBy, UpdatedBy) VALUES ('HDFC Ergo', 1, 1);
INSERT INTO InsuranceCompany (Name, AddedBy, UpdatedBy) VALUES ('ICICI Lombard', 1, 1);
INSERT INTO InsuranceCompany (Name, AddedBy, UpdatedBy) VALUES ('The Oriental Insurance Company', 1, 1);
INSERT INTO InsuranceCompany (Name, AddedBy, UpdatedBy) VALUES ('Care Health Insurance', 1, 1);

-- Insert data into Nationality
INSERT INTO Nationality (Name, AddedBy, UpdatedBy) VALUES ('Indian', 1, 1);

-- Insert data into Relation
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Self', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Spouse', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Child', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Friend', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Father', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Mother', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Son', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Brother', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Sister', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Daughter', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Sister In Law', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Brother In Law', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Grand Father', 1, 1);
INSERT INTO Relation (Name, AddedBy, UpdatedBy) VALUES ('Grand Mother', 1, 1);

-- Insert data into ServiceCategory
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Cardiology', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Gynaecology', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Medicine', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Nephrology', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Ophthalmology', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Orthopedic', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Paediatrics', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Physiotherapy', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Neurology', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Surgery', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Dental', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('ENT', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Pathology', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Radiology', 1, 1);
INSERT INTO ServiceCategory (Name, AddedBy, UpdatedBy) VALUES ('Nursing', 1, 1);

-- Insert data into Unit
INSERT INTO Unit (Name, AddedBy, UpdatedBy) VALUES ('Unit 1', 1, 1);
INSERT INTO Unit (Name, AddedBy, UpdatedBy) VALUES ('Unit 2', 1, 1);
INSERT INTO Unit (Name, AddedBy, UpdatedBy) VALUES ('Unit 3', 1, 1);
INSERT INTO Unit (Name, AddedBy, UpdatedBy) VALUES ('Unit 4', 1, 1);
INSERT INTO Unit (Name, AddedBy, UpdatedBy) VALUES ('Unit 5', 1, 1);

-- Insert data into Ward
INSERT INTO Ward (Name, UnitId, AddedBy, UpdatedBy) VALUES ('General Ward', 1, 1, 1);
INSERT INTO Ward (Name, UnitId, AddedBy, UpdatedBy) VALUES ('Male Ward', 1, 1, 1);


-- Create temporary table
DROP TEMPORARY TABLE IF EXISTS Temp;
CREATE TEMPORARY TABLE Temp (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ServiceName VARCHAR(200)
);

-- Insert data into Temp table for OPD services
INSERT INTO Temp (ServiceName) VALUES 
('Consulatation'),
('Follow-up Consulatation'),
('Procedure'),
('Operation Charges'),
('Anesthesist Charges'),
('OT Charges');

-- Insert data into Service table for OPD
SET @i = (SELECT MIN(ID) FROM Temp);
SET @ServiceName = '';

-- Assuming you're using MySQL, here’s the converted script:
-- Make sure to replace `Temp`, `ServiceCategory`, and `Service` with your actual table names.

-- Define the initial variables
SET @i = 1;
SET @ServiceName = '';

-- Start the outer loop
-- Change delimiter to define the procedure
DELIMITER //

-- Create the stored procedure
CREATE PROCEDURE PopulateService()
BEGIN
    -- Declare variables
    DECLARE i INT DEFAULT 1;
    DECLARE ServiceName VARCHAR(255);
    DECLARE MinDeptID INT;
    DECLARE MaxDeptID INT;
    DECLARE maxID INT;

    -- Get the maximum ID from Temp
    SELECT MAX(ID) INTO maxID FROM Temp;

    -- Outer loop
    WHILE i <= maxID DO
        -- Get the ServiceName for the current ID
        SELECT ServiceName INTO ServiceName FROM Temp WHERE ID = i;
        
        -- Get the min and max ServiceCategoryId
        SELECT MIN(ServiceCategoryId) INTO MinDeptID
        FROM ServiceCategory
        WHERE Name NOT IN ('Pathology', 'Radiology', 'Nursing');
        
        SELECT MAX(ServiceCategoryId) INTO MaxDeptID
        FROM ServiceCategory
        WHERE Name NOT IN ('Pathology', 'Radiology', 'Nursing');
        
        -- Inner loop
        WHILE MinDeptID <= MaxDeptID DO
            -- Insert into Service table
            INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
            VALUES (ServiceName, MinDeptID, 200, 1, NULL, 1, 1);  -- ServiceTypeId 1 for OPD
            
            -- Increment the Department ID
            SET MinDeptID = MinDeptID + 1;
        END WHILE;
        
        -- Increment the outer loop counter
        SET i = i + 1;
    END WHILE;
END //

-- Change delimiter back to default
DELIMITER ;

-- Call the procedure to execute the loops
CALL PopulateService();
-- Insert data into Temp table for IPD services
TRUNCATE TABLE Temp;
INSERT INTO Temp (ServiceName) VALUES 
('Bed Charges'),
('Nursing Charges'),
('IPD Visit Charges'),
('Operation Charges'),
('Anesthesist Charges'),
('OT Charges'),
('O2 Charges'),
('Procedure');

-- Insert data into Service table for IPD
SET @i = (SELECT MIN(ID) FROM Temp);
SET @ServiceName = '';

-- Change delimiter to define the procedure
DELIMITER //

-- Create the stored procedure for inserting data
CREATE PROCEDURE PopulateData()
BEGIN
    -- Variables for loops
    DECLARE i INT DEFAULT 1;
    DECLARE ServiceName VARCHAR(255);
    DECLARE MinDeptID INT;
    DECLARE MaxDeptID INT;
    DECLARE maxID INT;

    -- Populate Service table for general services
    SELECT MAX(ID) INTO maxID FROM Temp;

    WHILE i <= maxID DO
        SET ServiceName = (SELECT ServiceName FROM Temp WHERE ID = i);
        
        -- Get min and max ServiceCategoryId
        SELECT MIN(ServiceCategoryId) INTO MinDeptID
        FROM ServiceCategory
        WHERE Name NOT IN ('Pathology', 'Radiology', 'Nursing');
        
        SELECT MAX(ServiceCategoryId) INTO MaxDeptID
        FROM ServiceCategory
        WHERE Name NOT IN ('Pathology', 'Radiology', 'Nursing');
        
        -- Insert into Service table
        WHILE MinDeptID <= MaxDeptID DO
            INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
            VALUES (ServiceName, MinDeptID, 400, 2, NULL, 1, 1);  -- IPD General
            
            INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
            VALUES (ServiceName, MinDeptID, 600, 3, NULL, 1, 1);  -- IPD Special
            
            SET MinDeptID = MinDeptID + 1;
        END WHILE;
        
        SET i = i + 1;
    END WHILE;

    -- Insert data into Temp table for Pathology tests
    TRUNCATE TABLE Temp;
    INSERT INTO Temp (ServiceName) VALUES 
    ('SGOT (AST)'), ('SGPT (ALT)'), ('ALBUMIN'), ('WIDAL'), 
    ('BILLIRUBIN TOTAL'), ('BILLIRUBIN DIRECT'), ('BLOOD GROUP'), 
    ('PERIPHERAL SMEAR'), ('RETICULOCYTE COUNT'), ('TOTAL WBC COUNT'), 
    ('CBC'), ('ZINC (SERUM / URINE)'), ('VITAMIN D 25 HYDROXY'), 
    ('VITAMIN A'), ('UROBILINOGEN (URINE)'), ('BILIRUBIN (URINE)');

    -- Insert data into Service table for Pathology tests
    SET i = (SELECT MIN(ID) FROM Temp);
    
    WHILE i <= (SELECT MAX(ID) FROM Temp) DO
        SET ServiceName = (SELECT ServiceName FROM Temp WHERE ID = i);
        SET @ServiceCategoryId = (SELECT ServiceCategoryId FROM ServiceCategory WHERE Name = 'Pathology');
        
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, @ServiceCategoryId, 300, 1, NULL, 1, 1);  -- OPD
        
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, @ServiceCategoryId, 400, 2, NULL, 1, 1);  -- IPD General
        
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, @ServiceCategoryId, 500, 3, NULL, 1, 1);  -- IPD Special
        
        SET i = i + 1;
    END WHILE;

    -- Insert data into Temp table for Radiology tests
    TRUNCATE TABLE Temp;
    INSERT INTO Temp (ServiceName) VALUES 
    ('X-RAY'), ('CT Scan'), ('Sonography');

    -- Insert data into Service table for Radiology tests
    SET i = (SELECT MIN(ID) FROM Temp);
    
    WHILE i <= (SELECT MAX(ID) FROM Temp) DO
        SET ServiceName = (SELECT ServiceName FROM Temp WHERE ID = i);
        SET @ServiceCategoryId = (SELECT ServiceCategoryId FROM ServiceCategory WHERE Name = 'Radiology');
        
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, @ServiceCategoryId, 300, 1, NULL, 1, 1);  -- OPD
        
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, @ServiceCategoryId, 400, 2, NULL, 1, 1);  -- IPD General
        
        INSERT INTO Service (Name, ServiceCategoryId, Rate, ServiceTypeId, CompanyId, AddedBy, UpdatedBy)
        VALUES (ServiceName, @ServiceCategoryId, 500, 3, NULL, 1, 1);  -- IPD Special
        
        SET i = i + 1;
    END WHILE;

    -- Insert data into Patient table
    SET i = 1;
    WHILE i <= 50000 DO
        INSERT INTO Patient (
            FirstName, MiddleName, LastName, GenderID, DateOfBirth, ContactNo1, ContactNo2, Email,
            AddressLine1, AddressLine2, Pincode, CityID, AddedBy, UpdatedBy
        ) VALUES (
            CONCAT('PFname_', i),
            CONCAT('PMname_', i),
            CONCAT('PLname_', i),
            (SELECT GenderID FROM Gender ORDER BY RAND() LIMIT 1),
            (CURDATE() - INTERVAL (FLOOR(RAND() * (245 - 10) + 10)) DAY),
            '1234567890',
            '1234567890',
            CONCAT('PFname', i, '@gmail.com'),
            'Address Line 1',
            'Address Line 2',
            '123456',
            (SELECT CityID FROM City ORDER BY RAND() LIMIT 1),
            1,
            1
        );
        
        SET i = i + 1;
    END WHILE;

    -- Insert data into Visit table
    SET i = 1;
    WHILE i <= 10000 DO
        INSERT INTO Visit (
            PatientCategoryID, PatientId, DoctorID, UnitId, VisitDate, OPDNumber, AddedBy, UpdatedBy
        ) VALUES (
            (SELECT PatientCategoryID FROM PatientCategory ORDER BY RAND() LIMIT 1),
            (SELECT PatientID FROM Patient ORDER BY RAND() LIMIT 1),
            (SELECT DoctorID FROM Doctor ORDER BY RAND() LIMIT 1),
            (SELECT UnitID FROM Unit ORDER BY RAND() LIMIT 1),
            (CURDATE() - INTERVAL (FLOOR(RAND() * (245 - 10) + 10)) DAY),
            i,
            1,
            1
        );
        
        SET i = i + 1;
    END WHILE;

    -- Insert OPD charge data
    SET @MinVisitId = (SELECT MIN(VisitID) FROM Visit);
    SET @MaxVisitId = (SELECT MAX(VisitID) FROM Visit);

    WHILE @MinVisitId <= @MaxVisitId DO
        INSERT INTO Charge (
            VisitID, AdmissionID, ServiceID, Rate, Amount, Quantity, AddedBy, UpdatedBy
        ) VALUES (
            @MinVisitId,
            NULL,
            (SELECT ServiceID FROM Service WHERE ServiceTypeID = 1 ORDER BY RAND() LIMIT 1),
            0,
            0,
            1,
            1,
            1
        );
        SET @MinVisitId = @MinVisitId + 1;
    END WHILE;

    -- Prepare a temporary table
    CREATE TEMPORARY TABLE TempService AS
    SELECT ServiceId
    FROM Service
    WHERE ServiceTypeId = 1
    ORDER BY RAND()
    LIMIT 1;

    SET i = 1;
    WHILE i <= 1500 DO
        INSERT INTO Charge (VisitId, AdmissionId, ServiceId, Rate, Amount, Quantity, AddedBy, UpdatedBy)
        SELECT
            (SELECT VisitId FROM Visit ORDER BY RAND() LIMIT 1),
            NULL,
            (SELECT ServiceId FROM TempService ORDER BY RAND() LIMIT 1),
            0,
            0,
            1,
            1,
            1;
        SET i = i + 1;
    END WHILE;

    -- Update the rates in Charge from the Service table
    UPDATE Charge C
    JOIN Service S ON C.ServiceId = S.ServiceId
    SET C.Rate = S.Rate;

    -- Update Amount and Concession
    UPDATE Charge
    SET Amount = Rate * Quantity;

    UPDATE Charge
    SET Concession = (Amount * 10) / 100; -- 10% concession applied

    -- OPD Bill
    INSERT INTO Bill (VisitId, AdmissionId, TotalAmount, Concession, AddedBy, UpdatedBy)
    SELECT
        VisitId;

-- Update the rates in Charge from the Service table for IPD charges
UPDATE Charge C
JOIN Service S ON C.ServiceId = S.ServiceId
SET C.Rate = S.Rate
WHERE C.VisitId IS NULL;

-- Update Amount and Concession for IPD charges
UPDATE Charge
SET Amount = Rate * Quantity
WHERE VisitId IS NULL;

UPDATE Charge
SET Concession = (Amount * 10) / 100
WHERE VisitId IS NULL; -- 10% concession applied

-- -----------------------------Bill 
-- Print 'Admission Bill Data Insert'
INSERT INTO Bill (VisitId, AdmissionId, TotalAmount, Concession, AddedBy, UpdatedBy)
SELECT
    NULL AS VisitId,
    AdmissionId,
    SUM(Amount) AS TotalAmount,
    SUM(Concession) AS TotalConcession,
    1 AS AddedBy,
    1 AS UpdatedBy
FROM Charge
WHERE AdmissionId IS NOT NULL
GROUP BY AdmissionId
ORDER BY AdmissionId;

UPDATE Bill
SET FinalBillAmount = TotalAmount - Concession
WHERE VisitId IS NULL;

-- -----------------------Discharge 
INSERT INTO Discharge (AdmissionId, DoctorId, DischargeDate, AddedBy, UpdatedBy)
SELECT
    AdmissionId,
    DoctorId,
    DATE_ADD(AdmissionDate, INTERVAL ROUND(RAND() * (5 - 10) + 10) DAY) AS DischargeDate,
    1 AS AddedBy,
    1 AS UpdatedBy
FROM Admission;

-- --------------------------------ApplicationFunctionality
-- Print 'ApplicationFunctionality Data Insert'
INSERT INTO ApplicationFunctionality (Name, Level, AddedBy, UpdatedBy) VALUES ('Masters', 0, 1, 1);
INSERT INTO ApplicationFunctionality (Name, Level, AddedBy, UpdatedBy) VALUES ('IPD Billing', 0, 1, 1);
INSERT INTO ApplicationFunctionality (Name, Level, AddedBy, UpdatedBy) VALUES ('OPD Billing', 0, 1, 1);
INSERT INTO ApplicationFunctionality (Name, Level, AddedBy, UpdatedBy) VALUES ('Pathology', 0, 1, 1);
INSERT INTO ApplicationFunctionality (Name, Level, AddedBy, UpdatedBy) VALUES ('Radiology', 0, 1, 1);
INSERT INTO ApplicationFunctionality (Name, Level, AddedBy, UpdatedBy) VALUES ('Administration', 0, 1, 1);

-- ------------------USER
INSERT INTO `User` (StaffID, AddedBy, UpdatedBy) VALUES (1, 1, 1);
INSERT INTO `User` (StaffID, AddedBy, UpdatedBy) VALUES (21, 1, 1);
INSERT INTO `User` (StaffID, AddedBy, UpdatedBy) VALUES (22, 1, 1);

-- ---Admin User
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (1, 1, 1, 1);
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (1, 2, 1, 1);
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (1, 3, 1, 1);
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (1, 4, 1, 1);
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (1, 5, 1, 1);
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (1, 6, 1, 1);

-- -----Billing User
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (2, 2, 1, 1);
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (2, 3, 1, 1);
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (3, 2, 1, 1);
INSERT INTO AccessRights (UserID, FunctionalityID, AddedBy, UpdatedBy) VALUES (3, 3, 1, 1);

-- Insert Prescription and Clinical Note paths
INSERT INTO Prescription (VisitId, Path, AddedBy, UpdatedBy) 
VALUES (2, '\\\\krishnapeddibhotla\\Patient\\1\\OPD\\2\\Prescription_1.jpg', 1, 1);
-- 2 is VisitId in Path 

INSERT INTO ClinicalNote (AdmissionId, Path, AddedBy, UpdatedBy) 
VALUES (5, '\\\\krishnapeddibhotla\\Patient\\3\\IPD\\5\\Note_5154_1.jpg', 1, 1);
END;
-- 5 is AdmissionId in Path
