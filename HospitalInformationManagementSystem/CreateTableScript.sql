-- Create database
CREATE DATABASE IF NOT EXISTS HIMS;
USE HIMS;

-- Create AccessRights table
CREATE TABLE `AccessRights` (
    `AccessRightID` BIGINT AUTO_INCREMENT NOT NULL,
    `UserID` BIGINT NOT NULL,
    `FunctionalityID` BIGINT NOT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`AccessRightID`)
);

-- Create Admission table
CREATE TABLE `Admission` (
    `AdmissionId` BIGINT AUTO_INCREMENT NOT NULL,
    `PatientCategoryID` INT NOT NULL,
    `PatientId` BIGINT NOT NULL,
    `UnitId` INT NOT NULL,
    `DoctorId` BIGINT NOT NULL,
    `AdmissionDate` DATETIME NOT NULL,
    `IPDNumber` BIGINT NOT NULL,
    `RelativeName` VARCHAR(200) DEFAULT NULL,
    `RelationId` INT DEFAULT NULL,
    `BedId` INT NOT NULL,
    `CompanyId` INT NOT NULL,
    `IsMLC` TINYINT(1) DEFAULT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`AdmissionId`)
);

-- Create Advance table
CREATE TABLE `Advance` (
    `AdvanceId` BIGINT AUTO_INCREMENT NOT NULL,
    `PatientId` BIGINT NOT NULL,
    `AdvAmount` DECIMAL(18, 2) DEFAULT NULL,
    `Used` DECIMAL(18, 2) DEFAULT NULL,
    `Refund` DECIMAL(18, 2) DEFAULT NULL,
    `Balance` DECIMAL(18, 2) DEFAULT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`AdvanceId`)
);

-- Create ApplicationFunctionality table
CREATE TABLE `ApplicationFunctionality` (
    `FunctionalityID` BIGINT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `Level` INT NOT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`FunctionalityID`)
);

-- Create Bed table
CREATE TABLE `Bed` (
    `BedId` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `WardId` INT DEFAULT NULL,
    `RoomId` INT DEFAULT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`BedId`)
);

-- Create Bill table
CREATE TABLE `Bill` (
    `BillId` BIGINT AUTO_INCREMENT NOT NULL,
    `BillDateTime` DATETIME DEFAULT NULL,
    `VisitId` BIGINT DEFAULT NULL,
    `AdmissionId` BIGINT DEFAULT NULL,
    `TotalAmount` DECIMAL(18, 2) DEFAULT NULL,
    `AdvanceAmount` DECIMAL(18, 2) DEFAULT NULL,
    `Concession` DECIMAL(18, 2) DEFAULT NULL,
    `FinalBillAmount` DECIMAL(18, 2) DEFAULT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`BillId`)
);


-- Create database
CREATE DATABASE IF NOT EXISTS HIMS;
USE HIMS;

-- Create Charge table
CREATE TABLE `Charge` (
    `ChargeId` BIGINT AUTO_INCREMENT NOT NULL,
    `VisitId` BIGINT DEFAULT NULL,
    `AdmissionId` BIGINT DEFAULT NULL,
    `ServiceId` BIGINT NOT NULL,
    `Rate` DECIMAL(18, 2) NOT NULL,
    `Quantity` INT NOT NULL,
    `Amount` DECIMAL(18, 2) NOT NULL,
    `Concession` DECIMAL(18, 2) DEFAULT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`ChargeId`)
);

-- Create City table
CREATE TABLE `City` (
    `CityID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `StateID` INT NOT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`CityID`)
);

-- Create Country table
CREATE TABLE `Country` (
    `CountryID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `NationalityID` INT DEFAULT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`CountryID`)
);

