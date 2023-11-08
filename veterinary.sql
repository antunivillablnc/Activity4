CREATE DATABASE Veterinary;

CREATE TABLE owners(
    ownerid SERIAL PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(50),
    email VARCHAR(100)

);

CREATE TABLE animals(
	animalid SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
	ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);