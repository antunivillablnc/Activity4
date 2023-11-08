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

CREATE TABLE appointments(
appointid SERIAL PRIMARY KEY,
animalid INT,
FOREIGN KEY (animalid) references animals(animalid),
appointdate DATE,
reason VARCHAR(255)
);

CREATE TABLE doctors(
	doctorid SERIAL PRIMARY KEY,
	dfirstname VARCHAR(50),
	dlastname VARCHAR(50),
	specialty VARCHAR(100),
	phone VARCHAR(15),
	email VARCHAR(100)
	);

    CREATE TABLE invoice
(
	invoiceid SERIAL PRIMARY KEY,
	appointid INT,
	FOREIGN KEY (appointid) references appointments(appointid),
	totalamount NUMERIC(10,2),
	paymentdate TIME
	
);

CREATE TABLE medicalrecords(
	recordid SERIAL PRIMARY KEY,
	animalid INT,
	FOREIGN KEY (animalid) references animals(animalid),
	recorddate TIMESTAMP,
	doctorid INT,
	FOREIGN KEY (doctorid) REFERENCES doctors(doctorid),
	diagnosis TEXT,
	prescription TEXT,
	notes TEXT
);	