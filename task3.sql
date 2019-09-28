create database IF NOT EXISTS test;
DROP TABLE IF EXISTS flights;
DROP TABLE IF EXISTS cities;

CREATE TABLE IF NOT EXISTS  
flights(id serial, `from` VARCHAR(50),  `to` VARCHAR(50));  
INSERT INTO flights (`from`,`to`) VALUES
  ('Moscow', 'Omsk'),
  ('Novgorod','Kazan'),
  ('Irkutsk','Moscow'),
  ('Omsk','Irkutsk'),
  ('Moscow','Kazan');

CREATE TABLE IF NOT EXISTS  
cities (id serial, label VARCHAR(50),  name VARCHAR(50));  
INSERT INTO cities (label,name) VALUES
  ('Moscow', 'Москва'),
  ('Irkutsk','Иркутск'),
  ('Novgorod','Новгород'),
  ('Kazan','Казань'),
  ('Omsk','Омск');

 # 1 вариант  
 SELECT (SELECT name FROM cities WHERE `from`=label) AS `from` , (SELECT name FROM cities WHERE  `to`=label) AS `to` FROM flights; 

 # 2 вариант
 
SELECT
  c.name as `from`,
  c1.name as `to`
FROM
  flights AS f 
JOIN
  cities AS c
  JOIN
  cities AS c1
WHERE
  f.`from` = c.label and f.`to`=c1.label
  order by f.id;


 
 