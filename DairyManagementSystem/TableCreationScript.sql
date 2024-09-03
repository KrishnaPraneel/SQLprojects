-- Create the DairyProject database
CREATE DATABASE IF NOT EXISTS DairyProject;

-- Use the DairyProject database
USE DairyProject;

-- Create UserMaster table
CREATE TABLE UserMaster (
    UserId BIGINT NOT NULL,
    Login NVARCHAR(30) NOT NULL,
    Empid BIGINT NOT NULL,
    Password NVARCHAR(20),
    FirstName NVARCHAR(100),
    MiddleName NVARCHAR(100),
    LastName NVARCHAR(100),
    LoginTime DATETIME,
    LogoutTime DATETIME,
    LoginTimeValue BIGINT,
    SystemName NVARCHAR(50),
    isactive BIT,
    Status BIT,
    AddedBy BIGINT,
    UpdatedBy BIGINT
);

-- Create Payment table
CREATE TABLE Payment (
    PaymentId BIGINT AUTO_INCREMENT PRIMARY KEY,
    Code BIGINT,
    CustomerID BIGINT NOT NULL,
    Amount DECIMAL(8, 2) NOT NULL,
    Remark NVARCHAR(300),
    Date_Time DATETIME NOT NULL,
    Issettled BIT,
    Iscancelled BIT,
    AddedBy BIGINT,
    UpdatedBy BIGINT,
    Date DATETIME,
    Time DATETIME
);

-- Create DistrictMaster table
CREATE TABLE DistrictMaster (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Code BIGINT,
    Description NVARCHAR(50),
    stateId BIGINT,
    Status BIT,
    AddedBy BIGINT,
    UpdatedBy BIGINT,
    Date DATETIME,
    Time DATETIME
);

-- Create TalukaMaster table
CREATE TABLE TalukaMaster (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Code BIGINT,
    Description NVARCHAR(50),
    DistrictId BIGINT,
    Status BIT,
    AddedBy BIGINT,
    UpdatedBy BIGINT,
    Date DATETIME,
    Time DATETIME
);

-- Create CityMaster table
CREATE TABLE CityMaster (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Code BIGINT,
    Description NVARCHAR(50),
    TalukaId BIGINT,
    Status BIT,
    AddedBy BIGINT,
    UpdatedBy BIGINT,
    Date DATETIME,
    Time DATETIME
);

-- Create SaluationMaster table
CREATE TABLE SaluationMaster (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    code NVARCHAR(50) NOT NULL,
    Description NVARCHAR(50),
    GenderID BIGINT,
    Status BIT,
    AddedBy BIGINT,
    UpdatedBy BIGINT,
    Date DATETIME,
    Time DATETIME
);

-- Create Advance table
CREATE TABLE Advance (
    AdvanceId BIGINT AUTO_INCREMENT PRIMARY KEY,
    Code BIGINT,
    CustomerID BIGINT NOT NULL,
    Amount DECIMAL(8, 2) NOT NULL,
    Remark NVARCHAR(300),
    Date_Time DATETIME NOT NULL,
    Issettled BIT,
    Iscancelled BIT,
    AddedBy BIGINT,
    UpdatedBy BIGINT,
    Date DATETIME,
    Time DATETIME
);

-- Create Advance_Summery table
CREATE TABLE Advance_Summery (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    CustomerID BIGINT NOT NULL,
    AdvanceAmount DECIMAL(19, 4) NOT NULL -- 'money' type in SQL Server translates to DECIMAL in MySQL
);

