USE hw2;
CREATE TABLE films
(
    films_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    films_title VARCHAR(45),
    films_release INT,
    films_genre VARCHAR(45),
    films_actor VARCHAR(45)
);
CREATE TABLE genre
(
    genre_id INT NOT NULL ,
    genre_title VARCHAR(45)
);
CREATE TABLE actors
(
    films_id INT NOT NULL ,
    actors_title VARCHAR(45)
); 
CREATE TABLE links
(
    id_films INT NOT NULL , 
    id_genre INT NOT NULL ,
    id_actors INT NOT NULL 
);
INSERT INTO films(films_title, films_release, films_genre, films_actor )
VALUES
    ('Операция "Валькирия"',2008,'военный', 'Том Круз'),
    ('Ромео должен умереть', 2000, 'боевик', 'Джет Ли'), 
    ('Код да Винчи', 2006, 'детектив', 'Том Хэнкс'),
    ('Заклятие', 2013, 'ужасы', 'Вера Фармига');
    
INSERT INTO genre( genre_title )
VALUES
    ('военный'),
    ('боевик'), 
    ('детектив'),
    ('ужасы');
INSERT INTO actors(actors_title )
VALUES
    ('Том Круз'),
    ('Джет Ли'), 
    ('Том Хэнкс'),
    ('Вера Фармига');
RENAME TABLE links TO link;
SELECT * FROM link;

ALTER TABLE films
ADD films_rating INT NULL;
SELECT * FROM films;

ALTER TABLE films
DROP COLUMN films_rating;

ALTER TABLE genre ADD FOREIGN KEY (films_id) REFERENCES films(films_id);
SELECT * FROM genre;

ALTER TABLE films
ADD films_rating INT NULL;
SELECT * FROM films;

SELECT 
    films_title as 'name',
    films_rating as 'rate',
    CASE 
        WHEN films_rating >= 3 THEN 'Рекомендуем к просмотру'
        WHEN films_rating IS NULL THEN 'Нет просмотров'
        ELSE 'Скука'
    END AS 'Оценочное мнение'
FROM films;

--  Подумать и описать проблемы своего проектирования базы данных;
/* Было сложно оформить данный проект грамотно, чтобы присутствовала логика. */

