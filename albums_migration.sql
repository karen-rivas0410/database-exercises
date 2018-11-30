USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ARTIST VARCHAR(240),
    NAME VARCHAR (240) NOT NULL,
    RELEASE_DATE INT,
    SALES FLOAT,
    GENRE VARCHAR(240)
);


-- //keep shit organized aka keep stuff uniformed for varchar and all the types//