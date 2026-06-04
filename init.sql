-- Create Database
CREATE DATABASE company_db;

-- Use Database
USE company_db;

-- Create Employees Table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    location VARCHAR(100)
);

-- Insert Employee Records
INSERT INTO employees (emp_id, emp_name, salary, location) VALUES
(101, 'John Smith', 55000.00, 'New York'),
(102, 'Emma Johnson', 62000.00, 'Chicago'),
(103, 'Michael Brown', 58000.00, 'Dallas'),
(104, 'Sophia Davis', 72000.00, 'Seattle'),
(105, 'William Wilson', 68000.00, 'Boston'),
(106, 'Olivia Martinez', 75000.00, 'San Francisco'),
(107, 'James Anderson', 54000.00, 'Atlanta'),
(108, 'Ava Thomas', 69000.00, 'Denver'),
(109, 'Benjamin Taylor', 61000.00, 'Austin'),
(110, 'Isabella Moore', 73000.00, 'Los Angeles'),
(111, 'Lucas Jackson', 56000.00, 'Phoenix'),
(112, 'Mia White', 65000.00, 'Miami'),
(113, 'Henry Harris', 70000.00, 'Houston'),
(114, 'Charlotte Martin', 77000.00, 'Portland'),
(115, 'Alexander Thompson', 59000.00, 'Nashville');

-- Verify Data
SELECT * FROM employees;
