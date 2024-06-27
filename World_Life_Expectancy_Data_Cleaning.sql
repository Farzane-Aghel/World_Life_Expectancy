SELECT * FROM life_expectancy;

#Removing Duplicates

SELECT Country,Year,concat(country,year)
FROM life_expectancy;

SELECT concat(country,year),
COUNT(concat(country,year))
FROM life_expectancy
GROUP BY concat(country,year)
HAVING COUNT(concat(country,year)) >1;

SELECT
Row_ID,
concat(country,year),
ROW_NUMBER() OVER( PARTITION BY CONCAT(country,year) ORDER BY CONCAT(country,year)) AS row_num
FROM life_expectancy;

SELECT *
FROM (
SELECT
Row_ID,
concat(country,year),
ROW_NUMBER() OVER( PARTITION BY CONCAT(country,year) ORDER BY CONCAT(country,year)) AS row_num
FROM life_expectancy) AS row_table
WHERE row_num > 1;

DELETE FROM life_expectancy
WHERE Row_ID IN (
SELECT Row_ID
FROM (
SELECT *
FROM (
SELECT
Row_ID,
concat(country,year),
ROW_NUMBER() OVER( PARTITION BY CONCAT(country,year) ORDER BY CONCAT(country,year)) AS row_num
FROM life_expectancy) AS row_table
WHERE row_num > 1) AS r) 
;

#Populating missing values

SELECT * FROM life_expectancy
WHERE Status = "";

SELECT 
DISTINCT(Status)
FROM life_expectancy;

SELECT 
DISTINCT(Country)
FROM life_expectancy
WHERE Status = "Developing";

UPDATE life_expectancy
SET Status = 'Developing'
WHERE Country IN (
    SELECT Country FROM (
        SELECT DISTINCT Country
        FROM life_expectancy
        WHERE Status = 'Developing'
    ) AS temp_table
);

UPDATE life_expectancy
SET Status = 'Developed'
WHERE Country IN (
    SELECT Country FROM (
        SELECT DISTINCT Country
        FROM life_expectancy
        WHERE Status = 'Developed'
    ) AS temp_table_2
);