-- Create BillProcess_CustomerPayment table
CREATE TABLE BillProcess_CustomerPayment (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    CustomerID BIGINT NOT NULL,
    LiterQty DECIMAL(8, 2),
    PreviousBalance DECIMAL(19, 4),
    CollectionAmount DECIMAL(19, 4),
    AdvanceAmount DECIMAL(19, 4),
    SupplimentAmount DECIMAL(19, 4),
    PayableToCustomer DECIMAL(19, 4),
    PaidAmt DECIMAL(19, 4),
    BalanceAmount DECIMAL(19, 4),
    ProcessDate DATETIME NOT NULL,
    FromDate DATETIME,
    ToDate DATETIME,
    Issettled BIT,
    Iscancelled BIT,
    AddedBy BIGINT,
    UpdatedBy BIGINT,
    Date DATETIME,
    Time DATETIME
);
CREATE TABLE RateMaster (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Code BIGINT NULL,
    FATID BIGINT NOT NULL,
    SNFID BIGINT NOT NULL,
    MilkTypeID BIGINT NOT NULL,
    Rate DECIMAL(8, 2) NOT NULL,
    Status BIT NULL,
    AddedBy BIGINT NULL,
    UpdatedBy BIGINT NULL,
    `Date` DATETIME NULL,
    `Time` DATETIME NULL
);

CREATE TABLE Registration (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Code BIGINT NULL,
    Saluationid BIGINT NULL,
    FirstName NVARCHAR(100) NULL,
    MiddleName NVARCHAR(100) NULL,
    LastName NVARCHAR(100) NULL,
    Genderid BIGINT NULL,
    MilkTimeId BIGINT NULL,
    MilkTypeId BIGINT NULL,
    StartDate DATETIME NULL,
    openingBalance DECIMAL(8, 2) NULL,
    ContactNo NVARCHAR(50) NULL,
    Address NVARCHAR(300) NULL,
    Countryid BIGINT NULL,
    Stateid BIGINT NULL,
    Districtid BIGINT NULL,
    Talukaid BIGINT NULL,
    Cityid BIGINT NULL,
    MobileNo NVARCHAR(50) NULL,
    PhoneNo NVARCHAR(50) NULL,
    Emailid NVARCHAR(50) NULL,
    Status BIT NULL,
    AddedBy BIGINT NULL,
    UpdatedBy BIGINT NULL,
    `Date` DATETIME NULL,
    `Time` DATETIME NULL
);

CREATE TABLE SNFMaster (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    code NVARCHAR(50) NOT NULL,
    SNF_Value DECIMAL(8, 2) NULL,
    Status BIT NULL,
    AddedBy BIGINT NULL,
    UpdatedBy BIGINT NULL,
    `Date` DATETIME NULL,
    `Time` DATETIME NULL
);

CREATE TABLE StateMaster (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    Code BIGINT NULL,
    Description NVARCHAR(50) NULL,
    CountryId BIGINT NULL,
    Status BIT NULL,
    AddedBy BIGINT NULL,
    UpdatedBy BIGINT NULL,
    `Date` DATETIME NULL,
    `Time` DATETIME NULL
);

CREATE TABLE SubCategoryMaster (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    code NVARCHAR(50) NOT NULL,
    Description NVARCHAR(100) NULL,
    CategoryID BIGINT NULL,
    Status BIT NULL,
    AddedBy BIGINT NULL,
    UpdatedBy BIGINT NULL,
    `Date` DATETIME NULL,
    `Time` DATETIME NULL
);

CREATE TABLE Suppliment (
    SupplimentId BIGINT AUTO_INCREMENT PRIMARY KEY,
    Code BIGINT NULL,
    CustomerID BIGINT NOT NULL,
    CategoryID BIGINT NOT NULL,
    SubCategoryID BIGINT NOT NULL,
    Quantity DECIMAL(8, 2) NOT NULL,
    Rate DECIMAL(8, 2) NOT NULL,
    Amount DECIMAL(8, 2) NOT NULL,
    Remark NVARCHAR(300) NULL,
    Date_Time DATETIME NOT NULL,
    Issettled BIT NULL,
    Iscancelled BIT NULL,
    AddedBy BIGINT NULL,
    UpdatedBy BIGINT NULL,
    `Date` DATETIME NULL,
    `Time` DATETIME NULL
);

CREATE TABLE Suppliment_Summery (
    Id BIGINT AUTO_INCREMENT PRIMARY KEY,
    CustomerID BIGINT NOT NULL,
    SupplimentAmount DECIMAL(19, 4) NOT NULL
);

CREATE TABLE UserMenuMaster (
    Id BIGINT NOT NULL,
    UserId BIGINT NOT NULL,
    MenuId BIGINT NOT NULL,
    RightStatus BIT NULL,
    PRIMARY KEY (Id)
);


