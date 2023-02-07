-- 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
-- Необходимые поля таблицы: product_name (название товара), 
-- manufacturer (производитель), product_count (количество), price (цена). 
USE hw1;
CREATE TABLE `hw1` (
  `id_mobile_phones` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `prices_mobile_phones` DECIMAL NULL,
  `product_count` INT NOT NULL,
  PRIMARY KEY (`id_mobile_phones`));
  
  -- Заполните БД данными
INSERT INTO `hw1`
  (`product_name`, `manufacturer`, `prices_mobile_phones`, `product_count`) 
VALUES 
('Galaxy S22 Ultra', 'Samsung', 91575, 2),
('Galaxy A03 4/64 Gb', 'Samsung', 7451, 100),
('Galaxy A23 4/64 Gb', 'Samsung', 12395, 50),
('Galaxy Note20 Ultra 12/256 Gb', 'Samsung', 52196, 1),
('iPhone 11 128 Gb', 'Apple', 37453, 2),
('iPhone 12 64 Gb', 'Apple', 46296, 15),
('iPhone 13 128 Gb', 'Apple', 52544, 72),
('Redmi Note 10 Pro 6/128 Gb', 'Xiaomi', 17566, 23),
('Redmi 10 2022 4/64 Gb', 'Xiaomi', 11553, 2),
('Redmi A1+ 2/32 Gb', 'Xiaomi', 5911, 88);

-- Напишите SELECT-запрос, который выводит название товара, 
-- производителя и цену для товаров, количество которых превышает 2
SELECT product_name, manufacturer, prices_mobile_phones, product_count
FROM hw1
WHERE product_count > 2;

-- 3. Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”
SELECT * FROM hw1
WHERE manufacturer = 'Samsung';
  
  
  
  