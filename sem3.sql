USE hw3;

-- 1. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. [ORDER BY]

SELECT DISTINCT firstname FROM users ORDER BY firstname;

-- 2. Выведите количество мужчин старше 35 лет [COUNT].

SELECT COUNT(*)
FROM profiles
WHERE gender = 'm' AND (YEAR(CURRENT_DATE) - YEAR(birthday)) > 35;

-- 3. Сколько заявок в друзья в каждом статусе? (таблица friend_requests) [GROUP BY]

select count(*)
	target_user_id
from friend_requests
group by target_user_id;

-- 4. Выведите номер пользователя, который отправил больше всех заявок в друзья (таблица friend_requests) [LIMIT].

SELECT initiator_user_id
FROM  friend_requests
ORDER BY target_user_id DESC
LIMIT 1 ;
