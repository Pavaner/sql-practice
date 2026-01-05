CREATE TABLE CITY (
    ID NUMBER,
    NAME VARCHAR2(17),
    COUNTRYCODE VARCHAR2(3),
    DISTRICT VARCHAR2(20),
    POPULATION NUMBER
);
INSERT INTO CITY (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (1, 'Mumbai', 'IND', 'Maharashtra', 20400000);

INSERT INTO CITY (ID, NAME, COUNTRYCODE, DISTRICT, POPULATION)
VALUES (2, 'Delhi', 'IND', 'Delhi', 16787941);
CREATE TABLE COUNTRY (
    CODE VARCHAR2(3),
    NAME VARCHAR2(44),
    CONTINENT VARCHAR2(13),
    REGION VARCHAR2(25),
    SURFACEAREA NUMBER,
    INDEPYEAR NUMBER,
    POPULATION NUMBER,
    LIFEEXPECTANCY NUMBER,
    GNP NUMBER,
    GNPOld NUMBER,
    LOCALNAME VARCHAR2(44),
    GOVERNMENTFORM VARCHAR2(44),
    HEADOFSTATE VARCHAR2(44),
    CAPITAL NUMBER,
    CODE2 VARCHAR2(2)
);
INSERT INTO COUNTRY (
    CODE, NAME, CONTINENT, REGION, SURFACEAREA,
    INDEPYEAR, POPULATION, LIFEEXPECTANCY,
    GNP, GNPOld, LOCALNAME, GOVERNMENTFORM,
    HEADOFSTATE, CAPITAL, CODE2
)
VALUES (
    'IND', 'India', 'Asia', 'Southern Asia', 3287263,
    1947, 1380004385, 69,
    2875142, 2700000, 'Bharat', 'Federal Republic',
    'Droupadi Murmu', 1109, 'IN'
);
1.Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows: 

SELECT SUM(city.population) AS population
FROM city
INNER JOIN country
ON city.countrycode = country.code
WHERE country.continent = 'Asia';
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
select city.name
from city
inner join 
country on city.countrycode = country.code where continent = 'Africa';
3.Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY and COUNTRY tables are described as follows:
SELECT 
    country.continent,
    FLOOR(AVG(city.population)) AS avg_population
FROM city
INNER JOIN country
ON city.countrycode = country.code
GROUP BY country.continent;
