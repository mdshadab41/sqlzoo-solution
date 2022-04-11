
---#1

SELECT name, continent, population 

FROM world

---#2

# Large Countries

SELECT name FROM world
WHERE population > 200000000

---#3

# Per capita GDP

SELECT name, gdp/population
FROM world
WHERE population > 200000000

---#4

# South America In millions

SELECT name, population/1000000
FROM world
WHERE continent = 'South America'

---#5

#France, Germany, Italy

SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

---#6

# Show the countries which have a name that includes the word 'United'

SELECT name
FROM world
WHERE name LIKE '%United%'

---#7

# Show the countries that are big by area or big by population. Show name, population and area.

SELECT name, population, area

FROM world

WHERE area > 3000000 OR population > 250000000

---#8

# One or the other (but not both)

SELECT name, population, area
FROM world
WHERE (area > 3000000 AND population < 250000000)
  OR (area < 3000000 and population > 250000000)
  
---#9

#For South America show population in millions and GDP in billions both to 2 decimal places.

SELECT name, ROUND(population/1000000,2), ROUND(GDP/1000000000, 2)
FROM world
WHERE continent = 'South America'

---#10

# Show per-capita GDP for the trillion dollar countries to the nearest $1000.

SELECT name, ROUND(GDP/population,-3)
FROM world 
WHERE GDP > 1000000000000

----#11

#Show the name and capital where the name and the capital have the same number of characters.

SELECT name, capital 
FROM world 
WHERE LEN(name) = LEN(capital);

----#12

#Show the name and the capital where the first letters of each match.

SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1) AND name != capital


---#13

#Find the country that has all the vowels and no spaces in its name

SELECT name
   FROM world
WHERE name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %';

