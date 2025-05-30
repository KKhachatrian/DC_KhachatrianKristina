CREATE TABLE patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40),
    gender VARCHAR(20),
    email VARCHAR(50),
    phone_number VARCHAR(15)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    gender VARCHAR(20),
    specialization VARCHAR(50),
    email VARCHAR(50),
    phone_number VARCHAR(15)
);

CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    appointment_date DATE,
    doctor_id INT,
    disease_name VARCHAR(60),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

CREATE TABLE descriptions (
    description_id INT PRIMARY KEY,
    appointment_id INT,
    description VARCHAR(100),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);

CREATE TABLE bills (
    bill_id INT PRIMARY KEY,
    description_id INT,
    amount DECIMAL(10, 2),
    payment_method VARCHAR(20),
    FOREIGN KEY (description_id) REFERENCES descriptions(description_id)
);
