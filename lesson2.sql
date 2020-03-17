-- Создает новый пункт beer в столбце Name
INSERT INTO goods(Name)
VALUES('beer');


-- Создает новый  пункт beer в столбце Name и добавляет ему цену 999
INSERT INTO goods(Name, Price)
VALUES('beer',999);


-- В столбце price  изменяет всем цену на 2
UPDATE goods
SET Price = 2;


-- В столбце price у товара с id=1 или id=4 изменяет цену на 298
UPDATE goods
SET Price = 298
WHERE id=1 or id=4;


-- Удаляет id=7 из таблицы goods
DELETE FROM goods
WHERE id = 3


-- Меняетт цену во всех  столбцах где цена равна двум
UPDATE goods
SET Price = 6545
WHERE Price= 2


-- Between
SELECT * 
FROM people
WHERE Salary >=100 AND salary <=200; -- Показывает всех, у кого зп от 100 до 200

SELECT * 
FROM people
WHERE Salary BETWEEN 100 and 600; --Тоже самое, только с BETWEEN


-- IN
SELECT * 
FROM people
WHERE dep = 'МО' or dep='Президент'; -- Показывает всех, кто работает в этих отделах

SELECT * 
FROM people
WHERE Dep IN('МО','Президент');  -- Тоже самое только с IN


-- Like оператор полнотекстового поиска(используется два подстановочных симфола: %(любые симфолы),_(один любой символ))
SELECT * 
FROM people
WHERE Name LIKE 'Ярос%';


-- вывести всех сотрудников, которые работают в отделе, название которого содержит ровно пять символов
SELECT * 
FROM people
WHERE Dep LIKE '__';


-- Функции АГРЕГИРОВАНИЯ вычисляют шрупповые характеристики полей таблицы: min,  max, sum, count(количество), avg(среднее значение)
SELECT MAX(salary)
FROM people; -- Показывает максимальное значение в salary


-- Показывает max min sum avg из salary
SELECT MAX(salary), MIN(salary), SUM(salary), AVG(salary)
FROM people 


-- Показывает все строки 
SELECT COUNT(*)
FROM people


-- Вложенные запросы
SELECT * 
FROM people
WHERE Salary > (SELECT avg(salary) 
                FROM people)



-- найти работника с самой большо зп, как его зовут
SELECT * 
FROM people
WHERE Salary = (SELECT max(salary)
                FROM people)