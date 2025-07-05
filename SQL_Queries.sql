CREATE DATABASE group3;

-- Celebrities table
CREATE TABLE Celebrities (
    celebrity_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    age INT NOT NULL,
    gender ENUM('Male', 'Female', 'Non-binary', 'Other') NOT NULL,
    country VARCHAR(50) NOT NULL,
    primary_industry ENUM('Film', 'Music', 'Both') NOT NULL,
    net_worth DECIMAL(15,2) NOT NULL,
    active_since YEAR NOT NULL,
    years_active INT NOT NULL
);

-- Insert into Celebrities table
INSERT INTO Celebrities (full_name, birth_date, age, gender, country, primary_industry, net_worth, active_since, years_active) VALUES
('Tom Hanks', '1956-07-09', 67, 'Male', 'USA', 'Film', 400000000, 1980, 43),
('Beyoncé', '1981-09-04', 42, 'Female', 'USA', 'Music', 500000000, 1997, 26),
('Dwayne Johnson', '1972-05-02', 51, 'Male', 'USA', 'Film', 320000000, 1999, 24),
('Taylor Swift', '1989-12-13', 34, 'Female', 'USA', 'Music', 400000000, 2006, 17),
('Leonardo DiCaprio', '1974-11-11', 48, 'Male', 'USA', 'Film', 260000000, 1989, 34),
('Rihanna', '1988-02-20', 35, 'Female', 'Barbados', 'Both', 1400000000, 2005, 18),
('Robert Downey Jr.', '1965-04-04', 58, 'Male', 'USA', 'Film', 300000000, 1970, 53),
('Ariana Grande', '1993-06-26', 30, 'Female', 'USA', 'Music', 240000000, 2008, 15),
('Will Smith', '1968-09-25', 55, 'Male', 'USA', 'Both', 350000000, 1985, 38),
('Lady Gaga', '1986-03-28', 37, 'Female', 'USA', 'Both', 150000000, 2005, 18),
('Brad Pitt', '1963-12-18', 60, 'Male', 'USA', 'Film', 300000000, 1987, 36),
('Jennifer Lopez', '1969-07-24', 54, 'Female', 'USA', 'Both', 400000000, 1991, 32),
('Chris Hemsworth', '1983-08-11', 40, 'Male', 'Australia', 'Film', 130000000, 2002, 21),
('Drake', '1986-10-24', 37, 'Male', 'Canada', 'Music', 250000000, 2001, 22),
('Scarlett Johansson', '1984-11-22', 39, 'Female', 'USA', 'Film', 165000000, 1994, 29),
('Ed Sheeran', '1991-02-17', 32, 'Male', 'UK', 'Music', 200000000, 2004, 19),
('Angelina Jolie', '1975-06-04', 48, 'Female', 'USA', 'Film', 120000000, 1982, 41),
('Bruno Mars', '1985-10-08', 38, 'Male', 'USA', 'Music', 175000000, 2004, 19),
('Johnny Depp', '1963-06-09', 60, 'Male', 'USA', 'Film', 150000000, 1984, 39),
('Selena Gomez', '1992-07-22', 31, 'Female', 'USA', 'Both', 80000000, 2002, 21),
('Kevin Hart', '1979-07-06', 44, 'Male', 'USA', 'Film', 200000000, 2001, 22),
('Billie Eilish', '2001-12-18', 22, 'Female', 'USA', 'Music', 30000000, 2015, 8),
('Ryan Reynolds', '1976-10-23', 47, 'Male', 'Canada', 'Film', 150000000, 1991, 32),
('Shakira', '1977-02-02', 46, 'Female', 'Colombia', 'Music', 300000000, 1990, 33),
('Chris Evans', '1981-06-13', 42, 'Male', 'USA', 'Film', 80000000, 2000, 23),
('Adele', '1988-05-05', 35, 'Female', 'UK', 'Music', 190000000, 2006, 17),
('Tom Cruise', '1962-07-03', 61, 'Male', 'USA', 'Film', 600000000, 1981, 42),
('Katy Perry', '1984-10-25', 39, 'Female', 'USA', 'Music', 330000000, 2001, 22),
('Samuel L. Jackson', '1948-12-21', 75, 'Male', 'USA', 'Film', 250000000, 1972, 51),
('BTS', '2010-06-13', 13, 'Male', 'South Korea', 'Music', 450000000, 2013, 10);

