DROP TABLE students;
DROP TABLE houses;

CREATE TABLE students (
  id serial4 primary key,
  first_name varchar(255),
  last_name varchar(255),
  house varchar(255),
  age int2
);

CREATE TABLE houses (
  id serial4 primary key,
  name varchar(255),
  logo varchar(255),

);
