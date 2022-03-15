-- very easy
SELECT * FROM Mysql_chall.cars;
-- CREATE TABLE `Mysql_chall`.`new_table` (
  -- `car_id` INT NOT NULL,
  -- `car_model` VARCHAR(45) NOT NULL,
  -- `car_year` VARCHAR(45) NOT NULL,
  -- `car_make` VARCHAR(45) NOT NULL AFTER `car_year`;
  -- PRIMARY KEY (`car_id`));
  -- INSERT INTO `Mysql_chall`.`cars` (`car_id`, `car_model`, `car_year`, `car_make`) VALUES ('1', 'Porshe', 'Cayenne', '2022');
-- INSERT INTO `Mysql_chall`.`cars` (`car_id`, `car_model`, `car_year`, `car_make`) VALUES ('2', 'Corvette', 'Cheverlote', '2021');
-- INSERT INTO `Mysql_chall`.`cars` (`car_id`, `car_model`, `car_year`, `car_make`) VALUES ('3', 'Cybertruck', 'Tesla', '2023');
-- INSERT INTO `Mysql_chall`.`cars` (`car_id`, `car_model`, `car_year`, `car_make`) VALUES ('4', 'M3', 'Bmw', '2022');
-- INSERT INTO `Mysql_chall`.`cars` (`car_id`, `car_model`, `car_year`, `car_make`) VALUES ('5', 'Canyon', 'GMC', '2019');
-- Easy
SELECT * FROM Mysql_chall.book;
-- CREATE TABLE `Mysql_chall`.`book` (
-- `book_id` INT NOT NULL,
-- `Title` VARCHAR(45) NOT NULL,
--  `Publish Date` VARCHAR(45) NOT NULL,
-- ` FirstName` VARCHAR(45) NOT NULL,
-- `LastName` VARCHAR(45) NOT NULL,
--  PRIMARY KEY (`book_id`));
-- INSERT INTO `Mysql_chall`.`book` (`book_id`, `Title`, `Publish Date`, ` FirstName`, `LastName`) VALUES ('1', 'The Great Gatsby', 'April 10, 1925', 'Scott', 'Fitzgerald');
-- INSERT INTO `Mysql_chall`.`book` (`book_id`, `Title`, `Publish Date`, ` FirstName`, `LastName`) VALUES ('2', 'Harper', 'July 11, 1960', 'Harper', 'Lee');
-- INSERT INTO `Mysql_chall`.`book` (`book_id`, `Title`, `Publish Date`, ` FirstName`, `LastName`) VALUES ('3', 'Harry Potter', 'June26, 1997', 'J.K', 'Rowling');
-- INSERT INTO `Mysql_chall`.`book` (`book_id`, `Title`, `Publish Date`, ` FirstName`, `LastName`) VALUES ('4', 'The Hobbit', 'September 21, 1937', 'J.R.R', 'Tolklen');
-- INSERT INTO `Mysql_chall`.`book` (`book_id`, `Title`, `Publish Date`, ` FirstName`, `LastName`) VALUES ('5', 'Animal Farm', 'August 17, 1945', 'George', 'Orwell');
-- INSERT INTO `Mysql_chall`.`book` (`book_id`, `Title`, ` FirstName`, `LastName`) VALUES ('6', 'In Search of Lost Time', 'Marcel', 'Proust');

--Medium
SELECT * FROM Mysql_chall.movie;
-- CREATE TABLE `Mysql_chall`.`movie` (
--  `movie_id` INT NOT NULL,
--  `Title` VARCHAR(45) NOT NULL,
-- `Release Date` VARCHAR(45) NOT NULL,
-- `Rating` VARCHAR(45) NOT NULL,
-- PRIMARY KEY (`movie_id`));
-- INSERT INTO `Mysql_chall`.`movie` (`movie_id`, `Title`, `Release Date`, `Rating`) VALUES ('2', 'The Father', 'January 27, 2020', '4.7');
-- INSERT INTO `Mysql_chall`.`movie` (`movie_id`, `Title`, `Release Date`, `Rating`) VALUES ('3', 'Spider Man: No Way Home', 'December17, 2021', '4.8');
-- INSERT INTO `Mysql_chall`.`movie` (`movie_id`, `Title`, `Release Date`, `Rating`) VALUES ('4', 'Pig', 'July 16, 2021', '3.7');
-- INSERT INTO `Mysql_chall`.`movie` (`movie_id`, `Title`, `Release Date`, `Rating`) VALUES ('5', 'Coda', 'August 13, 2021', '4.9');
-- INSERT INTO `Mysql_chall`.`movie` (`movie_id`, `Title`, `Release Date`, `Rating`) VALUES ('6', 'west side Story', 'December 10, 2021', '4.3');
-- INSERT INTO `Mysql_chall`.`movie` (`movie_id`, `Title`, `Release Date`, `Rating`) VALUES ('7', 'A Quite Place Part 2', 'May 28,2021', '4.3');
-- INSERT INTO `Mysql_chall`.`movie` (`movie_id`, `Title`, `Release Date`, `Rating`) VALUES ('8', 'Flee', 'December 3, 2021', '4.6');
-- INSERT INTO `Mysql_chall`.`movie` (`movie_id`, `Title`, `Release Date`, `Rating`) VALUES ('9', 'Mass', 'October 8, 2021', '4.5');
-- INSERT INTO `Mysql_chall`.`movie` (`movie_id`, `Title`, `Release Date`, `Rating`) VALUES ('10', 'Luca', 'June 18, 2021', '4.6');

--Hard
SELECT * FROM Mysql_chall.movie;
-- HARD
-- Made copy of medium
CREATE TABLE movies(
 id INT NOT NULL AUTO_INCREMENT,
 Title VARCHAR(100),
 Release_Date DATE,
 Rating VARCHAR(100),
 PRIMARY KEY (id)
  );
-- Added two separate columns for director first & last names
 ALTER TABLE movies
 ADD COLUMN director_first VARCHAR(100);
 ADD COLUMN director_last VARCHAR(100) ;
-- Filled in the table with values one by one for the directors names
 UPDATE movies
 SET director_first = 'Tim', director_last = 'willson'
 WHERE movie_id = 10;
-- Combined the 2 columns together
 ALTER TABLE Movies ADD COLUMN fullname VARCHAR(50);
 UPDATE movies SET fullname = CONCAT(director_first, ' ', director_last )
 FROM movies
-- Put the list of last names in alphabetical order
 SELECT director_last FROM Movies ORDER BY director_last ASC
-- Removed the the last names that had R-Z 
 DELETE FROM Movies WHERE id = 1
 DELETE FROM Movies WHERE id = 10
-- Only selected the first 3 id
 SELECT * FROM Movies LIMIT 3

 --very hard