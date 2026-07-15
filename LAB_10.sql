----Math functions 


----Part – A: 


----1. Display the result of 5 multiply by 30. 

	SELECT 5 * 30 AS RESULT	

----2. Find out the absolute value of -25, 25, -50 and 50. 

SELECT ABS(-25),ABS(25),ABS(-50),ABS(50) AS RESULT

----3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2. 

SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2) AS SMALLEST_INT

----4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2. 

SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2) AS LARGEST_INT

----5. Find out remainder of 5 divided 2 and 5 divided by 3. 

SELECT 5 % 2 AS REMAINDER , 5 % 3 AS REMAINDER

----6. Find out value of 3 raised to 2nd power and 4 raised 3rd power. 

SELECT POWER(3,2) , POWER(4,3)

----7. Find out the square root of 25, 30 and 50. 

SELECT SQRT(25),SQRT(30),SQRT(50) 

----8. Find out the square of 5, 15, and 25. 

SELECT SQUARE(5),SQUARE(15),SQUARE(25)

----9. Find out the value of PI. 

SELECT PI() AS PI_VALUE

----10. Find out round value of 157.732 for 2, 0 and -2 decimal points. 

SELECT ROUND(157.732,2) AS DECIMAL_POINTS , ROUND(157.732,0) AS DECIMAL_POINT , ROUND(157.732,-2) AS DECIMAL_POINT

--11. Find out exponential value of 2 and 3. 

SELECT EXP(2) AS EXPONENTIAL , EXP(3) AS EXPONENTIAL

--12. Find out logarithm having base e of 10 and 2. 

SELECT LOG(10) AS LOGARITHM , LOG(2) AS LOGARITHM 

--13. Find logarithm base 10 of 5 and 100 

SELECT LOG10(5) AS LOGARITHM , LOG10(100) AS LOGARITHM 

--14. Find sine, cosine and tangent of 3.1415.  

SELECT SIN(3.1415) , COS(3.1415) , TAN(3.1415) 

--15. Find sign of -25, 0 and 25. 

SELECT SIGN(-25) AS SIGN_ , SIGN(0) AS SIGN_ , SIGN(25) AS SIGN_

--16. Generate random number using function. 

SELECT RAND() AS RANDOM


--String functions 


--Part – A: 


--1. Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 

SELECT LEN(NULL) AS RESULT , LEN('HELLO') AS RESULT ,LEN('') AS RESULT 

--2. Display your name in lower & upper case. 

SELECT LOWER('KENIL') AS LOWER_CASE , UPPER('togadiya') AS UPPER_CASE

--3. Display first three characters of your name. 

SELECT LEFT('KENIL',3) AS THREE_CHAR

--4. Display 3rd to 10th character of your name. 

SELECT SUBSTRING('KENIL TOGADIYA',3,10) AS _3_10_CHAR;

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE. 

SELECT REPLACE('abc123efg','123','XYZ') AS REPLACE_CHAR , REPLACE('abcabcabc','c',5) AS REPLACE_CHAR

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9. 

SELECT ASCII('a') AS ASCII_VALUE , ASCII('a') AS ASCII_VALUE ,ASCII('z') AS ASCII_VALUE ,ASCII('Z') AS ASCII_VALUE ,ASCII('0') AS ASCII_VALUE ,ASCII('9') AS ASCII_VALUE 

--7. Write a query to display character based on number 97, 65,122,90,48,57. 

SELECT CHAR(97) AS CHAR_QUERY , CHAR(65) AS CHAR_QUERY , CHAR(122) AS CHAR_QUERY , CHAR(90) AS CHAR_QUERY , CHAR(48) AS CHAR_QUERY , CHAR(57) AS CHAR_QUERY

--8. Write a query to remove spaces from left of a given string ‘ hello world  ‘.

SELECT LTRIM('  HELLO WORLD   ') AS REMOVE_SPACES

--9. Write a query to remove spaces from right of a given string ‘ hello world  ‘. 

SELECT RTRIM('   HELLO WORLD    ') AS REMOVE_SPACES;

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’. 

SELECT LEFT('SQL SERVER',4) , RIGHT('SQL SERVER',5) AS LAST_RIGHT_QUERY

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function). 

SELECT CAST(1234.56 AS VARCHAR) AS CONVERT_CAST
SELECT CONVERT(varchar(20),12345.56) AS CONVERT_CHAR

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function). 

SELECT CAST(1234.56 AS INT) AS CONVERT_CAST
SELECT CONVERT(INT,12345.56) AS CONVERT_INT

--13. Put 10 space before your name using function. 

SELECT SPACE(10) + 'KENIL TOGADIYA'

--14. Combine two strings using + sign as well as CONCAT (). 

SELECT CONCAT('KENIL',' ','TOGADIYA')
SELECT 'KENIL'+'TOGADIYA'

--15. Find reverse of “Darshan”. 

SELECT REVERSE('DARSHAN')

--16. Repeat your name 3 times. 

SELECT REPLICATE('KENIL',3)
 


--Part – B: Perform following queries on EMPLOYEE table. 


SELECT *
FROM EMPLOYEE

--17. Display FIRSTNAME and LASTNAME in lowercase and uppercase. 

SELECT LOWER(FIRSTNAME) , UPPER(LASTNAME) FROM EMPLOYEE
SELECT UPPER(FIRSTNAME) , LOWER(LASTNAME) FROM EMPLOYEE

--18. Display full name by combining FIRSTNAME and LASTNAME. 

SELECT CONCAT(FIRSTNAME,LASTNAME) AS CONCAT_FULLNAME
FROM EMPLOYEE

--19. Display FIRSTNAME with first 3 characters only. 

SELECT LEFT(FIRSTNAME,3) AS FIRST_3_CHAR
FROM EMPLOYEE

--20. Display LASTNAME with last 2 characters only. 

SELECT RIGHT(LASTNAME,2) AS LAST_2_CHAR
FROM EMPLOYEE

--21. Display length of each employee’s FIRSTNAME. 

SELECT LEN(FIRSTNAME)  AS EMPLOYEE_NAME_LEN
FROM EMPLOYEE

--22. Display FIRSTNAME after replacing ‘A’ with ‘@’. 

SELECT REPLACE(FIRSTNAME,'A','@') AS REPLACE_FIRSTNAME
FROM EMPLOYEE

--23. Display FIRSTNAME and LASTNAME with - between them using CONCAT. 

SELECT CONCAT(FIRSTNAME,'-',LASTNAME) AS RESULT
FROM EMPLOYEE



--Part – C: Perform following queries on EMPLOYEE table. 

SELECT *
FROM EMPLOYEE

--24. Display FIRSTNAME without first and last character.

SELECT SUBSTRING(FIRSTNAME,2,LEN(FIRSTNAME) -2) AS RESULT
FROM EMPLOYEE

--25. Display FIRSTNAME after replacing vowels with '*'. 


--26. Display employees where combined length of FIRSTNAME and LASTNAME is greater than 10. 

SELECT *
FROM EMPLOYEE
WHERE LEN(CONCAT(FIRSTNAME,LASTNAME)) > 10

--27. Display FIRSTNAME and its reverse. 

SELECT REVERSE(FIRSTNAME) AS REVERSE_FIRSTNAME
FROM EMPLOYEE

--28. Display employees whose FIRSTNAME and LASTNAME start with same character using LEFT() 

SELECT *
FROM EMPLOYEE
WHERE (LEFT(FIRSTNAME , 1) = LEFT(LASTNAME , 1))