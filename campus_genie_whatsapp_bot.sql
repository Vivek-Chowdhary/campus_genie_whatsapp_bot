CREATE DATABASE campus_genie;
USE campus_genie;
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    roll_no VARCHAR(50) UNIQUE,
    name VARCHAR(100),
    department VARCHAR(100),
    phone VARCHAR(20)
);
CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    total_classes INT DEFAULT 0,
    attended_classes INT DEFAULT 0,
    FOREIGN KEY (student_id) REFERENCES students(id)
);
CREATE TABLE assignments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    subject VARCHAR(100),
    title VARCHAR(200),
    due_date DATE
);


INSERT INTO students (roll_no, name, department, phone)
VALUES
('CS2023-001', 'Vivek Chowdhary', 'CSE', '+917908158389'),
('CS2023-002', 'Rohit Sharma', 'CSE', '+919999999999');

INSERT INTO attendance (student_id, total_classes, attended_classes)
VALUES
(1, 40, 30),
(2, 40, 20);
INSERT INTO assignments (subject, title, due_date)
VALUES
('Maths', 'Integration Worksheet', '2025-01-15'),
('Physics', 'Wave Mechanics Notes', '2025-01-20');

SELECT * FROM students;
SELECT * FROM attendance;
SELECT * FROM assignments;