SELECT * FROM Celebrities;


-- Awards table
CREATE TABLE Awards (
    award_id INT AUTO_INCREMENT PRIMARY KEY,
    celebrity_id INT NOT NULL,
    award_name VARCHAR(100) NOT NULL,
    award_category VARCHAR(100) NOT NULL,
    award_year INT NOT NULL,
    FOREIGN KEY (celebrity_id) REFERENCES Celebrities(celebrity_id)
);

-- Insert Into Awards Table
INSERT INTO Awards (celebrity_id, award_name, award_category, award_year) VALUES
(1, 'Oscar', 'Best Actor', 1995),
(1, 'Golden Globe', 'Best Actor', 1995),
(2, 'Grammy', 'Best R&B Song', 2004),
(2, 'MTV Video Music Award', 'Video of the Year', 2009),
(3, 'People''s Choice', 'Favorite Movie Actor', 2019),
(4, 'Grammy', 'Album of the Year', 2016),
(4, 'American Music Award', 'Artist of the Year', 2019),
(5, 'Oscar', 'Best Actor', 2016),
(6, 'Grammy', 'Best Rap/Sung Performance', 2013),
(7, 'Golden Globe', 'Best Actor', 2010),
(8, 'Grammy', 'Best Pop Vocal Album', 2019),
(9, 'Oscar', 'Best Actor', 2022),
(10, 'Golden Globe', 'Best Original Song', 2019),
(11, 'Oscar', 'Best Supporting Actor', 2020),
(12, 'MTV Video Music Award', 'Video of the Year', 2000),
(13, 'People''s Choice', 'Favorite Action Movie Star', 2019),
(14, 'Grammy', 'Best Rap Album', 2017),
(15, 'Tony Award', 'Special Award', 2010),
(16, 'Grammy', 'Song of the Year', 2016),
(17, 'Oscar', 'Best Supporting Actress', 2000),
(18, 'Grammy', 'Record of the Year', 2018),
(19, 'Golden Globe', 'Best Actor', 2008),
(20, 'American Music Award', 'Artist of the Year', 2016),
(21, 'People''s Choice', 'Comedy Act', 2015),
(22, 'Grammy', 'Best New Artist', 2020),
(23, 'People''s Choice', 'Favorite Movie Actor', 2017),
(24, 'Latin Grammy', 'Record of the Year', 2006),
(25, 'MTV Movie Award', 'Best Hero', 2012),
(26, 'Grammy', 'Album of the Year', 2012),
(27, 'Golden Globe', 'Best Actor', 2000),
(28, 'Billboard', 'Woman of the Year', 2012),
(29, 'BAFTA', 'Best Supporting Actor', 1995),
(30, 'Billboard', 'Top Duo/Group', 2020);

SELECT * FROM Awards;


-- Movies table
CREATE TABLE Movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    imdb_rating DECIMAL(3,1),
    celebrity_id INT,
    FOREIGN KEY (celebrity_id) REFERENCES Celebrities(celebrity_id)
);

