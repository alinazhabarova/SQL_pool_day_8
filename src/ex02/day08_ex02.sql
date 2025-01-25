--Сессия №1
begin isolation level repeatable read;
--Сессия №2
begin isolation level repeatable read;
--Сессия №1
select * from pizzeria where name = 'Pizza Hut';
--Сессия №2
select * from pizzeria where name = 'Pizza Hut';
--Сессия №1
update pizzeria set rating = 4 where name = 'Pizza Hut';
--Сессия №2
update pizzeria set rating = 3.6 where name = 'Pizza Hut';
--Сессия №1
commit;
--Сессия №2
commit;
--Сессия №1
select * from pizzeria where name = 'Pizza Hut';
--Сессия №2
select * from pizzeria where name = 'Pizza Hut';