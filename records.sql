INSERT INTO Departments (department_name, description) VALUES 
('Cardiology', 'Heart and cardiovascular care'),
('Neurology', 'Brain, spinal cord, and nervous system'),
('Pediatrics', 'Medical care for infants, children, and adolescents');

INSERT INTO Doctors (first_name, last_name, specialization, department_id, phone, email, consultation_fee) VALUES 
('Alice', 'Johnson', 'Cardiologist', 1, '9876543210', 'alice.j@hospital.com', 150.00),
('Robert', 'Smith', 'Neurologist', 2, '9876543211', 'robert.s@hospital.com', 200.00),
('Emily', 'Davis', 'Pediatrician', 3, '9876543212', 'emily.d@hospital.com', 100.00);

INSERT INTO Patients (first_name, last_name, gender, dob, phone, email, address) VALUES 
('John', 'Doe', 'Male', '1990-05-12', '9123456789', 'john.doe@gmail.com', '123 Main St, Cityville'),
('Jane', 'Smith', 'Female', '1985-08-22', '9123456790', 'jane.smith@gmail.com', '456 Oak Rd, Townsville');

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, appointment_time, status) VALUES 
(1, 1, '2026-10-15', '10:30:00', 'Scheduled'),
(2, 2, '2026-10-16', '14:00:00', 'Scheduled');

INSERT INTO Billing (patient_id, appointment_id, total_amount, payment_status) VALUES 
(1, 1, 150.00, 'Paid'),
(2, 2, 200.00, 'Pending');

SELECT 
    a.appointment_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    CONCAT(d.first_name, ' ', d.last_name) AS doctor_name,
    dep.department_name,
    a.appointment_date,
    a.appointment_time,
    a.status
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Departments dep ON d.department_id = dep.department_id
ORDER BY a.appointment_date ASC;

SELECT 
    mr.record_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    CONCAT(d.first_name, ' ', d.last_name) AS treating_doctor,
    mr.diagnosis,
    mr.prescription,
    mr.visit_date
FROM Medical_Records mr
JOIN Patients p ON mr.patient_id = p.patient_id
JOIN Doctors d ON mr.doctor_id = d.doctor_id
WHERE p.patient_id = 1;

SELECT 
    CONCAT(d.first_name, ' ', d.last_name) AS doctor_name,
    d.specialization,
    COUNT(b.bill_id) AS total_bills_generated,
    SUM(b.total_amount) AS total_revenue
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
LEFT JOIN Billing b ON a.appointment_id = b.appointment_id
WHERE b.payment_status = 'Paid'
GROUP BY d.doctor_id;

SELECT * FROM Patients 
WHERE phone LIKE '%9123%' 
   OR first_name LIKE '%John%' 
   OR last_name LIKE '%Doe%';

UPDATE Billing 
SET payment_status = 'Paid' 
WHERE bill_id = 2;