-- Alter tables to add default values for columns in MySQL

ALTER TABLE `Advance`
    MODIFY COLUMN `Issettled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Iscancelled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `BillProcess_CustomerPayment`
    MODIFY COLUMN `Issettled` TINYINT(1) DEFAULT 1,
    MODIFY COLUMN `Iscancelled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `CategoryMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `CityMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `CountryMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `CustomerLedger`
    MODIFY COLUMN `Issettled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Iscancelled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `DailyMilkCollection`
    MODIFY COLUMN `Issettled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Iscancelled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `DayEndCollection`
    MODIFY COLUMN `Issettled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Iscancelled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `DistrictMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `FATMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `GenderMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `MilkTimeMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `MilkTypeMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `Payment`
    MODIFY COLUMN `Issettled` TINYINT(1) DEFAULT 1,
    MODIFY COLUMN `Iscancelled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `Registration`
    MODIFY COLUMN `AddedBy` INT DEFAULT 1,
    MODIFY COLUMN `UpdatedBy` INT DEFAULT 1,
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `SaluationMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `SNFMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `StateMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `SubCategoryMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `Suppliment`
    MODIFY COLUMN `Issettled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Iscancelled` TINYINT(1) DEFAULT 0,
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

ALTER TABLE `TalukaMaster`
    MODIFY COLUMN `Date` DATE DEFAULT (CURRENT_DATE),
    MODIFY COLUMN `Time` TIME DEFAULT (CURRENT_TIME);

-- Foreign key constraints in MySQL

ALTER TABLE `Advance`
    ADD CONSTRAINT `FK_Advance_Registration`
    FOREIGN KEY (`CustomerID`) REFERENCES `Registration` (`id`);

ALTER TABLE `Advance_Summery`
    ADD CONSTRAINT `FK_Advance_Summery_Registration`
    FOREIGN KEY (`CustomerID`) REFERENCES `Registration` (`id`);

ALTER TABLE `BillProcess_CustomerPayment`
    ADD CONSTRAINT `FK_BillProcess_CustomerPayment_Registration`
    FOREIGN KEY (`CustomerID`) REFERENCES `Registration` (`id`);

ALTER TABLE `BillProcess_Summery`
    ADD CONSTRAINT `FK_BillProcess_Summery_Registration`
    FOREIGN KEY (`CustomerId`) REFERENCES `Registration` (`id`);

ALTER TABLE `CityMaster`
    ADD CONSTRAINT `FK_CityMaster_TalukaMaster`
    FOREIGN KEY (`TalukaId`) REFERENCES `TalukaMaster` (`Id`);

ALTER TABLE `Configuration`
    ADD CONSTRAINT `FK_Configuration_CityMaster`
    FOREIGN KEY (`Cityid`) REFERENCES `CityMaster` (`Id`);

ALTER TABLE `Configuration`
    ADD CONSTRAINT `FK_Configuration_CountryMaster`
    FOREIGN KEY (`Countryid`) REFERENCES `CountryMaster` (`id`);

ALTER TABLE `Configuration`
    ADD CONSTRAINT `FK_Configuration_DistrictMaster`
    FOREIGN KEY (`Districtid`) REFERENCES `DistrictMaster` (`Id`);

ALTER TABLE `Configuration`
    ADD CONSTRAINT `FK_Configuration_GenderMaster`
    FOREIGN KEY (`Genderid`) REFERENCES `GenderMaster` (`Id`);

ALTER TABLE `Configuration`
    ADD CONSTRAINT `FK_Configuration_SaluationMaster`
    FOREIGN KEY (`Saluationid`) REFERENCES `SaluationMaster` (`Id`);

ALTER TABLE `Configuration`
    ADD CONSTRAINT `FK_Configuration_StateMaster`
    FOREIGN KEY (`Stateid`) REFERENCES `StateMaster` (`Id`);

ALTER TABLE `Configuration`
    ADD CONSTRAINT `FK_Configuration_TalukaMaster`
    FOREIGN KEY (`Talukaid`) REFERENCES `TalukaMaster` (`Id`);

