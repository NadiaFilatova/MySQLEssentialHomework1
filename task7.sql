CREATE DATABASE IF NOT EXISTS Cars;
USE Cars;
CREATE TABLE IF NOT EXISTS car
(
    id              INT PRIMARY KEY AUTO_INCREMENT,
    marc            VARCHAR(50) NOT NULL,
    model           VARCHAR(50) NOT NULL,
    engine_capacity DOUBLE      NOT NULL,
    price           INT         NOT NULL,
    maximum_speed   DOUBLE
);
INSERT INTO car (marc, model, engine_capacity, price, maximum_speed)
VALUES ('BMW', '4C', 2.5, 21000, 320),
       ('BMW', '5C', 1.2, 26000, 210),
       ('BMW', '8C', 1.5, 24000, 230),
       ('BMW', '1C', 2.0, 29000, 250)
;