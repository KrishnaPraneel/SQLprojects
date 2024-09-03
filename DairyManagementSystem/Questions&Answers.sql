-- 1) Month-wise Collection (Amount) for Year 2021
SELECT 
    DATE_FORMAT(Date_Time, '%M') AS Month_,
    SUM(Amount) AS Amount
FROM DailyMilkCollection
WHERE YEAR(Date_Time) = 2021
GROUP BY YEAR(Date_Time), MONTH(Date_Time)
ORDER BY MONTH(Date_Time);

-- 2) Year 2021 Quantity by Milk Type
SELECT 
    M.Description AS MilkType,
    SUM(D.Quantity) AS QuantityInLtr
FROM DailyMilkCollection D
INNER JOIN MilkTypeMaster M ON D.MilkTypeID = M.id
WHERE YEAR(D.Date_Time) = 2021
GROUP BY M.Description;

-- 3) Detail Report - for Date 2 Feb 2021
SELECT 
    R.FirstName, 
    R.LastName, 
    D.FATValue, 
    D.SNFValue, 
    D.Quantity, 
    D.Rate, 
    D.Amount, 
    tp.Description AS MilkType, 
    tm.Description AS MilkTime
FROM DailyMilkCollection D
INNER JOIN Registration R ON D.CustomerID = R.id
INNER JOIN MilkTypeMaster tp ON D.MilkTypeID = tp.id
INNER JOIN MilkTimeMaster tm ON D.MilkTimeID = tm.id
WHERE DATE(D.Date_Time) = '2021-02-02';

-- 4) 2021 Year Data of Customer Code = 5
SELECT 
    R.FirstName, 
    R.LastName, 
    D.FATValue, 
    D.SNFValue, 
    D.Quantity, 
    D.Rate, 
    D.Amount, 
    tp.Description AS MilkType, 
    tm.Description AS MilkTime, 
    D.Date_Time
FROM DailyMilkCollection D
INNER JOIN Registration R ON D.CustomerID = R.id
INNER JOIN MilkTypeMaster tp ON D.MilkTypeID = tp.id
INNER JOIN MilkTimeMaster tm ON D.MilkTimeID = tm.id
WHERE D.CustomerID = 5 AND YEAR(D.Date_Time) = 2021;

-- 5) Retrieve Top 3 Customers by Quantity-wise (Cow)
SELECT 
    R.FirstName, 
    R.LastName,
    SUM(D.Quantity) AS Quantity
FROM DailyMilkCollection D
INNER JOIN MilkTypeMaster tp ON D.MilkTypeID = tp.id
INNER JOIN Registration R ON D.CustomerID = R.id
WHERE tp.Description = 'cow'
GROUP BY R.FirstName, R.LastName
ORDER BY Quantity DESC
LIMIT 3;