-- Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными
CREATE DATABASE prakt1;
USE prakt1;
CREATE TABLE phone
(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,   
	ProductName VARCHAR(45), 
	Manufacturer VARCHAR(45), 
	ProductCount VARCHAR(45),
    Price INT
);

INSERT 	phone(ProductName, Manufacturer, ProductCount,Price)
VALUES
	("iPhone X","Apple", "3", 76000),
    ("iPhone 8","Apple", "2", 51000),
    ("Galaxy S9","Samsung", "2", 56000),
    ("Galaxy S8","Samsung", "1", 41000),
    ("P20 Pro","Huawei", "5", 36000);
    
-- Выведите название, производителя и цену для товаров, количество которых превышает 2

SELECT ProductName, Manufacturer, Price
FROM phone
WHERE ProductCount > 2;

-- Выведите весь ассортимент товаров марки “Samsung”
SELECT ProductName
FROM phone
WHERE Manufacturer = "Samsung";

-- Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000

SELECT ProductName, Manufacturer, ProductCount,Price
FROM phone
WHERE (ProductCount * Price > 100000) & (ProductCount * Price < 145000);

-- Товары, в которых есть упоминание "Iphone"

SELECT ProductName
FROM phone
WHERE ProductName LIKE "%Iphone%";

-- Товары, в которых есть упоминание "Galaxy"

SELECT ProductName
FROM phone
WHERE ProductName LIKE "%Galaxy%";

-- Товары, в которых есть ЦИФРЫ

SELECT ProductName
FROM phone
WHERE ProductName REGEXP "1|2|3|4|5|6|7|8|9|0";

-- Товары, в которых есть ЦИФРА "8"

SELECT ProductName
FROM phone
WHERE ProductName LIKE "%8%";