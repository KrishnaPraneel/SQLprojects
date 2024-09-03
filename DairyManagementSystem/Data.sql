INSERT INTO CategoryMaster (Code, Description, Status) VALUES (1, 'PetFood', 1);
INSERT INTO CategoryMaster (Code, Description, Status) VALUES (2, 'Veterinary', 1);
INSERT INTO CategoryMaster (Code, Description, Status) VALUES (3, 'Supplement', 1);

INSERT INTO SubCategoryMaster (Code, Description, Status, CategoryID) VALUES (1, 'Khadya', 1, 1);
INSERT INTO SubCategoryMaster (Code, Description, Status, CategoryID) VALUES (2, 'Doctor Fees', 1, 2);
INSERT INTO SubCategoryMaster (Code, Description, Status, CategoryID) VALUES (3, 'Sugrash', 1, 3);
INSERT INTO SubCategoryMaster (Code, Description, Status, CategoryID) VALUES (3, 'Khapari', 1, 3);

INSERT INTO CountryMaster (Code, Description, Status) VALUES (1, 'India', 1);

INSERT INTO StateMaster (Code, Description, Status, CountryId) VALUES (1, 'MP', 1, 1);

INSERT INTO DistrictMaster (Code, Description, Status, StateId) VALUES (1, 'Indore', 1, 1);

INSERT INTO TalukaMaster (Code, Description, Status, DistrictId) VALUES (1, 'Depalpur', 1, 1);

INSERT INTO CityMaster (Code, Description, Status, TalukaId) VALUES (1, 'Akolya', 1, 1);

INSERT INTO GenderMaster (Code, Description, Status) VALUES (1, 'Male', 1);
INSERT INTO GenderMaster (Code, Description, Status) VALUES (2, 'Female', 1);

INSERT INTO SaluationMaster (Code, Description, Status) VALUES (1, 'Mr.', 1);
INSERT INTO SaluationMaster (Code, Description, Status) VALUES (2, 'Mrs.', 1);
INSERT INTO SaluationMaster (Code, Description, Status) VALUES (3, 'Miss.', 1);

INSERT INTO Configuration 
(Saluationid, Genderid, Countryid, Stateid, Districtid, Talukaid, Cityid, Status, AddedBy, UpdatedBy) 
VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

INSERT INTO MilkTimeMaster (Code, Description, Status) VALUES (1, 'Morning', 1);
INSERT INTO MilkTimeMaster (Code, Description, Status) VALUES (2, 'Evening', 1);

INSERT INTO MilkTypeMaster (Code, Description, Status) VALUES (1, 'Cow', 1);
INSERT INTO MilkTypeMaster (Code, Description, Status) VALUES (2, 'Buffalo', 1);

INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (1, 'Masters', 'Masters', 0, 1, 0);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (2, 'MilkCollection', 'MilkCollection', 0, 2, 0);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (3, 'Payment', 'Payment', 0, 3, 0);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (4, 'Reports', 'Reports', 0, 4, 0);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (5, 'Administration', 'Administration', 0, 5, 0);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (6, 'SystemManagement', 'SystemManagement', 1, 1, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (7, 'SNFMaster', 'SNFMaster', 1, 2, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (8, 'FATMaster', 'FATMaster', 1, 3, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (9, 'RateMatrix', 'RateMatrix', 1, 4, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (10, 'MilkType', 'MilkType', 1, 5, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (11, 'MilkTime', 'MilkTime', 1, 6, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (12, 'CategoryMaster', 'CategoryMaster', 1, 7, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (13, 'SubCategory', 'SubCategory', 1, 8, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (14, 'CustomerMaster', 'CustomerMaster', 1, 9, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (15, 'DailyMilkCollectionMorning', 'DailyMilkCollectionMorning', 2, 1, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (16, 'DayEndCollectionMorning', 'DayEndCollectionMorning', 2, 2, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (17, 'DailyMilkCollectionEvening', 'DailyMilkCollectionEvening', 2, 3, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (18, 'DayEndCollectionEvening', 'DayEndCollectionEvening', 2, 4, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (19, 'DMCList', 'DMCList', 2, 5, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (20, 'Advance', 'Advance', 3, 1, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (21, 'PetFoodVeterinary', 'PetFoodVeterinary', 3, 2, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (22, 'BillProcess', 'BillProcess', 3, 3, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (23, 'BillProcessCustomer', 'BillProcessCustomer', 3, 4, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (24, 'CustomerLedger', 'CustomerLedger', 3, 5, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (25, 'ReportsCustomerList', 'ReportsCustomerList', 4, 1, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (26, 'ReportsDailyMilkCollectionDetails', 'ReportsDailyMilkCollectionDetails', 4, 2, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (27, 'ReportsDailyMilkCollectionSummary', 'ReportsDailyMilkCollectionSummary', 4, 3, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (28, 'ReportsDatewiseMilktimewisePrint', 'ReportsDatewiseMilktimewisePrint', 4, 4, 1);
INSERT INTO MenuMaster (MenuId, MenuName, MenuKey, ParentId, MenuOrder, Level) VALUES (29, 'ReportsAdvance', 'ReportsAdvance', 4);
-- Registration Data Insert
SET @i = 1;

WHILE @i <= 5000 DO
    INSERT INTO `Registration` 
    (`Code`, `Saluationid`, `FirstName`, `MiddleName`, `LastName`, `Genderid`, 
    `MilkTimeId`, `MilkTypeId`, `StartDate`, `openingBalance`, `ContactNo`, `Address`, 
    `Countryid`, `Stateid`, `Districtid`, `Talukaid`, `Cityid`, `MobileNo`, 
    `PhoneNo`, `Emailid`, `Status`, `AddedBy`, `UpdatedBy`)
    VALUES
    (@i, 1, CONCAT('Fname_', @i), CONCAT('Mname_', @i), CONCAT('Lname_', @i), 1, 1, 1, 
    NOW(), 0, '1111111111', 'local Address', 1, 1, 1, 1, 1, '1111111111', 
    '1234567890', CONCAT('Fname', @i, '@gmail.com'), 1, 1, 1);
    
    SET @i = @i + 1;
END WHILE;

-- DailyMilkCollection Data Insert
-- This will insert 50 X 730 (2 years Data) X 4 = 156000 Rows
-- Cust_id X 730 ( 2 yrs data) X 4 (Insert milk type & milk time)

SET @Cust_id = 1;

WHILE @Cust_id <= 50 DO
    SET @Date = '2021-01-01';
    
    WHILE @Date <= '2022-12-31' DO
        -- MilkTime - Morning, MilkType - Cow
        INSERT INTO `DailyMilkCollection` 
        (`CustomerID`, `FATValue`, `SNFValue`, `Quantity`, `Rate`, `Amount`, 
        `MilkTimeID`, `MilkTypeID`, `Date_Time`, `Issettled`, `Iscancelled`, 
        `AddedBy`, `UpdatedBy`)
        VALUES
        (@Cust_id,
        (SELECT `FAT_Value` FROM `FATMaster` F 
         INNER JOIN `RateMaster` R ON F.`Id` = R.`FATID`
         WHERE `MilkTypeID` = 1 
         ORDER BY RAND() LIMIT 1),
        (SELECT `SNF_Value` FROM `SNFMaster` S
         INNER JOIN `RateMaster` R ON S.`Id` = R.`SNFID`
         WHERE `MilkTypeID` = 1 
         ORDER BY RAND() LIMIT 1),
        CAST(RAND() * (20 - 9) + 5 AS DECIMAL(5,2)),
        0, 0, 1, 1, @Date, 0, 0, 1, 1);

        -- MilkTime - Morning, MilkType - Buffalo
        INSERT INTO `DailyMilkCollection` 
        (`CustomerID`, `FATValue`, `SNFValue`, `Quantity`, `Rate`, `Amount`, 
        `MilkTimeID`, `MilkTypeID`, `Date_Time`, `Issettled`, `Iscancelled`, 
        `AddedBy`, `UpdatedBy`)
        VALUES
        (@Cust_id,
        (SELECT `FAT_Value` FROM `FATMaster` F 
         INNER JOIN `RateMaster` R ON F.`Id` = R.`FATID`
         WHERE `MilkTypeID` = 2 
         ORDER BY RAND() LIMIT 1),
        (SELECT `SNF_Value` FROM `SNFMaster` S
         INNER JOIN `RateMaster` R ON S.`Id` = R.`SNFID`
         WHERE `MilkTypeID` = 2 
         ORDER BY RAND() LIMIT 1),
        CAST(RAND() * (20 - 9) + 5 AS DECIMAL(5,2)),
        0, 0, 1, 2, @Date, 0, 0, 1, 1);

        -- MilkTime - Evening, MilkType - Cow
        INSERT INTO `DailyMilkCollection` 
        (`CustomerID`, `FATValue`, `SNFValue`, `Quantity`, `Rate`, `Amount`, 
        `MilkTimeID`, `MilkTypeID`, `Date_Time`, `Issettled`, `Iscancelled`, 
        `AddedBy`, `UpdatedBy`)
        VALUES
        (@Cust_id,
        (SELECT `FAT_Value` FROM `FATMaster` F 
         INNER JOIN `RateMaster` R ON F.`Id` = R.`FATID`
         WHERE `MilkTypeID` = 1 
         ORDER BY RAND() LIMIT 1),
        (SELECT `SNF_Value` FROM `SNFMaster` S
         INNER JOIN `RateMaster` R ON S.`Id` = R.`SNFID`
         WHERE `MilkTypeID` = 1 
         ORDER BY RAND() LIMIT 1),
        CAST(RAND() * (20 - 9) + 5 AS DECIMAL(5,2)),
        0, 0, 2, 1, @Date, 0, 0, 1, 1);

        -- MilkTime - Evening, MilkType - Buffalo
        INSERT INTO `DailyMilkCollection` 
        (`CustomerID`, `FATValue`, `SNFValue`, `Quantity`, `Rate`, `Amount`, 
        `MilkTimeID`, `MilkTypeID`, `Date_Time`, `Issettled`, `Iscancelled`, 
        `AddedBy`, `UpdatedBy`)
        VALUES
        (@Cust_id,
        (SELECT `FAT_Value` FROM `FATMaster` F 
         INNER JOIN `RateMaster` R ON F.`Id` = R.`FATID`
         WHERE `MilkTypeID` = 2 
         ORDER BY RAND() LIMIT 1),
        (SELECT `SNF_Value` FROM `SNFMaster` S
         INNER JOIN `RateMaster` R ON S.`Id` = R.`SNFID`
         WHERE `MilkTypeID` = 2 
         ORDER BY RAND() LIMIT 1),
        CAST(RAND() * (20 - 9) + 5 AS DECIMAL(5,2)),
        0, 0, 2, 2, @Date, 0, 0, 1, 1);

        SET @Date = DATE_ADD(@Date, INTERVAL 1 DAY);
    END WHILE;
    
    SET @Cust_id = @Cust_id + 1;
END WHILE;

-- Update Rate from RateMaster
UPDATE `DailyMilkCollection` D
JOIN (
    SELECT F.`FAT_Value`, S.`SNF_Value`, R.`Rate`, R.`MilkTypeID` 
    FROM `RateMaster` R 
    JOIN `FATMaster` F ON R.`FATID` = F.`id`
    JOIN `SNFMaster` S ON R.`SNFID` = S.`id`
) T ON D.`FATValue` = T.`FAT_Value` 
   AND D.`SNFValue` = T.`SNF_Value` 
   AND D.`MilkTypeID` = T.`MilkTypeID`
SET D.`Rate` = T.`Rate`;

-- Update Amount
UPDATE `DailyMilkCollection`
SET `Amount` = `Rate` * `Quantity`;

SELECT * FROM `DailyMilkCollection`;