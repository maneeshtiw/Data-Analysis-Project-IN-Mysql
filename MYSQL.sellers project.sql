-- CREATE DATABASE NAME.
create database project1;

-- SELECT DATABSE.
use project1;

-- check TABLE SELLERS.
SELECT * FROM project1.sellers;

-- DELETE [MyUNKNOWNCOLUMN] IN SELLERS TABLE
ALTER TABLE project1.sellers 
DROP COLUMN `MyUnknownColumn`;

/* TOP STATE */
SELECT user_state,
     SUM(TOTAL_VALUE) AS VALUE
    ,SUM(TOTAL_qty) AS TOTAL_qty
    ,SUM(Cancelled_Orders) As Cancel
FROM project1.sellers
GROUP By user_state
ORDER BY Total_qty desc;


-- Find MAX and MIN  CREATED_AT IN SELLERS TABLE.
SELECT MAX(CREATED_AT) FROM Project1.sellers;
SELECT MIN(CREATED_AT) FROM Project1.sellers;

-- LAST ACTIVE CUSTOMERS
SELECT MAX(last_active) AS ACTIVE_LAST
,fullname FROM
project1.sellers GROUP BY fullname;

-- TOP USER in WHICH STATE AND HOW MANY TIME VISIT ON OUR SITE.
SELECT user_state
  ,MAX(visit_count) AS Max_Visit
  FROM project1.sellers
  GROUP BY user_state
ORDER BY 1;

-- MAX AND MIN CANCELLED_ORDER IN WHICH CITY.
SELECT user_city, MAX(Cancelled_Orders) AS MAX_Cancel, 
MIN(Cancelled_Orders) AS MIN_Cancel 
FROM project1.sellers GROUP BY user_city
ORDER BY 2 DESC, 3 DESC;

-- CHECK HOW MANY PEPOLE REGISTER WITH APP AND WEBSITE with STATE WISE;

  SELECT COUNT(registered_from) AS Count_Register,
  user_state,registered_from FROM project1.sellers 
  GROUP BY user_state,registered_from
  ORDER BY 3 DESC; 










