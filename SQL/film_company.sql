CREATE DATABASE film_company;
USE film_company;

CREATE TABLE films(
film_id INT NOT NULL AUTO_INCREMENT,
film_name VARCHAR(30),
release_date TIMESTAMP,
composer_id INT,
PRIMARY KEY( film_id ),
FOREIGN KEY (composer_id) REFERENCES music_composer(id)
);

CREATE TABLE music_composer(
id INT NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30),
last_name VARCHAR(30),
PRIMARY KEY( id )
);
