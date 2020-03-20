SELECT *
FROM people 
WHERE name LIKE '_а%';


-- найти всех у кого последние две буквы
SELECT *
FROM people 
WHERE name LIKE '%ов %';