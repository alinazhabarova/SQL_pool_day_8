--Сессия №1
BEGIN;
--Сессия №2
BEGIN;
--Сессия №1
SELECT SUM(rating) FROM pizzeria;
--Сессия №2
UPDATE pizzeria SET rating = 1 WHERE name = 'Pizza Hut';
commit;
--Сессия №1
SELECT SUM(rating) FROM pizzeria;
commit;
SELECT SUM(rating) FROM pizzeria;
--Сессия №2
SELECT SUM(rating) FROM pizzeria;