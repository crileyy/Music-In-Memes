-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema reviews
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `musicmemes` ;

-- -----------------------------------------------------
-- Schema reviews
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `musicmemes` DEFAULT CHARACTER SET utf8 ;
USE `musicmemes`;

-- -----------------------------------------------------
-- Table `meme`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `meme` ;

CREATE TABLE IF NOT EXISTS `meme` (
  `meme_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `peak_popularity_date` DATE,
  `song_id` INT NOT NULL,
  PRIMARY KEY (`meme_id`),
  CONSTRAINT `song_id` FOREIGN KEY (song_id) REFERENCES song (song_id))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `song`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `song` ;

CREATE TABLE IF NOT EXISTS `song` (
  `song_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `artist_id` INT NOT NULL,
  `genre` VARCHAR(50),
  `language` VARCHAR(50),
  `release_date` DATE,
  `peak_popularity_date` DATE,
  `country_where_popular` VARCHAR(50),
  PRIMARY KEY (`song_id`),
  CONSTRAINT `artist_id` FOREIGN KEY (artist_id) REFERENCES artist (artist_id)
);

-- -----------------------------------------------------
-- Table `artist`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `artist` ;

CREATE TABLE IF NOT EXISTS `artist` (
  `artist_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `country_where_popular` VARCHAR(50),
  PRIMARY KEY (`artist_id`)
);

-- -----------------------------------------------------
-- Insert statements
-- -----------------------------------------------------

insert into meme(name, peak_popularity_date, song_id) values
('Keyboard Cat', '2009-05-01', 1),
('Nyan Cat', '2011-06-01', 2),
('HEYYEYAAEYAAAEYAEYAA', '2012-06-01', 3),
('Rickrolling', '2008-04-01', 4),
('Spooky Scary Skeletons', '2018-10-01', 5),
('Tunak Tunak Tun', '2006-05-01', 6),
('Numa Numa', '2005-04-01', 7),
('Darude Sandstorm', '2014-07-01', 8),
('Gangnam Style', '2012-10-01', 9),
('What Does The Fox Say', '2013-10-01', 10),
('Shooting Stars', '2017-02-01', 11),
('Ahhhhh meme', '2017-11-01', 12),
('Ladies and gentlemen, we got him', '2018-12-01', 13),
('All Star', '2017-05-01', 14),
('Redbone', '2017-06-01', 15),
('We Are Number One', '2016-12-01', 16),
('Mans Not Hot', '2017-11-01', 17),
('Gucci Gang', '2017-12-01', 18),
('Im Already Tracer', '2018-10-01', 19),
('Running Man', '2016-05-01', 20),
('Hit or Miss', '2018-12-01', 21);

insert into song(name, artist_id, genre, language, release_date, peak_popularity_date, country_where_popular) values
('Keyboard Cat', 1, 'electronic', null, '2007-06-01', '2009-05-01', 'United States'),
('Nyanyanyanyanyanyanya!', 2, 'electronic', 'Japanese', '2010-07-25', '2011-06-01', 'Chile'),
('Whats Up', 3, 'alternative rock', 'English', '1993-06-03', '2017-03-01', 'Nicaragua'),
('Never Gonna Give You Up', 4, 'pop', 'English', '1987-07-27', '2008-04-01', 'United States'),
('Spooky Scary Skeletons', 5, 'pop rock', 'English', '1996-08-20', '2018-10-01', 'United States'),
('Tunak Tunak Tun', 6, 'bhangra', 'Punjabi', '1998-01-01', '2006-05-01', 'India'),
('Dragostea Din Tei', 7, 'eurodance', 'Romanian', '2003-07-09', '2004-07-01', 'Romania'),
('Sandstorm', 8, 'trance', 'null', '1999-10-26', '2014-07-01', 'Australia'),
('Gangnam Style', 9, 'k-pop', 'Korean', '2012-07-15', '2012-10-01', 'Vietnam'),
('The Fox (What Does the Fox Say?)', 10, 'edm', 'English', '2013-09-03', '2013-10-01', 'Sweden'),
('Shooting Stars', 11, 'synthpop', 'English', '2009-08-07', '2017-03-01', 'Philippines'),
('Big Enough', 12, 'alternative', 'English', '2017-08-01', '2017-11-01', 'United States'),
('Baby Im Yours', 13, 'house', 'English' , '2012-09-01', '2018-11-29', 'Mexico'),
('All Star', 14, 'rock', 'English', '1999-04-04', '2017-03-01', 'Azerbaijan'),
('Redbone', 15, 'R&B', 'English', '2016-11-17',	'2017-07-01', 'United States'),
('We Are Number One', 16, 'electronic', 'English', '2014-10-3',	'2016-12-01', 'Australia'),
('Mans Not Hot', 17, 'grime', 'English', '2017-09-22', '2017-12-01', 'England'),
('Gucci Gang', 18, 'hip hop', 'English', '2017-08-31', '2017-12-01', 'United States'),
('No Mercy', 19, 'pop', 'English', '2017-01-12', '2018-11-04', 'Russia'),
('My Boo', 20, 'R&B', 'English', '1996-05-26', '2016-05-01', 'Philippines'),
('Mia Khalifa', 21, 'pop', 'English', '2018-03-04',	'2018-10-28', 'Lebanon');

insert into artist(name, country_where_popular) values
('Keyboard Cat', 'United States'),
('daniwell', 'Japan'),
('4 Non Blondes', 'United States'),
('Rick Astley', 'England'),
('Andrew Gold', 'United States'),
('Daler Mehndi', 'India'),
('O-Zone', 'Romania'),
('Darude', 'Finland'),
('Psy', 'Korea'),
('Ylvis', 'Norway'),
('Bag Raiders', 'Australia'),
('Kirin J Callinan', 'France'),
('Breakbot', 'France'),
('Smash Mouth', 'United States'),
('Childish Gambino', 'United States'),
('LazyTown', 'Iceland'),
('Big Shaq', 'England'),
('Lil Pump', 'United States'),
('The Living Tombstone', 'Russia'),
('Ghost Town DJs', 'United States'),
('iLOVEFRiDAY', 'United States');


-- -----------------------------------------------------
-- Important queries
-- -----------------------------------------------------

-- What is the most popular language with music in memes?
select language, count(language) from meme join song using (song_id) group by language;

-- How many songs peak popularity date are in the same year as the meme peak popularity?
select m.name as meme_name, m.peak_popularity_date as meme_popularity, s.name as song_name, s.peak_popularity_date as song_popularity, s.release_date as release_date
from meme as m join song as s using (song_id) 
where s.peak_popularity_date between (m.peak_popularity_date - interval 1 year) 
and (m.peak_popularity_date + interval 1 year);

-- How many songs peak popularity date are in the same year as the meme peak popularity and were not released within a year of song popularity?
select m.name as meme_name, m.peak_popularity_date as meme_popularity, s.name as song_name, s.peak_popularity_date as song_popularity, s.release_date as release_date
from meme as m join song as s using (song_id) 
where s.peak_popularity_date between (m.peak_popularity_date - interval 1 year) 
and (m.peak_popularity_date + interval 1 year)
and s.release_date < m.peak_popularity_date - interval 1 year;

-- How many songs have a country where its most popular that’s not the United States?
select count(*) from meme join song using (song_id) where country_where_popular not like 'United States';

select country_where_popular, count(country_where_popular) from meme join song using (song_id) group by country_where_popular;
-- United States is popular
select count(*) from meme join song using (song_id) where country_where_popular like 'United States';

select count(*) from meme join song using (song_id) group by country_where_popular not like 'United States';

-- How many artists have a country where they are most popular that’s not the United States?
select count(*) from meme join song using (song_id) join artist as a using (artist_id) where a.country_where_popular not like 'United States';

select a.country_where_popular, count(a.country_where_popular) from meme join song using (song_id) join artist as a using (artist_id) group by a.country_where_popular;

-- What is the most popular genre with music in memes?
select genre, count(genre) from meme join song using (song_id) group by genre;





