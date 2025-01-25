--Сессия №1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--Сессия №2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--Сессия №1
select * from pizzeria where name = 'Pizza Hut';
--Сессия №2
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
commit;
--Сессия №1
select * from pizzeria where name = 'Pizza Hut';
commit;
select * from pizzeria where name = 'Pizza Hut';
--Сессия №2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';