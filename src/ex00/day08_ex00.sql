--Сессия №1
--Задание: 
--Обновление рейтинга "Pizza Hut" до 5 баллов в режиме транзакции.
--Убедитесь, что вы видите изменения в сеансе №1:
BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria;

--Сессия №2
--Убедитесь, что вы не видите изменений в сеансе №2:
SELECT * FROM pizzeria;

--Сессия №1
--Опубликуйте изменения для всех параллельных сеансов:
COMMIT;
SELECT * FROM pizzeria;
--Сессия №2
--Убедитесь, что вы видите изменения в сеансе №2:
SELECT * FROM pizzeria;