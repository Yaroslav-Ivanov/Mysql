-- Найти средний размер комиссионных продовцов в каждом городе
SELECT City, ROUND(avg(Comm))
FROM selspeople
GROUP BY City


-- Having - условие записанное после ключевого сова WHERE применяются к каждой записи таблицы в отдельности.
-- Условия записанные после ключевого слова Having прим к группам записи, поэтому инструкция HAVING не используется без инструкции GROW BY.
-- Так как условия записываемые после Having прим к группам записи это дает возможность использовать в условиях функции агригирования(Min, max, avg, count, sum).


-- Вывести список городов, в которых средний размер коммисионных продавцов больше 0.14
SELECT City, ROUND(avg(Comm))
FROM selspeople
GROUP BY City
HAVING avg(Comm)>.14


-- Найти средний рейт в каждом городе
SELECT City, ROUND(avg(Ratting))
FROM customers
GROUP BY City
HAVING avg(Ratting)>.14


-- вывести список городов, в которых мин рейт покупателей выше среднего рейт всех покупателей
SELECT City, MIN(Ratting)
FROM customers
GROUP BY City
HAVING min(Ratting) > (SELECT avg(ratting)
                       FROM customers)


-- Вложенные запросы возвращающие не единственные запросы.
-- Найти покупателей у которых рейт выше рейт любого покупателя из London
SELECT *
FROM customers 
WHERE Ratting > ALL(SELECT Ratting
                    FROM customers
                    WHERE City = 'London')


-- Выевести список на сумму больше 1к
SELECT Amt
FROM customers
WHERE SUM


-- Вывести список городов, в которых живут покупатели, совершившие покупку на сумму более 5к