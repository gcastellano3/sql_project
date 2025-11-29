-- Creating a database to create all the 

CREATE DATABASE sql_project
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

-- Using database created from now on

USE sql_project;

CREATE TABLE occupations (
    conceptType VARCHAR(100),
    conceptUri TEXT,
    iscoGroup INT,
    preferredLabel TEXT,
    altLabels TEXT,
    hiddenLabels TEXT,
    status VARCHAR(50),
    regulatedProfessionNote TEXT,
    inScheme TEXT,
    description TEXT,
    code VARCHAR(50)
);

LOAD DATA INFILE '/ruta/absoluta/occupations_en.csv'
INTO TABLE occupations
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
ESCAPED BY '\\'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
    conceptType,
    conceptUri,
    iscoGroup,
    preferredLabel,
    altLabels,
    hiddenLabels,
    status,
    regulatedProfessionNote,
    inScheme,
    description,
    code
);