ALTER TABLE `CustomerLedger`
    ADD CONSTRAINT `FK_CustomerLedger_Registration`
    FOREIGN KEY (`CustomerID`) REFERENCES `Registration` (`id`);

ALTER TABLE `DailyMilkCollection`
    ADD CONSTRAINT `FK_DailyMilkCollection_MilkTimeMaster`
    FOREIGN KEY (`MilkTimeID`) REFERENCES `MilkTimeMaster` (`Id`);

ALTER TABLE `DailyMilkCollection`
    ADD CONSTRAINT `FK_DailyMilkCollection_MilkTypeMaster`
    FOREIGN KEY (`MilkTypeID`) REFERENCES `MilkTypeMaster` (`Id`);

ALTER TABLE `DailyMilkCollection`
    ADD CONSTRAINT `FK_DailyMilkCollection_Registration`
    FOREIGN KEY (`CustomerID`) REFERENCES `Registration` (`id`);

ALTER TABLE `DayEndCollection`
    ADD CONSTRAINT `FK_DayEndCollection_MilkTimeMaster`
    FOREIGN KEY (`MilkTimeID`) REFERENCES `MilkTimeMaster` (`Id`);

ALTER TABLE `DayEndCollection`
    ADD CONSTRAINT `FK_DayEndCollection_MilkTypeMaster`
    FOREIGN KEY (`MilkTypeID`) REFERENCES `MilkTypeMaster` (`Id`);

ALTER TABLE `DistrictMaster`
    ADD CONSTRAINT `FK_DistrictMaster_StateMaster`
    FOREIGN KEY (`stateId`) REFERENCES `StateMaster` (`Id`);

ALTER TABLE `DMC_Summery`
    ADD CONSTRAINT `FK_DMC_Summery_Registration`
    FOREIGN KEY (`CustomerID`) REFERENCES `Registration` (`id`);
    ALTER TABLE StateMaster 
ADD CONSTRAINT FK_StateMaster_CountryMaster 
FOREIGN KEY (CountryID) REFERENCES CountryMaster (Id);

ALTER TABLE Suppliment 
ADD CONSTRAINT FK_Suppliment_CategoryMaster 
FOREIGN KEY (CategoryID) REFERENCES CategoryMaster (Id);

ALTER TABLE Suppliment 
ADD CONSTRAINT FK_Suppliment_Registration 
FOREIGN KEY (CustomerID) REFERENCES Registration (id);

ALTER TABLE Suppliment 
ADD CONSTRAINT FK_Suppliment_SubCategoryMaster 
FOREIGN KEY (SubCategoryID) REFERENCES SubCategoryMaster (Id);

ALTER TABLE Suppliment_Summery 
ADD CONSTRAINT FK_Suppliment_Summery_Registration 
FOREIGN KEY (CustomerID) REFERENCES Registration (id);

ALTER TABLE TalukaMaster 
ADD CONSTRAINT FK_TalukaMaster_DistrictMaster 
FOREIGN KEY (DistrictId) REFERENCES DistrictMaster (Id);

DELIMITER //

CREATE PROCEDURE insert_DailyMilkCollection_1 (
    IN Code_2 BIGINT,
    IN CustomerID_3 BIGINT,
    IN FATvalue_4 DECIMAL(8, 2),
    IN SNFvalue_5 DECIMAL(8, 2),
    IN Quantity_6 DECIMAL(8, 2),
    IN Rate_7 DECIMAL(8, 2),
    IN Amount_8 DECIMAL(10, 2),
    IN MilkTimeID_9 BIGINT,
    IN MilkTypeID_10 BIGINT,
    IN Date_time_11 DATETIME,
    IN AddedBy_12 BIGINT,
    IN UpdatedBy_13 BIGINT
)
BEGIN
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION 
    BEGIN
        -- Error handling logic
        SELECT 'Error' AS error;
    END;
    
    INSERT INTO DailyMilkCollection (
        Code,
        CustomerID,
        FATValue,
        SNFValue,
        Quantity,
        Rate,
        Amount,
        MilkTimeID,
        MilkTypeID,
        Date_Time,
        AddedBy,
        UpdatedBy
    )
    VALUES (
        Code_2,
        CustomerID_3,
        FATvalue_4,
        SNFvalue_5,
        Quantity_6,
        Rate_7,
        Amount_8,
        MilkTimeID_9,
        MilkTypeID_10,
        Date_time_11,
        AddedBy_12,
        UpdatedBy_13
    );
