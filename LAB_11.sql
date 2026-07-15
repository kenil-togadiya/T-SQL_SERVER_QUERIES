--Date Functions 


--Part – A: 

SELECT *
FROM EMPLOYEE

--1. Write a query to display the current date & time. Label the column Today_Date. 

SELECT GETDATE() AS TODAY_DATE

--2. Write a query to find new date after 365 day with reference to today.

SELECT DATEADD(DAY,365,GETDATE()) AS AFTER_365_DAYS

--3. Display the current date in a format that appears as may 5 1994 12:00AM. 

SELECT CONVERT(VARCHAR,GETDATE(),100) AS FORMATTED_DATE

--4. Display the current date in a format that appears as 03 Jan 1995. 

SELECT CONVERT(VARCHAR,GETDATE(),106) AS FORMATTED_DATE

--5. Display the current date in a format that appears as Jan 04, 96. 

SELECT CONVERT(VARCHAR,GETDATE(),107) AS FORMATTED_DATE

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09. 

SELECT DATEDIFF(MONTH,'31-DEC-08','31-MAR-09') AS TOTAL_MONTH

--7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30. 

SELECT DATEDIFF(HOUR,'25-JAN-12 7:00','26-JAN-12 10:30') AS TOTAL_HOURS

--8. Write a query to extract Day, Month, Year from given date 12-May-16. 

SELECT DAY('12-MAY-16') AS DAY , MONTH('12-MAY-16') AS MONTH , YEAR('12-MAY-16') AS YEAR

--9. Write a query that adds 5 years to current date. 

SELECT DATEADD(YEAR,5,GETDATE()) AS ADD_5_YEAR

--10. Write a query to subtract 2 months from current date. 

SELECT DATEADD(MONTH,-2,GETDATE()) AS SUBTRACT_2_MONTH

--11. Extract month from current date using datename () and datepart () function. 

SELECT DATENAME(MONTH,GETDATE()) AS MONTH , DATEPART(MONTH,GETDATE()) AS MONTH

--12. Write a query to find out last date of current month. 

SELECT EOMONTH(GETDATE()) AS LAST_MONTH

--13. Calculate your age in years and months. 

SELECT DATEDIFF(YEAR,'2007-10-03',GETDATE()) AS YEAR , DATEDIFF(MONTH,'2007-10-03',GETDATE()) AS MONTH



--Part – B: Perform following queries on DEPOSIT table.  

SELECT *
FROM DEPOSIT

--14. Display all records where account date is in the year 2025.

SELECT *
FROM DEPOSIT
WHERE YEAR(ADATE) = '2025';

--15. Display all records where account date is in the month of March. 

SELECT *
FROM DEPOSIT
WHERE MONTH(ADATE) = 3;

--16. Display records where account date is after ‘01-Jan-2025’. 

SELECT *
FROM DEPOSIT
WHERE ADATE > '01-JAN-2025'

--17. Display records where account date is before ‘01-Jan-2025’. 

SELECT *
FROM DEPOSIT
WHERE ADATE < '01-JAN-2025'

--18. Display records where day of account date is 1. 

SELECT *
FROM DEPOSIT
WHERE DAY(ADATE) = 1

--19. Display records where month of account date is greater than 6. 

SELECT *
FROM DEPOSIT
WHERE MONTH(ADATE) > 6

--20. Display records where year of account date is 2026. 

SELECT *
FROM DEPOSIT
WHERE YEAR(ADATE) = 2026

--21. Display number of accounts opened in each year.

SELECT *
FROM DEPOSIT
WHERE YEAR(ADATE) = YEAR(GETDATE())

SELECT YEAR(ADATE) AS YEAR , COUNT(ADATE) AS ACCOUNT_YEAR
FROM DEPOSIT
GROUP BY YEAR(ADATE)

--22. Display number of accounts opened in each month. 

SELECT MONTH(ADATE) AS MONTH , COUNT(ADATE) AS ACCOUNT_MONTH
FROM DEPOSIT
GROUP BY MONTH(ADATE)

--23. Display maximum amount deposited in each year. 

SELECT YEAR(ADATE) AS YEAR , MAX(AMOUNT) AS ACCOUNT_YEAR
FROM DEPOSIT
GROUP BY YEAR(ADATE)

SELECT *
FROM DEPOSIT

--Part – C: 


--24. Display minimum amount deposited in each month. 

SELECT YEAR(ADATE) AS YEAR , MIN(AMOUNT) AS ACCOUNT_YEAR
FROM DEPOSIT
GROUP BY YEAR(ADATE)

--25. Display total amount deposited in each year. 

SELECT YEAR(ADATE) AS YEAR , SUM(AMOUNT) AS ACCOUNT_YEAR
FROM DEPOSIT
GROUP BY YEAR(ADATE)

--26. Display records where account date is between ‘01-Mar-2025’ and ‘31-Dec-2025’.

SELECT *
FROM DEPOSIT
WHERE ADATE BETWEEN '01-Mar-2025' AND '31-DEC-2025'

--27. Display records where account date is in the current year. 

SELECT *
FROM DEPOSIT 



--28. Display difference in days between today’s date and account date. 