--Сессия №1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Сессия №2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
--Сессия №1
SELECT SUM(rating) FROM pizzeria;
--Сессия №2
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
commit;
--Сессия №1
SELECT SUM(rating) FROM pizzeria;
commit;
SELECT SUM(rating) FROM pizzeria;
--Сессия №2
SELECT SUM(rating) FROM pizzeria;