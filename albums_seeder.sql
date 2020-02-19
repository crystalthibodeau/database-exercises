USE codeup_test_db;
CREATE DATABASE IF NOT EXISTS codeup_test_db;

-- Use INSERT to add records for all the albums from this list on Wikipedia that claim over 30 million sales (the first two tables). For sales data, use the 'sales certification' column of the tables, not 'claimed sales'. For artists listed with 'Various Artists', just use the primary artist's name.
--
-- First write your queries as separate INSERT statements for each record and test. You should see no output.
-- Refactor your script to use a single INSERT statement for all the records and test it again. Again, this should not generate any output.
-- Note that running the albums_seeder.sql multiple times will generate duplicate data, don't worry about that for now (we'll fix it by the end of the exercise).
INSERT into albums (artist, name, release_date, sales, genre)
values ('Michael Jackson', 'Thriller', 1982, 47.3, 'Pop, post-disco, funk and rock'),
       ('AC/DC', 'Back in Black', 1980, 29.4, 'Hard rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard rock, glam rock, heavy metal'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.2, 'Progressive rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 28.4, 'R&B, soul, pop, soundtrack'),
       ('Eagles', 'Their Greatest Hits (1971-1975)', 1976, 41.2, 'Country rock, soft rock, folk rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, pop'),
       ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 14.4, 'Rock and roll'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard rock, heavy metal, folk rock'),
       ('Michael Jackson', 'Bad', 1987, 22.2, 'Pop, rhythm and blues, funk and rock'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.4, 'Alternative rock'),
       ('Michael Jackson', 'Dangerous', 1991, 17.3, 'New jack swing, R&B and pop'),
       ('Celine Dion', 'Falling into You', 1996, 20.2, 'Pop, soft rock'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft rock'),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
       ('Various artists', 'Dirty Dancing', 1987, 17.9, 'Pop, rock, R&B'),
       ('Adele', '21', 2011, 25.3, 'Pop, soul'),
       ('Celine Dion', 'Let''s Talk About Love', 1997, 19.3, 'Pop, soft rock'),
       ('The Beatles', '1', 2000, 23.4, 'Rock'),
       ('ABBA', 'Gold: Greatest Hits', 1992, 23.0, 'Pop, disco'),
       ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
       ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 19.6, 'Heartland rock'),
       ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Roots rock, blues rock, soft rock'),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Film score'),
       ('Metallica', 'Metallica', 1991, 25.2, 'Heavy Metal'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge, alternative rock'),
       ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive rock'),
       ('Santana', 'Supernatural', 1999, 20.5, 'Latin rock'),
       ('Madonna', 'The Immaculate Collection', 1990, 19.4, 'Pop, dance'),
       ('Guns N'' Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard rock');