-- Create Department table
CREATE TABLE `Department` (
    `DepartmentID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `IsClinical` TINYINT(1) NOT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`DepartmentID`)
);

-- Create Discharge table
CREATE TABLE `Discharge` (
    `DischargeId` BIGINT AUTO_INCREMENT NOT NULL,
    `AdmissionId` BIGINT NOT NULL,
    `DoctorId` BIGINT NOT NULL,
    `DischargeDate` DATETIME NOT NULL,
    `DischargeNotes` VARCHAR(2000) DEFAULT NULL,
    `FileAttachedPath` VARCHAR(500) DEFAULT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`DischargeId`)
);

-- Create Doctor table
CREATE TABLE `Doctor` (
    `DoctorID` BIGINT AUTO_INCREMENT NOT NULL,
    `DepartmentID` INT NOT NULL,
    `FirstName` VARCHAR(150) NOT NULL,
    `MiddleName` VARCHAR(150) DEFAULT NULL,
    `LastName` VARCHAR(150) NOT NULL,
    `Qualification` VARCHAR(150) DEFAULT NULL,
    `GenderID` INT DEFAULT NULL,
    `DateOfBirth` DATE DEFAULT NULL,
    `ContactNo1` VARCHAR(15) DEFAULT NULL,
    `ContactNo2` VARCHAR(15) DEFAULT NULL,
    `Email` VARCHAR(100) DEFAULT NULL,
    `AddressLine1` VARCHAR(150) DEFAULT NULL,
    `AddressLine2` VARCHAR(150) DEFAULT NULL,
    `Pincode` VARCHAR(10) DEFAULT NULL,
    `CityID` INT DEFAULT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`DoctorID`)
);

-- Create Gender table
CREATE TABLE `Gender` (
    `GenderID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`GenderID`)
);

-- Create InsuranceCompany table
CREATE TABLE `InsuranceCompany` (
    `CompanyId` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` BIGINT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`CompanyId`)
);

-- Create Nationality table
CREATE TABLE `Nationality` (
    `NationalityID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `Status` TINYINT(1) DEFAULT NULL,
    `AddedBy` INT DEFAULT NULL,
    `AddedDateTime` DATETIME DEFAULT NULL,
    `UpdatedBy` INT DEFAULT NULL,
    `UpdatedDateTime` DATETIME DEFAULT NULL,
    PRIMARY KEY (`NationalityID`)
);

CREATE TABLE `Patient` (
    `PatientID` BIGINT AUTO_INCREMENT NOT NULL,
    `FirstName` VARCHAR(150) NOT NULL,
    `MiddleName` VARCHAR(150) NULL,
    `LastName` VARCHAR(150) NOT NULL,
    `GenderID` INT NOT NULL,
    `DateOfBirth` DATE NULL,
    `ContactNo1` VARCHAR(15) NULL,
    `ContactNo2` VARCHAR(15) NULL,
    `Email` VARCHAR(100) NULL,
    `AddressLine1` VARCHAR(150) NULL,
    `AddressLine2` VARCHAR(150) NULL,
    `Pincode` VARCHAR(10) NULL,
    `CityID` INT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`PatientID`)
);

CREATE TABLE `PatientCategory` (
    `PatientCategoryID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`PatientCategoryID`)
);

CREATE TABLE `Relation` (
    `RelationID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`RelationID`)
);

CREATE TABLE `Room` (
    `RoomId` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `WardID` INT NOT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`RoomId`)
);

CREATE TABLE `Service` (
    `ServiceId` BIGINT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(200) NOT NULL,
    `ServiceCategoryId` INT NOT NULL,
    `Rate` DECIMAL(18, 2) NOT NULL,
    `ServiceTypeId` INT NOT NULL,
    `CompanyId` INT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`ServiceId`)
);

CREATE TABLE `ServiceCategory` (
    `ServiceCategoryId` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`ServiceCategoryId`)
);

