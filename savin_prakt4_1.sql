CREATE DATABASE IF NOT EXISTS practic;
USE practic;

SELECT * FROM autos; -- 1 все поля
SELECT make,model,year_from FROM autos; -- 2 некоторые поля
SELECT make AS 'Марка',model AS 'Модель',cylinder_layout AS 'Расположение цилиндров',
boost_type AS 'Наличие турбины' FROM autos; -- 3 переименование полей
SELECT * FROM autos WHERE cylinder_layout='V-Type'; -- 4
SELECT * FROM autos WHERE year_from>='1999'; -- 5
SELECT * FROM autos WHERE year_from>='2001' AND year_to<='2009'; -- 6

-- 6.2 через BETWEEN не получится, так как условие по двум полям - year_from и year_to

SELECT * FROM autos WHERE series !='sedan'AND series!='crossover'; -- 7
SELECT * FROM autos WHERE series NOT IN ('sedan','crossover'); -- 7.2

SELECT make,model,series,drive_wheels,transmission FROM autos WHERE year_from>'2014' AND boost_type='No'; -- 8 
SELECT * FROM autos WHERE make LIKE '%t%'
						OR make LIKE '%T%'
                        OR model LIKE '%t%'
						OR model LIKE '%T%'; -- 9

SELECT make,model,year_from,series,transmission FROM autos WHERE drive_wheels='4WD' ORDER BY make LIMIT 20; -- 10

