--Total countries in Africa
SELECT COUNT(*)
FROM countries
WHERE continent = 'Africa';

--Total population of Oceania in 2005
SELECT SUM(population)
FROM population_years
JOIN countries
ON population_years.country_id = countries.id
WHERE continent = 'Oceania'
AND year = 2005;

-- Average population of South America in 2003
SELECT year, continent, ROUND(AVG(population), 0)
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE continent = 'South America'
AND year = 2003;

--Country with the smallest population in 2007
SELECT name, MIN(population)
FROM population_years
JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2007;

-- Average population of Poland between 2001 and 2010
SELECT name, ROUND(AVG(population), 0)
FROM population_years
LEFT JOIN countries
WHERE year BETWEEN 2001 AND 2010
AND name = 'Poland';

--Countries with the word 'The' in their names
SELECT name, COUNT(name)
FROM countries
WHERE name LIKE '%The%';

--Total population of each continent in 2010
SELECT continent, year, SUM(population) as population
FROM population_years
INNER JOIN countries
ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY continent;











