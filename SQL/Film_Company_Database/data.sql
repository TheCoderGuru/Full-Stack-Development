DROP DATABASE IF EXISTS film_company;
CREATE DATABASE film_company;
USE film_company;

CREATE TABLE record_label(
  record_label_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  record_name VARCHAR(30) NOT NULL,
  year_established YEAR,
  PRIMARY KEY(record_label_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
CREATE TABLE music_composer(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  label_registered INT UNSIGNED,
  CONSTRAINT record_fk_1 FOREIGN KEY (label_registered) REFERENCES record_label(record_label_id),
  PRIMARY KEY(id)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  

CREATE TABLE films(
	film_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    film_name VARCHAR(30) NOT NULL,
    release_year YEAR,
  	composer_id INT UNSIGNED,
    PRIMARY KEY ( film_id ),
    CONSTRAINT composer_fk_1 FOREIGN KEY ( composer_id ) REFERENCES music_composer ( id )
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
create table artist(
  artist_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  PRIMARY KEY(artist_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

create table albums(
album_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
album_name VARCHAR(30),
duration FLOAT,
release_year VARCHAR(30),
composer INT UNSIGNED,
film INT UNSIGNED,
artist INT UNSIGNED,
PRIMARY KEY(album_id),
CONSTRAINT composer_fk_2 FOREIGN KEY (composer) REFERENCES film_company.music_composer(id),
CONSTRAINT films_fk_1 FOREIGN KEY (film) REFERENCES film_company.films(film_id),
CONSTRAINT artist_fk_1 FOREIGN KEY(artist) REFERENCES film_company.artist(artist_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Show the total number of films for each music composer.

SELECT
CONCAT(m.first_name, ' ', m.last_name) as 'Full Name',
COUNT(f.film_id) as 'Number of Films'
FROM films f
INNER JOIN music_composer m on m.id = f.composer_id
GROUP BY CONCAT(m.first_name, ' ', m.last_name);




-- Show all the films ordered by release_date and film name in ascending order.

SELECT
film_id AS 'Film Number',
film_name AS 'Film Name',
release_year AS 'Year Released',
composer_id AS 'Composer Number'
FROM film_company.films
ORDER BY release_year ASC, film_name ASC;


INSERT INTO film_company.music_composer(first_name, last_name) VALUES('Abhimann', 'Roy');
INSERT INTO film_company.music_composer(first_name, last_name) VALUES('Aby Tom', 'Cyriac');
INSERT INTO film_company.music_composer(first_name, last_name) VALUES('Ajay', 'Atul');
INSERT INTO film_company.music_composer(first_name, last_name) VALUES('Alphons', 'Joseph');
INSERT INTO film_company.music_composer(first_name, last_name) VALUES('Amaal', 'Malik');
INSERT INTO film_company.music_composer(first_name, last_name) VALUES('Amit', 'Trivedi');

insert into film_company.films(film_name, release_year, composer_id) VALUES('Rugged', 2018, 1);
insert into film_company.films(film_name, release_year, composer_id) values('Taj Mahal', 2008, 1);
insert into film_company.films(film_name, release_year, composer_id) values('Murali Meets Meera', 2011, 1);
insert into film_company.films(film_name, release_year, composer_id) values('Chanaksha', null, 1);
insert into film_company.films(film_name, release_year, composer_id) values('Ravana', null, 1);
insert into film_company.films(film_name, release_year, composer_id) values('Deal Raja', 2016, 1);

insert into film_company.films(film_name, release_year, composer_id) values('Pavada', 2016, 2);
insert into film_company.films(film_name, release_year, composer_id) values('Shikamani', 2016, 2);
insert into film_company.films(film_name, release_year, composer_id) values('Sakalakalashala', 2019, 2);

insert into film_company.films(film_name, release_year, composer_id) values('Thugs of Hindostan', 2018, 3);
insert into film_company.films(film_name, release_year, composer_id) values('Panipat', 2019, 3);
insert into film_company.films(film_name, release_year, composer_id) values('Sairat', 2016, 3);
insert into film_company.films(film_name, release_year, composer_id) values('Jogwa', 2009, 3);
insert into film_company.films(film_name, release_year, composer_id) values('Agneepath', 2012, 3);
insert into film_company.films(film_name, release_year, composer_id) values('Brothers', 2015, 3);
insert into film_company.films(film_name, release_year, composer_id) values('Dhadak', 2018, 3);

insert into film_company.artist(first_name, last_name) values("Vyasa", "Raj");
INSERT INTO film_company.record_label(record_name, year_established) values("T-Series", 1983); 
insert into film_company.albums(album_name, duration, release_year, composer, film,  artist) values("Abcd Andre", 4.28, 2020, 1, 1, 1);

-- Count how many films have the music composer as Ajay Atul
select 
count(*) as "Number of Films"
from film_company.films f
inner join music_composer m on m.id = f.composer_id
where m.first_name = 'Ajay';

