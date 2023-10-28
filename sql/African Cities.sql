SELECT ci.NAME
FROM CITY AS ci, COUNTRY as co
WHERE ci.COUNTRYCODE = co.CODE AND co.CONTINENT LIKE 'Africa';