-- Insert into Movies table
INSERT INTO Movies (title, release_year, genre, imdb_rating, celebrity_id) VALUES
('Forrest Gump', 1994, 'Drama', 8.8, 1),
('Black Panther', 2018, 'Action', 7.3, 13),
('Titanic', 1997, 'Romance', 7.9, 5),
('Avengers: Endgame', 2019, 'Action', 8.4, 7),
('The Dark Knight', 2008, 'Action', 9.0, 11),
('Joker', 2019, 'Crime', 8.4, 5),
('Frozen II', 2019, 'Animation', 6.8, 15),
('Inception', 2010, 'Sci-Fi', 8.8, 5),
('The Lion King', 2019, 'Animation', 6.9, 9),
('Jurassic World', 2015, 'Adventure', 7.0, 3),
('Pulp Fiction', 1994, 'Crime', 8.9, 29),
('The Avengers', 2012, 'Action', 8.0, 7),
('La La Land', 2016, 'Musical', 8.0, 12),
('The Wolf of Wall Street', 2013, 'Biography', 8.2, 5),
('Deadpool', 2016, 'Action', 8.0, 23),
('Mission: Impossible', 1996, 'Action', 7.1, 27),
('Iron Man', 2008, 'Action', 7.9, 7),
('The Notebook', 2004, 'Romance', 7.8, 17),
('Zootopia', 2016, 'Animation', 8.0, 15),
('Guardians of the Galaxy', 2014, 'Action', 8.0, 13);

SELECT * FROM Movies;

-- Songs table
CREATE TABLE Songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_year INT NOT NULL,
    genre VARCHAR(50) NOT NULL,
    album VARCHAR(100),
    record_label VARCHAR(100),
    streams BIGINT,
    revenue DECIMAL(15,2),
    chart_position INT,
    celebrity_id INT NOT NULL,
    FOREIGN KEY (celebrity_id) REFERENCES Celebrities(celebrity_id)
);

-- Insert into Songs table (with celebrity_id for primary artist)
INSERT INTO Songs (title, release_year, genre, album, record_label, streams, revenue, chart_position, celebrity_id) VALUES
('Shape of You', 2017, 'Pop', '÷', 'Atlantic', 3000000000, 20000000, 1, 16),
('Despacito', 2017, 'Latin Pop', 'Vida', 'Universal Latin', 7000000000, 25000000, 1, 24),
('Blinding Lights', 2019, 'Synthwave', 'After Hours', 'Republic', 3500000000, 18000000, 1, 14),
('Uptown Funk', 2014, 'Funk', 'Uptown Special', 'RCA', 2500000000, 15000000, 1, 18),
('Closer', 2016, 'EDM', 'Collage', 'Disruptor', 3000000000, 17000000, 1, 30),
('Thinking Out Loud', 2014, 'Pop', 'x', 'Atlantic', 2000000000, 12000000, 2, 16),
('Someone Like You', 2011, 'Pop', '21', 'XL', 1500000000, 10000000, 1, 26),
('Sunflower', 2018, 'Pop', 'Spider-Man: Into the Spider-Verse', 'Republic', 2500000000, 14000000, 1, 14),
('Bad Guy', 2019, 'Electropop', 'When We All Fall Asleep', 'Darkroom', 3000000000, 16000000, 1, 22),
('Happy', 2013, 'Pop', 'G I R L', 'Columbia', 1500000000, 9000000, 1, 28),
('Rolling in the Deep', 2010, 'Pop', '21', 'XL', 1800000000, 11000000, 1, 26),
('Old Town Road', 2019, 'Country Rap', '7', 'Columbia', 2000000000, 13000000, 1, 30),
('Perfect', 2017, 'Pop', '÷', 'Atlantic', 1700000000, 10500000, 1, 16),
('Havana', 2017, 'Pop', 'Camila', 'Epic', 1900000000, 11500000, 1, 20),
('Dynamite', 2020, 'K-Pop', 'Be', 'Big Hit', 1200000000, 8000000, 1, 30),
('Hello', 2015, 'Pop', '25', 'XL', 2100000000, 12500000, 1, 26),
('Shake It Off', 2014, 'Pop', '1989', 'Big Machine', 1800000000, 11000000, 1, 4),
('WAP', 2020, 'Hip-Hop', 'Single', 'Atlantic', 1500000000, 9500000, 1, 6),
('Senorita', 2019, 'Pop', 'Romance', 'Universal', 2200000000, 13500000, 1, 2),
('Dance Monkey', 2019, 'Pop', 'The Kids Are Coming', 'Sony', 2500000000, 15000000, 1, 8);

