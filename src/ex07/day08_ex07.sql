--Сессия №1
BEGIN;
--Сессия №2
BEGIN;
--Сессия №1
UPDATE pizzeria SET rating = 3 WHERE id = 1;
--Сессия №2
UPDATE pizzeria SET rating = 4 WHERE id = 2;
--Сессия №1
UPDATE pizzeria SET rating = 1 WHERE id = 2;
--Сессия №2
UPDATE pizzeria SET rating = 2 WHERE id = 1;
--Сессия №1
COMMIT;
--Сессия №2
COMMIT;

--произошла взаимная блокировка)