END //

DELIMITER ;

DELIMITER //

-- Procedure: Retrivelist_DMC_Datewise_Customerwise
CREATE PROCEDURE Retrivelist_DMC_Datewise_Customerwise (
    IN FromDate DATETIME,
    IN ToDate DATETIME,
    IN customerid BIGINT
)
BEGIN
    SELECT
        DailyMilkCollection.Code AS TransNo,
        Registration.Code AS CustomerCode,
        Registration.LastName,
        Registration.FirstName,
        Registration.MiddleName,
        DailyMilkCollection.Quantity,
        DailyMilkCollection.FATValue,
        DailyMilkCollection.SNFValue,
        DailyMilkCollection.Rate,
        DailyMilkCollection.Amount,
        MilkTimeMaster.Description AS MilkTime,
        MilkTypeMaster.Description AS MilkType,
        DailyMilkCollection.Date_Time AS Date_,
        DailyMilkCollection.Issettled
    FROM MilkTypeMaster
    INNER JOIN MilkTimeMaster ON MilkTimeMaster.Id = DailyMilkCollection.MilkTimeID
    INNER JOIN DailyMilkCollection ON DailyMilkCollection.MilkTypeID = MilkTypeMaster.Id
    INNER JOIN Registration ON DailyMilkCollection.CustomerID = Registration.id
    WHERE (DailyMilkCollection.Date_Time BETWEEN COALESCE(FromDate, DailyMilkCollection.Date_Time) AND COALESCE(ToDate, DailyMilkCollection.Date_Time))
    AND (DailyMilkCollection.Iscancelled = 0)
    AND (Registration.id = customerid)
    ORDER BY Date_;
END //

-- Procedure: Retrivelist_DMC_Datewise_Customerwise_Evening
CREATE PROCEDURE Retrivelist_DMC_Datewise_Customerwise_Evening (
    IN FromDate DATETIME,
    IN ToDate DATETIME,
    IN customerid BIGINT
)
BEGIN
    SELECT
        DailyMilkCollection.Code AS TransNo,
        Registration.Code AS CustomerCode,
        Registration.LastName,
        Registration.FirstName,
        Registration.MiddleName,
        DailyMilkCollection.Quantity,
        DailyMilkCollection.FATValue,
        DailyMilkCollection.SNFValue,
        DailyMilkCollection.Rate,
        DailyMilkCollection.Amount,
        MilkTimeMaster.Description AS MilkTime,
        MilkTypeMaster.Description AS MilkType,
        DailyMilkCollection.Date_Time AS Date_,
        DailyMilkCollection.Issettled
    FROM MilkTypeMaster
    INNER JOIN MilkTimeMaster ON MilkTimeMaster.Id = DailyMilkCollection.MilkTimeID
    INNER JOIN DailyMilkCollection ON DailyMilkCollection.MilkTypeID = MilkTypeMaster.Id
    INNER JOIN Registration ON DailyMilkCollection.CustomerID = Registration.id
    WHERE (DailyMilkCollection.Date_Time BETWEEN COALESCE(FromDate, DailyMilkCollection.Date_Time) AND COALESCE(ToDate, DailyMilkCollection.Date_Time))
    AND (DailyMilkCollection.Iscancelled = 0)
    AND (Registration.id = customerid)
    AND (DailyMilkCollection.MilkTimeID = 2)
    ORDER BY Date_;
END //

