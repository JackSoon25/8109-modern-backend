
-- DML: insert row
INSERT INTO parents (first_name, last_name) VALUES ("Ah Kow", "Tan");

-- DML: insert a row with foreign key dependency
INSERT INTO students (parent_id, first_nmae, last_name, dob, swimming_level) VALUES (1, "Ah Mew", TAN", 2020-06-09", 1);

-- insert multiple rows at the same time
INSERT INTO parents (first_name, last_name) VALUES("John", "Snow"), ("Adam", "Smith"), ("Tony","Stare");

-- update a table
-- UPDATE <name of table> SET <col1>=<value1>, <col2>=<value2>... WHERE <cond>
UPDATE parents SET first_name="John" WHERE parent_id=3;

-- DELETE FROM <parents> WHERE <cond>;
DELETE FROM parents WHERE parent_id = 3;