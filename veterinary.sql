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

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES
    (1, 'Juan', 'Dela Cruz', '123 Main St, Manila', '123-456-7890', 'juan@example.com'),
    (2, 'Maria', 'Santos', '456 Eim St, Quezon City', '987-654-3210', 'maria@example.com'),
    (3, 'Antonio', 'Gonzales', '789 Oak St, Cebu', '555-123-45678', 'antonio@example.com'),
    (4, 'Elena', 'Rodriguez', '345 Pine St, Davao', '777-888-9999', 'elena@example.com'),
    (5, 'Ricardo', 'Lim', '987 Cedar St, Makati', '222-333-4444', 'ricardo@example.com'),
    (6, 'Isabela', 'Reyes', '111 Acacia St, Pasig', '999-000-1111', 'isabel@example.com'),
    (7, 'Luis', 'Torres', '555 Maple St, Mandaluyong', '123-555-7777', 'luis@example.com'),
    (8, 'Carmen', 'Fernandez', '222 Birch St, Taguig', '333-222-1111', 'carmen@example.com'),
    (9, 'Pedro', 'Santillian', '888, Spruce St, Bacolod', '888-777-3333', 'pedro@example.com'),
    (10, 'Sofia', 'Villianueva', '777 Walnut St, Iloilo', '111-999-3333', 'sofia@example.com');