CREATE TABLE `ServiceType` (
    `ServiceTypeID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`ServiceTypeID`)
);

CREATE TABLE `Staff` (
    `StaffID` BIGINT AUTO_INCREMENT NOT NULL,
    `DepartmentID` INT NOT NULL,
    `FirstName` VARCHAR(150) NOT NULL,
    `MiddleName` VARCHAR(150) NULL,
    `LastName` VARCHAR(150) NOT NULL,
    `GenderID` INT NOT NULL,
    `DateOfBirth` DATE NULL,
    `ContactNo1` VARCHAR(15) NULL,
    `ContactNo2` VARCHAR(15) NULL,
    `Email` VARCHAR(100) NULL,
    `AddressLine1` VARCHAR(150) NULL,
    `AddressLine2` VARCHAR(150) NULL,
    `Pincode` VARCHAR(10) NULL,
    `CityID` INT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`StaffID`)
);

CREATE TABLE `State` (
    `StateID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `CountryID` INT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`StateID`)
);

CREATE TABLE `Unit` (
    `UnitID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`UnitID`)
);

CREATE TABLE `User` (
    `UserID` BIGINT AUTO_INCREMENT NOT NULL,
    `StaffID` BIGINT NOT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`UserID`)
);

CREATE TABLE `Visit` (
    `VisitId` BIGINT AUTO_INCREMENT NOT NULL,
    `PatientCategoryID` INT NOT NULL,
    `PatientId` BIGINT NOT NULL,
    `DoctorID` BIGINT NOT NULL,
    `UnitId` INT NOT NULL,
    `VisitDate` DATETIME NOT NULL,
    `OPDNumber` BIGINT NOT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`VisitId`)
);

CREATE TABLE `Ward` (
    `WardID` INT AUTO_INCREMENT NOT NULL,
    `Name` VARCHAR(50) NOT NULL,
    `UnitId` INT NULL,
    `Status` TINYINT(1) NULL,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL,
    PRIMARY KEY (`WardID`)
);

CREATE TABLE `Prescription` (
    `PrescriptionId` BIGINT AUTO_INCREMENT NOT NULL,
    `VisitId` BIGINT NOT NULL,
    `Path` VARCHAR(500),
    `Status` TINYINT(1) NULL DEFAULT 1,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`PrescriptionId`),
    CONSTRAINT `FK_Prescription_Visit` FOREIGN KEY (`VisitId`)
        REFERENCES `Visit` (`VisitId`)
);

CREATE TABLE `ClinicalNote` (
    `ClinicalNoteId` BIGINT AUTO_INCREMENT NOT NULL,
    `AdmissionId` BIGINT NOT NULL,
    `Path` VARCHAR(500),
    `Status` TINYINT(1) NULL DEFAULT 1,
    `AddedBy` INT NULL,
    `AddedDateTime` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
    `UpdatedBy` BIGINT NULL,
    `UpdatedDateTime` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`ClinicalNoteId`)
);

-- Add foreign key constraint to ClinicalNote table
ALTER TABLE ClinicalNote
ADD CONSTRAINT FK_ClinicalNote_Admission
FOREIGN KEY (AdmissionId) REFERENCES Admission (AdmissionId);

-- Set default values for AccessRights table
ALTER TABLE AccessRights
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE AccessRights
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE AccessRights
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Admission table
ALTER TABLE Admission
MODIFY COLUMN AdmissionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Admission
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Admission
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Admission
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Advance table
ALTER TABLE Advance
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Advance
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Advance
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for ApplicationFunctionality table
ALTER TABLE ApplicationFunctionality
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE ApplicationFunctionality
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE ApplicationFunctionality
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Bed table
ALTER TABLE Bed
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Bed
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Bed
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Bill table
ALTER TABLE Bill
MODIFY COLUMN BillDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Bill
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Bill
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Bill
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Charge table
ALTER TABLE Charge
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Charge
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Charge
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
-- Set default values for City table
ALTER TABLE City
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE City
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE City
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Country table
ALTER TABLE Country
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Country
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Country
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Department table
ALTER TABLE Department
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Department
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Department
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
-- Set default values for Discharge table
ALTER TABLE Discharge
MODIFY COLUMN DischargeDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Discharge
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Discharge
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Discharge
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
-- Set default values for Doctor table
ALTER TABLE Doctor
ALTER COLUMN Status SET DEFAULT 1;

-- Set default values for Doctor table
ALTER TABLE Doctor
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Doctor
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Doctor
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Gender table
ALTER TABLE Gender
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Gender
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Gender
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for InsuranceCompany table
ALTER TABLE InsuranceCompany
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE InsuranceCompany
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE InsuranceCompany
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Nationality table
ALTER TABLE Nationality
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Nationality
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Nationality
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Patient table
ALTER TABLE Patient
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Patient
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Patient
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for PatientCategory table
ALTER TABLE PatientCategory
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE PatientCategory
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE PatientCategory
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Relation table
ALTER TABLE Relation
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Relation
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Relation
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Room table
ALTER TABLE Room
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Room
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Room
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Service table
ALTER TABLE Service
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Service
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Service
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for ServiceCategory table
ALTER TABLE ServiceCategory
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE ServiceCategory
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE ServiceCategory
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for ServiceType table
ALTER TABLE ServiceType
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE ServiceType
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE ServiceType
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Staff table
ALTER TABLE Staff
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Staff
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Staff
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for State table
ALTER TABLE State
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE State
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE State
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Unit table
ALTER TABLE Unit
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Unit
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Unit
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for User table
ALTER TABLE User
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE User
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE User
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Visit table
ALTER TABLE Visit
MODIFY COLUMN VisitDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Visit
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Visit
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Visit
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Set default values for Ward table
ALTER TABLE Ward
MODIFY COLUMN Status INT DEFAULT 1;

ALTER TABLE Ward
MODIFY COLUMN AddedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE Ward
MODIFY COLUMN UpdatedDateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Adding foreign key constraints
ALTER TABLE `AccessRights`
ADD CONSTRAINT `FK_AccessRights_ApplicationFunctionality`
FOREIGN KEY (`FunctionalityID`)
REFERENCES `ApplicationFunctionality` (`FunctionalityID`);

ALTER TABLE `AccessRights`
ADD CONSTRAINT `FK_AccessRights_User`
FOREIGN KEY (`UserID`)
REFERENCES `User` (`UserID`);

ALTER TABLE `Admission`
ADD CONSTRAINT `FK_Admission_BedId`
FOREIGN KEY (`BedId`)
REFERENCES `Bed` (`BedId`);

ALTER TABLE `Admission`
ADD CONSTRAINT `FK_Admission_Doctor`
FOREIGN KEY (`DoctorId`)
REFERENCES `Doctor` (`DoctorID`);

ALTER TABLE `Admission`
ADD CONSTRAINT `FK_Admission_InsuranceCompany`
FOREIGN KEY (`CompanyId`)
REFERENCES `InsuranceCompany` (`CompanyId`);

ALTER TABLE `Admission`
ADD CONSTRAINT `FK_Admission_Patient`
FOREIGN KEY (`PatientId`)
REFERENCES `Patient` (`PatientID`);

ALTER TABLE `Admission`
ADD CONSTRAINT `FK_Admission_PatientCategory`
FOREIGN KEY (`PatientCategoryID`)
REFERENCES `PatientCategory` (`PatientCategoryID`);

ALTER TABLE `Admission`
ADD CONSTRAINT `FK_Admission_Relation`
FOREIGN KEY (`RelationId`)
REFERENCES `Relation` (`RelationID`);

ALTER TABLE `Admission`
ADD CONSTRAINT `FK_Admission_Unit`
FOREIGN KEY (`UnitId`)
REFERENCES `Unit` (`UnitID`);

ALTER TABLE `Advance`
ADD CONSTRAINT `FK_Advance_Patient`
FOREIGN KEY (`PatientId`)
REFERENCES `Patient` (`PatientID`);

ALTER TABLE `Bed`
ADD CONSTRAINT `FK_Bed_Room`
FOREIGN KEY (`RoomId`)
REFERENCES `Room` (`RoomId`);

ALTER TABLE `Bill`
ADD CONSTRAINT `FK_Bill_Admission`
FOREIGN KEY (`AdmissionId`)
REFERENCES `Admission` (`AdmissionId`);

ALTER TABLE `Bill`
ADD CONSTRAINT `FK_Bill_Visit`
FOREIGN KEY (`VisitId`)
REFERENCES `Visit` (`VisitId`);

ALTER TABLE `Charge`
ADD CONSTRAINT `FK_Charge_Admission`
FOREIGN KEY (`AdmissionId`)
REFERENCES `Admission` (`AdmissionId`);

ALTER TABLE `Charge`
ADD CONSTRAINT `FK_Charge_Service`
FOREIGN KEY (`ServiceId`)
REFERENCES `Service` (`ServiceId`);

ALTER TABLE `Charge`
ADD CONSTRAINT `FK_Charge_Visit`
FOREIGN KEY (`VisitId`)
REFERENCES `Visit` (`VisitId`);

ALTER TABLE `City`
ADD CONSTRAINT `FK_City_State`
FOREIGN KEY (`StateID`)
REFERENCES `State` (`StateID`);

ALTER TABLE `Country`
ADD CONSTRAINT `FK_Country_Nationality`
FOREIGN KEY (`NationalityID`)
REFERENCES `Nationality` (`NationalityID`);

ALTER TABLE `Discharge`
ADD CONSTRAINT `FK_Discharge_Admission`
FOREIGN KEY (`AdmissionId`)
REFERENCES `Admission` (`AdmissionId`);

ALTER TABLE `Discharge`
ADD CONSTRAINT `FK_Discharge_Doctor`
FOREIGN KEY (`DoctorId`)
REFERENCES `Doctor` (`DoctorID`);

ALTER TABLE `Doctor`
ADD CONSTRAINT `FK_Doctor_City`
FOREIGN KEY (`CityID`)
REFERENCES `City` (`CityID`);

ALTER TABLE `Doctor`
ADD CONSTRAINT `FK_Doctor_Department`
FOREIGN KEY (`DepartmentID`)
REFERENCES `Department` (`DepartmentID`);

ALTER TABLE `Doctor`
ADD CONSTRAINT `FK_Doctor_Gender`
FOREIGN KEY (`GenderID`)
REFERENCES `Gender` (`GenderID`);

ALTER TABLE `Patient`
ADD CONSTRAINT `FK_Patient_City`
FOREIGN KEY (`CityID`)
REFERENCES `City` (`CityID`);

ALTER TABLE `Patient` 
    MODIFY `GenderID` INT DEFAULT 1;

ALTER TABLE `Room` 
    MODIFY `WardID` INT DEFAULT 1;

ALTER TABLE `Service` 
    MODIFY `CompanyId` INT DEFAULT 1,
    MODIFY `ServiceCategoryId` INT DEFAULT 1;

ALTER TABLE `Staff` 
    MODIFY `CityID` INT DEFAULT 1,
    MODIFY `DepartmentID` INT DEFAULT 1,
    MODIFY `GenderID` INT DEFAULT 1;

ALTER TABLE `State` 
    MODIFY `CountryID` INT DEFAULT 1;

ALTER TABLE `User` 
    MODIFY `StaffID` INT DEFAULT 1;

ALTER TABLE `Visit` 
    MODIFY `DoctorID` INT DEFAULT 1,
    MODIFY `PatientId` INT DEFAULT 1,
    MODIFY `PatientCategoryID` INT DEFAULT 1,
    MODIFY `UnitId` INT DEFAULT 1;

ALTER TABLE `AccessRights`
    ADD CONSTRAINT `FK_AccessRights_ApplicationFunctionality` FOREIGN KEY (`FunctionalityID`) REFERENCES `ApplicationFunctionality` (`FunctionalityID`),
    ADD CONSTRAINT `FK_AccessRights_User` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`);

