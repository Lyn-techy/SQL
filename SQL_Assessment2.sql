---QUESTION 1---
/*
Find the difference between the total number of CITY entries in the table and the number of distinct CITY 
entries in the table.
*/
--Solution--
--syntax--
SELECT COUNT(column_name) AS no_of_value, COUNT(DISTINCT column_name) AS no_of_distinct, 
COUNT(column_name) - COUNT(DISTINCT column_name) AS difference 
FROM table_name;

SELECT COUNT(CITY) AS Total_City, COUNT(DISTINCT CITY) AS Distinct_City, 
COUNT(CITY) - COUNT(DISTINCT CITY) AS City_Count_Difference
FROM STATION;

----QUESTION 2--
/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.
*/

--Solution--
--use the NOT LIKE keyword and % wildcard
SELECT DISTINCT CITY 
FROM STATION  
WHERE CITY NOT LIKE '[AEIOU]%' OR CITY NOT LIKE '%[aeiou]';

---QUESTION 3--
/*
Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students 
both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
*/

--Solution--
SELECT Name
FROM Students
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID ASC;

--QUESTION 4---
/*
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been
employees for less than  months. Sort your result by ascending employee_id.
*/

--Solution
SELECT name FROM Employee WHERE salary > 2000 AND months < 10 ORDER BY employee_id;


--QUESTION 5
/*
Query all columns (attributes) for every row in the CITY table.
*/
SELECT * FROM CITY;