SELECT * FROM Songs;

DROP TABLE Contributions;
-- Contributions table
CREATE TABLE Contributions (
    contribution_id INT AUTO_INCREMENT PRIMARY KEY,
    celebrity_id INT NOT NULL,
    movie_id INT,
    song_id INT,
    contribution_type VARCHAR(100) NOT NULL,
    compensation DECIMAL(15,2),
    FOREIGN KEY (celebrity_id) REFERENCES Celebrities(celebrity_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

-- Insert into Contributions table
INSERT INTO Contributions (celebrity_id, movie_id, song_id, contribution_type, compensation) VALUES
(1, 1, NULL, 'Actor', 50000000),
(5, 3, NULL, 'Actor', 2500000),
(7, 4, NULL, 'Actor', 50000000),
(11, 5, NULL, 'Actor', 15000000),
(13, 2, NULL, 'Actor', 10000000),
(15, 7, NULL, 'Voice Actress', 3000000),
(17, 18, NULL, 'Actress', 6000000),
(23, 15, NULL, 'Actor', 2500000),
(27, 16, NULL, 'Actor', 7000000),
(29, 11, NULL, 'Actor', 2000000),
(2, NULL, 19, 'Vocals', 1000000),
(4, NULL, 17, 'Vocals', 2000000),
(6, NULL, 18, 'Vocals', 1500000),
(8, NULL, 20, 'Vocals', 750000),
(10, NULL, 10, 'Vocals', 800000),
(14, NULL, 3, 'Vocals', 1800000),
(16, NULL, 1, 'Vocals', 1050000),
(18, NULL, 4, 'Vocals', 1250000),
(20, NULL, 14, 'Vocals', 650000),
(22, NULL, 9, 'Vocals', 550000),
(24, NULL, 2, 'Vocals', 1300000),
(26, NULL, 7, 'Vocals', 950000),
(28, NULL, 10, 'Vocals', 850000),
(30, NULL, 5, 'Vocals', 1200000),
(3, NULL, 4, 'Featured Artist', 750000),
(9, 9, NULL, 'Soundtrack', 500000),
(12, 13, NULL, 'Soundtrack', 800000),
(19, NULL, 20, 'Songwriter', 450000),
(21, NULL, 12, 'Featured Artist', 350000),
(25, NULL, 16, 'Songwriter', 400000);



SELECT * FROM Contributions;

-- Number of Celebrities in Each Industry
SELECT primary_industry, COUNT(*) AS total_celebrities
FROM Celebrities
GROUP BY primary_industry
ORDER BY total_celebrities DESC;


-- Top 10 Richest Celebrities
SELECT full_name, net_worth
FROM Celebrities
ORDER BY net_worth DESC
LIMIT 10;

-- Top 5 Rated Movies with Actors
SELECT m.title, c.full_name AS Actors, m.imdb_rating
FROM Movies m
JOIN Celebrities c ON m.celebrity_id = c.celebrity_id
ORDER BY m.imdb_rating DESC
LIMIT 5;

-- Top 5 Most Streamed Songs and Musicians
SELECT s.title, c.full_name AS Musicians, s.streams
FROM Songs s
JOIN Celebrities c ON s.celebrity_id = c.celebrity_id
ORDER BY s.streams DESC
LIMIT 5;

-- The Overall Best Celebrity
SELECT 
    c.full_name AS best_celebrity,
    COUNT(a.award_id) AS award_count,
    AVG(co.compensation) AS avg_compensation
FROM 
    Celebrities c
LEFT JOIN 
    Awards a ON c.celebrity_id = a.celebrity_id
LEFT JOIN
    Contributions co ON c.celebrity_id = co.celebrity_id
GROUP BY 
    best_celebrity
ORDER BY 
    award_count DESC
LIMIT 1;