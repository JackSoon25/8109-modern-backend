-- create new database

create database swimming_coach;

-- show all databases on the server
show databases; 

-- create table: tells SQL to create a new table
-- followed by the name of the table to create
CREATE TABLE parents (
    -- <name of colum> < data type> <extra options>
    parent_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL
) ENGINE = INNODB;

-- show all the  tbles in the current ative database
SHOW TABLES;

CREATE TABLE students (
    student_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    parent_id INT UNSIGNED NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45),
    dob DATETIME NOT NULL,
    swimming_level TINYINT NOT NULL
) ENGINE = INNODB;

-- add a constraint
-- the contraint that we are adding is the foreign key relationship
ALTER TABLE students
    ADD CONSTRAINT fk_parents_students
        FOREIGN KEY(parent_id) REFERENCES parents(parent_id)
        ON DELETE CASCADE  
        ON UPDATE RESTRICT; -- Cannot delete the primary key (default)


CREATE TABLE locations (
    location_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    address VARCHAR(255) NOT NULL,
    open_at TIME,
    close_at TIME
) ENGINE = INNODB;

-- HOW TO CHANGE A TABLE
-- ALTER table <TABLE NAME> add column <name of new column> < data type> <optins>
ALTER TABLE locations  ADD COLUMN name VARCHAR(255) NOT NULL;

--how to modify a column
ALTER TABLE locations MODIFY COLUMN address VARCHAR(1000) NOT NULL;

-- Drop columns (delete columns)
ALTER TABLE locations DROP COLUMN open_at;
ALTER TABLE locations DROP COLUMN close_at;

-- ALERT TABLE is subjected to constraints (such as foreign key constraints)

-- Delete an entire table
DROP TABLE locations;