DROP DATABASE IF EXISTS AwesomeBusiness;

CREATE DATABASE AwesomeBusiness;

USE AwesomeBusiness;

CREATE TABLE Category (
  id   INT PRIMARY KEY AUTO_INCREMENT,
  NAME VARCHAR(255) NOT NULL
);

CREATE TABLE Product (
  id          INT PRIMARY KEY AUTO_INCREMENT,
  code        VARCHAR(255) NOT NULL,
  name        VARCHAR(255) NOT NULL,
  price       FLOAT        NOT NULL,
  category_id INT          NOT NULL,
  FOREIGN KEY (category_id) REFERENCES Category (id)
);

INSERT INTO Category VALUES (1, 'Guitars');
INSERT INTO Category VALUES (2, 'Basses');
INSERT INTO Category VALUES (3, 'Drums');

INSERT INTO Product VALUES (1, 'strat', 'Fender Stratocaster', 699, 1);
INSERT INTO Product VALUES (2, 'les_pau', 'Gibson Les Paul', 1199, 1);
INSERT INTO Product VALUES (3, 'sg', 'Gibson SG', 2517, 1);
INSERT INTO Product VALUES (4, 'washburn', 'Washburn D10S', 299, 1);
INSERT INTO Product VALUES (5, 'rodriguez', 'Rodriguez Caballero 11', 699, 1);

INSERT INTO Product VALUES (6, 'precision', 'Fender Precision', 799, 2);
INSERT INTO Product VALUES (7, 'hofner', 'Hofner Icon', 499, 2);

INSERT INTO Product VALUES (8, 'Custom', 'Tour Custom', 3200, 3);
INSERT INTO Product VALUES (9, '50Kit', '50 Aniversary Kit', 2501, 3);
INSERT INTO Product VALUES (10, 'phx', 'PHX', 1899, 3);
