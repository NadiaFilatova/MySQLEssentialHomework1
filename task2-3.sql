CREATE DATABASE IF NOT EXISTS MyDB;

USE MyDB;

CREATE TABLE IF NOT EXISTS employee
(
    id    INT PRIMARY KEY AUTO_INCREMENT,
    name  VARCHAR(30) NOT NULL,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS salary
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    salary      DECIMAL     NOT NULL,
    position    VARCHAR(30) NOT NULL,
    employee_id INT         NOT NULL,
    CONSTRAINT employee_id_salary_id_fk FOREIGN KEY (employee_id) REFERENCES employee (id)
);

CREATE TABLE IF NOT EXISTS info
(
    id            INT PRIMARY KEY AUTO_INCREMENT,
    family_status VARCHAR(256),
    birth_date    DATE,
    birth_place   VARCHAR(256),
    employee_id   INT NOT NULL,
    CONSTRAINT employee_id_info_id_fk FOREIGN KEY (employee_id) REFERENCES employee (id)
);

INSERT INTO employee(id, name, phone)
VALUES (1, 'Nastya', '+380961122333');
INSERT INTO employee(id, name, phone)
VALUES (2, 'Vasya', '+380734455777');
INSERT INTO employee(id, name, phone)
VALUES (3, 'Petro', '+380989833542');
INSERT INTO employee(id, name, phone)
VALUES (4, 'Kolya', '+380509901285');
INSERT INTO employee(id, name, phone)
VALUES (5, 'Masha', '+380660927692');

INSERT INTO salary(salary, position, employee_id)
VALUES (4000, 'Secretary', 1);
INSERT INTO salary(salary, position, employee_id)
VALUES (20000, 'Developer', 2);
INSERT INTO salary(salary, position, employee_id)
VALUES (9000, 'Driver', 3);
INSERT INTO salary(salary, position, employee_id)
VALUES (13000, 'Cleaner', 4);
INSERT INTO salary(salary, position, employee_id)
VALUES (10000, 'CTO', 5);

INSERT INTO info(family_status, birth_date, birth_place, employee_id)
VALUES ('Married', '2000-1-15', 'Kyiv', 1);
INSERT INTO info(family_status, birth_date, birth_place, employee_id)
VALUES ('Single', '1995-8-25', 'Mykolaiv', 2);
INSERT INTO info(family_status, birth_date, birth_place, employee_id)
VALUES ('Married', '1985-10-23', 'Kyiv', 3);
INSERT INTO info(family_status, birth_date, birth_place, employee_id)
VALUES ('Single', '1990-9-10', 'Lviv', 4);
INSERT INTO info(family_status, birth_date, birth_place, employee_id)
VALUES ('Single', '2002-12-22', 'Lutsk', 5);

