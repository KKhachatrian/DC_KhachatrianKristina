INSERT INTO patients (name, gender, email, phone_number) VALUES
('Yaroslav Stovpoviy', 'Male', 'ystovpoviy@gmail.com', '+380509387547'),
('Mariya Golubenko', 'Female', 'mgolubenko@gmail.com', '+380987654321'),
('Arseniy Filchenko', 'Male', 'afilchenko@gmail.com', '+380775689306'),
('Olena Yatsenko', 'Female', 'oyatsenko@gmail.com', '+380957638476'),
('Denis Milevskiy', 'Male', 'dmilevskiy@gmail.com', '+380476546885'),
('Viktoriya Kondatyuk', 'Female', 'vkondratyuk@gmail.com', '+380503965368');

INSERT INTO doctors (name, gender, specialization, email, phone_number) VALUES
('Mariya Shustova', 'Female', 'Gastroenterology', 'mshustova@gmail.com', '+380679375468'),
('Viktor Panchenko', 'Male', 'Psychiatry', 'vpanchenko@gmail.com', '+380508752671'),
('Oleksandr Zaskaleta', 'Male', 'Cardiology', 'ozaskaleta@gmail.com', '+380597643575'),
('Vita Zinchenko', 'Female', 'Immunology', 'vzinchenko@gmail.com', '+380447785368'),
('Saveliy Muzichko', 'Male', 'Pediatric', 'smuzichko@gmail.com', '+380576532789'),
('Mariya Salatska', 'Female', 'Cardiology', 'msalatska@gmail.com', '+380668376547');

INSERT INTO appointments(patient_id, appointment_date, doctor_id, disease_name) VALUES
(2, '2023-04-22', 3, 'Congenital heart disease'),
(5, '2025-02-16', 4, 'Immunodeficiency'),
(3, '2022-06-17', 6, 'Arrhythmia'),
(6, '2021-07-19', 3, 'None'),
(5, '2024-08-18', 2, 'Bipolar disorder'),
(4, '2024-08-30', 1, 'None');

INSERT INTO descriptions(description_id, appointment_id, description) VALUES
(1, 1, 'Initial heart examination and ECG'),
(2, 5, 'Immunology consultation and blood test'),
(3, 3, 'ECG monitoring and arrhythmia diagnosis'),
(4, 6, 'Routine check-up'),
(5, 5, 'Mental health evaluation and mood tracking'),
(6, 4, 'Routine check-up');

INSERT INTO bills (bill_id, description_id, amount, payment_method) VALUES
(1, 6, 899.00, 'Insurance'),
(2, 5, 1785.99, 'Credit Card'),
(3, 4, 1599.99, 'Cash'),
(4, 3, 2800.00, 'Online Payment'),
(5, 2, 3200.00, 'Insurance'),
(6, 1, 180.00, 'Cash');



