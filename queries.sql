SELECT 
    p.name AS patient_name,
    p.email AS patient_email,
    p.phone_number AS patient_phone,
    d.name AS doctor_name,
    d.email AS doctor_email,
    d.phone_number AS doctor_phone
FROM appointments a
JOIN patients p ON a.patient_id = p.patient_id
JOIN doctors d ON a.doctor_id = d.doctor_id;

SELECT *
FROM appointments 
WHERE disease_name = 'None';

WITH PatientAppointments AS (
    SELECT 
        p.patient_id, 
        p.name,
        COUNT(a.appointment_id) AS total_appointments
    FROM patients p
    LEFT JOIN appointments a ON p.patient_id = a.patient_id
    GROUP BY p.patient_id
)


SELECT *
FROM PatientAppointments
HAVING total_appointments = 0; 

SELECT 
    b.bill_id,
    b.amount,
    b.payment_method,
    d.description_id,
    d.description
FROM bills b
JOIN descriptions d ON b.description_id = d.description_id
ORDER BY d.description_id;

SELECT * FROM bills
LIMIT 2;

SELECT name AS full_name, 'Patient' AS role FROM patients
UNION ALL
SELECT name AS full_name, 'Doctor' AS role FROM doctors;
SELECT phone_number AS number, 'Patient' AS role FROM patients
UNION ALL
SELECT phone_number AS number, 'Doctor' AS role FROM doctors;
