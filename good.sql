-- Показать все из таблицы zp
SELECT * 
FROM zp;


-- Показать fio, zp из таблицы zp
SELECT fio, zp
From zp;


-- Выбрать всех у кого зп больше 200
SELECT *
From zp
Where zp>200;


-- Показывает у кого зп не равна 3000
SELECT * FROM zp WHERE zp <>3000;


-- Показывает у кого зп больше 3000 и меньше 505043
SELECT * FROM zp WHERE zp>3000 and <505043;


-- Показывает у кого зп больше 10000 в первом цеху
SELECT * FROM zp WHERE zp>10000 and dep="Первый цех";


-- Показывает у кого зп не меньше 10000
SELECT * FROM zp WHERE not zp<10000;


-- Отсортирует работников по зп
SELECT * FROM zp ORDER by zp;


-- Отсортирует работников по зп в обратном порядке(ASC прямой порядок)
SELECT * FROM zp ORDER by zp DESC;


-- Отсортирует работников по зп в обратном порядке и dep в прямом порядке
SELECT * FROM `zp` ORDER by zp DESC ,dep asc;


-- Переименовывает одно в другое
SELECT zp AS 'зарплата', numb AS 'номер', dep AS 'место работы' FROM `zp` ;


-- Посчитать налоги от зарплаты
SELECT numb as 'номер', fio as 'ФИО',  zp * 0.13 as 'налоги', dep as 'место работы' FROM `zp` WHERE 1;


-- показывает итоговую зп с учетом вычитания налогов
SELECT numb as 'номер', fio as 'ФИО',  zp-(zp * 0.13) as 'налоги', dep as 'место работы' FROM `zp` WHERE 1