ALTER TABLE `Admission`
    ADD CONSTRAINT `FK_Admission_BedId` FOREIGN KEY (`BedId`) REFERENCES `Bed` (`BedId`),
    ADD CONSTRAINT `FK_Admission_Doctor` FOREIGN KEY (`DoctorId`) REFERENCES `Doctor` (`DoctorID`),
    ADD CONSTRAINT `FK_Admission_InsuranceCompany` FOREIGN KEY (`CompanyId`) REFERENCES `InsuranceCompany` (`CompanyId`),
    ADD CONSTRAINT `FK_Admission_Patient` FOREIGN KEY (`PatientId`) REFERENCES `Patient` (`PatientID`),
    ADD CONSTRAINT `FK_Admission_PatientCategory` FOREIGN KEY (`PatientCategoryID`) REFERENCES `PatientCategory` (`PatientCategoryID`),
    ADD CONSTRAINT `FK_Admission_Relation` FOREIGN KEY (`RelationId`) REFERENCES `Relation` (`RelationID`),
    ADD CONSTRAINT `FK_Admission_Unit` FOREIGN KEY (`UnitId`) REFERENCES `Unit` (`UnitID`);

ALTER TABLE `Advance`
    ADD CONSTRAINT `FK_Advance_Patient` FOREIGN KEY (`PatientId`) REFERENCES `Patient` (`PatientID`);

