CREATE DATABASE Record_Company;
USE Record_Company;

CREATE TABLE bands_real (
    id INT NOT NULL AUTO_INCREMENT,	
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE albums (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands_real(id)
);

DROP TABLE bands;

INSERT INTO bands_real name
