CREATE SCHEMA MySQL_PowerBI;
USE MySQL_PowerBI;
SELECT * FROM Mobile;
-- check mobile features and price list --
SELECT phone_name, price FROM mobile; 
-- find out the price of most expensive phones--
SELECT * FROM Mobile
ORDER BY Price DESC
LIMIT 5;

-- find out the five cheapest phone--
SELECT * FROM Mobile 
ORDER BY Price ASC
LIMIT 5;
-- list of top 5 Samsung phones with price and all features--
 SELECT * FROM Mobile
 WHERE Brands = "Samsung"
 ORDER BY Price DESC
 LIMIT 5;
 -- Must have android phone list then top 5 high price android phones-
 SELECT * FROM Mobile 
 WHERE Operating_System_Type= "Android"
 ORDER BY Price DESC
 LIMIT 5;
-- Must have android phone list then top 5 lower price android phones-
SELECT * FROM Mobile 
WHERE Operating_System_Type= "Android"
ORDER BY Price ASC
LIMIT 5;
-- Must have iOS phone list then top 5 high price IOS phones-
SELECT * FROM Mobile
WHERE Operating_System_Type= "IOS"
ORDER BY Price DESC 
LIMIT 5;
-- Must have iOS phone list then top 5 high price IOS phones-
SELECT * FROM Mobile
WHERE Operating_System_Type= "IOS"
ORDER BY Price ASC 
LIMIT 5;
-- Write a querry which phone support 5g and also top 5 phones with 5g support-

SELECT * FROM Mobile
WHERE 5g_Availability ="YES";
-- Top 5 among them

SELECT * FROM Mobile
WHERE 5g_Availability ="YES"
ORDER BY Price DESC
LIMIT 5;
-- Total price of all mobile is to be found with brand name-
SELECT Brands, 
 SUM(Price) FROM Mobile GROUP BY Brands;


SELECT @@hostname;