ALTER TABLE `Bed`
    ADD CONSTRAINT `FK_BedId_Room` FOREIGN KEY (`RoomId`) REFERENCES `Room` (`RoomId`);

ALTER TABLE `Bill`
    ADD CONSTRAINT `FK_Bill_Admission1` FOREIGN KEY (`AdmissionId`) REFERENCES `Admission` (`AdmissionId`),
    ADD CONSTRAINT `FK_Bill_Visit` FOREIGN KEY (`VisitId`) REFERENCES `Visit` (`VisitId`);

ALTER TABLE `Charge`
    ADD CONSTRAINT `FK_Charge_Admission` FOREIGN KEY (`AdmissionId`) REFERENCES `Admission` (`AdmissionId`),
    ADD CONSTRAINT `FK_Charge_Service` FOREIGN KEY (`ServiceId`) REFERENCES `Service` (`ServiceId`),
    ADD CONSTRAINT `FK_Charge_Visit` FOREIGN KEY (`VisitId`) REFERENCES `Visit` (`VisitId`);

ALTER TABLE `City`
    ADD CONSTRAINT `FK_City_State` FOREIGN KEY (`StateID`) REFERENCES `State` (`StateID`);

ALTER TABLE `Country`
    ADD CONSTRAINT `FK_Country_Nationality` FOREIGN KEY (`NationalityID`) REFERENCES `Nationality` (`NationalityID`);

