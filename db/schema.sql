DROP DATABASE IF EXISTS gpqptu643a8orodz;
CREATE DATABASE gpqptu643a8orodz;
USE gpqptu643a8orodz;

CREATE TABLE burgers (
    id INT NOT NULL AUTO_INCREMENT,
    burger_name VARCHAR(50) NOT NULL,
    devoured BOOLEAN DEFAULT false,
    PRIMARY KEY(id)
);

INSERT INTO burgers (burger_name, devoured) VALUES ('Hamburger', true);
INSERT INTO burgers (burger_name, devoured) VALUES ('Cheeseburger', true);
INSERT INTO burgers (burger_name, devoured) VALUES ('Veggieburger', false);