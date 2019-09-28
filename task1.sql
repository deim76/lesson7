# Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
use shop;
# 1 вариант
SELECT (SELECT name FROM USERS WHERE id=user_id) AS User FROM orders GROUP BY user_id;
# 2 вариант
SELECT name FROM USERS WHERE EXISTS (SELECT * FROM orders WHERE user_id = users.id);

# 3 вариант
SELECT name FROM USERS WHERE id IN (SELECT user_id FROM orders GROUP BY user_id);