ALTER TABLE `Discharge`
    ADD CONSTRAINT `FK_Discharge_Admission` FOREIGN KEY (`AdmissionId`) REFERENCES `Admission` (`AdmissionId`),
    ADD CONSTRAINT `FK_Discharge_Doctor` FOREIGN KEY (`DoctorId`) REFERENCES `Doctor` (`DoctorID`);

ALTER TABLE `Doctor`
    ADD CONSTRAINT `FK_Doctor_City` FOREIGN KEY (`CityID`) REFERENCES `City` (`CityID`),
    ADD CONSTRAINT `FK_Doctor_Department` FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`),
    ADD CONSTRAINT `FK_Doctor_Gender` FOREIGN KEY (`GenderID`) REFERENCES `Gender` (`GenderID`);

ALTER TABLE `Patient`
    ADD CONSTRAINT `FK_Patient_Gender` FOREIGN KEY (`GenderID`) REFERENCES `Gender` (`GenderID`);

ALTER TABLE `Room`
    ADD CONSTRAINT `FK_Room_Ward` FOREIGN KEY (`WardID`) REFERENCES `Ward` (`WardID`);

ALTER TABLE `Service`
    ADD CONSTRAINT `FK_Service_InsuranceCompany` FOREIGN KEY (`CompanyId`) REFERENCES `InsuranceCompany` (`CompanyId`),
    ADD CONSTRAINT `FK_Service_ServiceCategory` FOREIGN KEY (`ServiceCategoryId`) REFERENCES `ServiceCategory` (`ServiceCategoryId`);

ALTER TABLE `Staff`
    ADD CONSTRAINT `FK_Staff_City` FOREIGN KEY (`CityID`) REFERENCES `City` (`CityID`),
    ADD CONSTRAINT `FK_Staff_Department` FOREIGN KEY (`DepartmentID`) REFERENCES `Department` (`DepartmentID`),
    ADD CONSTRAINT `FK_Staff_Gender` FOREIGN KEY (`GenderID`) REFERENCES `Gender` (`GenderID`);

ALTER TABLE `State`
    ADD CONSTRAINT `FK_State_Country` FOREIGN KEY (`CountryID`) REFERENCES `Country` (`CountryID`);

ALTER TABLE `User`
    ADD CONSTRAINT `FK_User_Staff` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`);