-- Procedure: Retrivelist_DMC_Datewise_Customerwise_Morning
CREATE PROCEDURE Retrivelist_DMC_Datewise_Customerwise_Morning (
    IN FromDate DATETIME,
    IN ToDate DATETIME,
    IN customerid BIGINT
)
BEGIN
    SELECT
        DailyMilkCollection.Code AS TransNo,
        Registration.Code AS CustomerCode,
        Registration.LastName,
        Registration.FirstName,
        Registration.MiddleName,
        DailyMilkCollection.Quantity,
        DailyMilkCollection.FATValue,
        DailyMilkCollection.SNFValue,
        DailyMilkCollection.Rate,
        DailyMilkCollection.Amount,
        MilkTimeMaster.Description AS MilkTime,
        MilkTypeMaster.Description AS MilkType,
        DailyMilkCollection.Date_Time AS Date_,
        DailyMilkCollection.Issettled
    FROM MilkTypeMaster
    INNER JOIN MilkTimeMaster ON MilkTimeMaster.Id = DailyMilkCollection.MilkTimeID
    INNER JOIN DailyMilkCollection ON DailyMilkCollection.MilkTypeID = MilkTypeMaster.Id
    INNER JOIN Registration ON DailyMilkCollection.CustomerID = Registration.id
    WHERE (DailyMilkCollection.Date_Time BETWEEN COALESCE(FromDate, DailyMilkCollection.Date_Time) AND COALESCE(ToDate, DailyMilkCollection.Date_Time))
    AND (DailyMilkCollection.Iscancelled = 0)
    AND (Registration.id = customerid)
    AND (DailyMilkCollection.MilkTimeID = 1)
    ORDER BY Date_;
END //

-- Procedure: update_DailyMilkCollection_1
CREATE PROCEDURE update_DailyMilkCollection_1 (
    IN Id_1 BIGINT,
    IN Code_2 BIGINT,
    IN CustomerID_3 BIGINT,
    IN FATvalue_4 DECIMAL(8, 2),
    IN SNFvalue_5 DECIMAL(8, 2),
    IN Quantity_6 DECIMAL(8, 2),
    IN Rate_7 DECIMAL(8, 2),
    IN Amount_8 DECIMAL(19, 4), -- MySQL's MONEY equivalent is DECIMAL
    IN MilkTimeID_9 BIGINT,
    IN MilkTypeID_10 BIGINT,
    IN Date_time_11 DATETIME,
    IN UpdatedBy_12 BIGINT
)
BEGIN
    UPDATE DailyMilkCollection
    SET Code = Code_2,
        CustomerID = CustomerID_3,
        FATValue = FATvalue_4,
        SNFValue = SNFvalue_5,
        Quantity = Quantity_6,
        Rate = Rate_7,
        Amount = Amount_8,
        MilkTimeID = MilkTimeID_9,
        MilkTypeID = MilkTypeID_10,
        Date_Time = Date_time_11,
        UpdatedBy = UpdatedBy_12
    WHERE TransId = Id_1;
END //

-- Procedure: update_DayEndCollection_1
CREATE PROCEDURE update_DayEndCollection_1 (
    IN Code_2 BIGINT,
    IN MilkTimeID_3 BIGINT,
    IN MilkTypeID_4 BIGINT,
    IN Quantity_5 DECIMAL(8, 2),
    IN FATvalue_6 DECIMAL(8, 2),
    IN SNFvalue_7 DECIMAL(8, 2),
    IN Rate_8 DECIMAL(8, 2),
    IN Amount_9 DECIMAL(19, 4), -- MySQL's MONEY equivalent is DECIMAL
    IN UpdatedBy_12 BIGINT
)
BEGIN
    UPDATE DayEndCollection
    SET MilkTimeID = MilkTimeID_3,
        MilkTypeID = MilkTypeID_4,
        Quantity = Quantity_5,
        FATValue = FATvalue_6,
        SNFValue = SNFvalue_7,
        Rate = Rate_8,
        Amount = Amount_9,
        UpdatedBy = UpdatedBy_12
    WHERE Code = Code_2;
END //

-- Index Scripts
CREATE INDEX IX_RateMaster_MilkTypeID ON RateMaster (MilkTypeID, SNFID);
CREATE INDEX IX_RateMaster_MilkTypeID_FATID ON RateMaster (MilkTypeID, FATID);
CREATE INDEX IX_DailyMilkCollection_FAT_SNF_MilkType ON DailyMilkCollection (FATValue, SNFValue, MilkTypeID);

DELIMITER ;