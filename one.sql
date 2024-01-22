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

-- for inserting values
INSERT INTO bands_real (name)
VALUES('BAND OF DEATH');

INSERT INTO bands_real (name)
VALUES('AVENGERS'),('WHITE ANGELS'),('bespoken');

-- querying

SELECT * FROM bands_real;

SELECT * FROM bands_real LIMIT 2;

-- only col
SELECT name FROM bands_real;

SELECT id AS 'ID', name AS 'Band Name'
FROM bands_real; 
-- ordering

SELECT * FROM bands_real ORDER BY name ASC;

---------------------------------------------------

-- Corrected data for inserting values
INSERT INTO bands_real (name) VALUES ('BAND OF DEATH');
INSERT INTO bands_real (name) VALUES ('AVENGERS'),('WHITE ANGELS'),('BESPOKEN'),('Spoked');

-- Now you can insert albums with valid band_id values
INSERT INTO albums (name, release_year, band_id) 
VALUES ('THE SOUND OF MUSIC', 1980, 1),
    ('DRILL OF HEARTS', 2000, 2),
    ('Makebelive', 1987, 3);



INSERT INTO albums (name, release_year, band_id)
VALUES ('THE SOUND OF MUSIC',1980,1),
		('DRILL OF HEARTS',2000,2),
        ('Makebelive',1987,3),
        ('Cursed rock',1959,4),
        ('Alaive',1999,5);
        
SELECT DISTINCT * FROM albums;         
SELECT DISTINCT name FROM albums;

