SELECT country,
MIN(`life expectancy`),
MAX(`life expectancy`),
ROUND(MAX(`life expectancy`) - MIN(`life expectancy`),1) AS Increase_in_15_Years
FROM life_expectancy
WHERE `life expectancy` <> 0
GROUP BY Country;

-- ** --
SELECT YEAR,
ROUND(AVG(`life expectancy`),1) AS average_life_expectancy
FROM life_expectancy
WHERE `life expectancy` <> 0
GROUP BY Year;

-- ** --
SELECT Country,
ROUND(AVG(`life expectancy`),1) AS average_life_expectancy,
ROUND(AVG(GDP),1) AS average_GDP
FROM life_expectancy
WHERE `life expectancy` <> 0
AND GDP <> 0
GROUP BY Country
ORDER BY average_GDP;

-- ** --
SELECT
Status,
ROUND(AVG(`life expectancy`),1) AS average_life_expectancy
FROM life_expectancy
WHERE `life expectancy` <> 0
GROUP BY Status;

-- ** --

SELECT
Status,
COUNT(DISTINCT Country),
ROUND(AVG(`life expectancy`),1) AS average_life_expectancy
FROM life_expectancy
WHERE `life expectancy` <> 0
GROUP BY Status;

-- ** --
SELECT 
ROUND(AVG(`life expectancy`),1) AS average_life_expectancy,
ROUND(AVG(BMI),1) AS average_BMI
FROM life_expectancy
WHERE `life expectancy` <> 0 AND BMI <> 0
GROUP BY Country;