ALTER TABLE `Visit`
    ADD CONSTRAINT `FK_Visit_Doctor` FOREIGN KEY (`DoctorID`) REFERENCES `Doctor` (`DoctorID`),
    ADD CONSTRAINT `FK_Visit_Patient` FOREIGN KEY (`PatientId`) REFERENCES `Patient` (`PatientID`),
    ADD CONSTRAINT `FK_Visit_PatientCategory` FOREIGN KEY (`PatientCategoryID`) REFERENCES `PatientCategory` (`PatientCategoryID`),
    ADD CONSTRAINT `FK_Visit_Unit` FOREIGN KEY (`UnitId`) REFERENCES `Unit` (`UnitID`);


CREATE VIEW `View_ServiceDetails` AS
SELECT ST.`Name` AS `ServiceType`, SC.`Name` AS `ServiceCategory`, S.`Name` AS `ServiceName`, S.`Rate`, S.`CompanyId`
FROM `Service` S
INNER JOIN `ServiceCategory` SC ON S.`ServiceCategoryId` = SC.`ServiceCategoryId`
INNER JOIN `ServiceType` ST ON S.`ServiceTypeID` = ST.`ServiceTypeID`;

CREATE VIEW `View_Patient` AS
SELECT P.`PatientID`,
       P.`FirstName`,
       P.`MiddleName`,
       P.`LastName`,
       g.`Name` AS `Gender`,
       P.`DateOfBirth`,
       P.`ContactNo1`,
       P.`ContactNo2`,
       P.`Email`,
       P.`AddressLine1`,
       P.`AddressLine2`,
       P.`Pincode`,
       C.`Name` AS `City`
FROM `Patient` P
INNER JOIN `Gender` g ON P.`GenderID` = g.`GenderID`
INNER JOIN `City` C ON P.`CityID` = C.`CityID`;

CREATE VIEW `View_Doctor` AS
SELECT d.`DoctorID`,
       d.`FirstName`,
       d.`MiddleName`,
       d.`LastName`,
       d.`Qualification`,
       dp.`Name` AS `Department`,
       g.`Name` AS `Gender`,
       d.`DateOfBirth`,
       d.`ContactNo1`,
       d.`ContactNo2`,
       d.`Email`,
       d.`AddressLine1`,
       d.`AddressLine2`,
       d.`Pincode`,
       C.`Name` AS `City`
FROM `Doctor` d
INNER JOIN `Gender` g ON d.`GenderID` = g.`GenderID`
INNER JOIN `City` C ON d.`CityID` = C.`CityID`
INNER JOIN `Department` dp ON d.`DepartmentID` = dp.`DepartmentID`;

CREATE VIEW `View_Staff` AS
SELECT s.`StaffID`,
       s.`FirstName`,
       s.`MiddleName`,
       s.`LastName`,
       dp.`Name` AS `Department`,
       g.`Name` AS `Gender`,
       s.`DateOfBirth`,
       s.`ContactNo1`,
       s.`ContactNo2`,
       s.`Email`,
       s.`AddressLine1`,
       s.`AddressLine2`,
       s.`Pincode`,
       C.`Name` AS `City`
FROM `Staff` s
INNER JOIN `Gender` g ON s.`GenderID` = g.`GenderID`
INNER JOIN `City` C ON s.`CityID` = C.`CityID`
INNER JOIN `Department` dp ON s.`DepartmentID` = dp.`DepartmentID`;
