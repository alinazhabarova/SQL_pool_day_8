--Сессия №1
begin;
--Сессия №2
begin;
--Сессия №1
select * from pizzeria where name = 'Pizza Hut';
--Сессия №2
update pizzeria set rating = 3.6 where name = 'Pizza Hut';
commit;
--Сессия №1
select * from pizzeria where name = 'Pizza Hut';
commit;
select * from pizzeria where name = 'Pizza Hut';
--Сессия №2
select * from pizzeria where name = 'Pizza Hut';