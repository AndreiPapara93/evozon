CREATE SCHEMA evozon ;
USE evozon;

CREATE TABLE category (
  category_id int NOT NULL AUTO_INCREMENT,
  name varchar(45) NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE product (
  product_id int NOT NULL AUTO_INCREMENT,
  name varchar(45) NOT NULL,
  code varchar(45) NOT NULL,
  creationDate DATE NOT NULL,
  category_id int NOT NULL,
  PRIMARY KEY (product_id),
  KEY fk_category (category_id),
  CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category (category_id)
);

INSERT INTO category value(1,"Default");