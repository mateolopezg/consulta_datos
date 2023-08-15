-- Insertar datos en REGIONS
INSERT INTO REGIONS (region_id, region_name) VALUES
    (1, 'North America'),
    (2, 'Europe'),
    (3, 'Asia'),
    (4, 'Latin America'),
    (5, 'Middle East and Africa');

-- Insertar datos en COUNTRIES
INSERT INTO COUNTRIES (country_id, country_name, region_id) VALUES
    (1, 'United States', 1),
    (2, 'Canada', 1),
    (3, 'United Kingdom', 2),
    (4, 'France', 2),
    (5, 'Japan', 3),
    (6, 'China', 3);

-- Insertar datos en LOCATIONS
INSERT INTO LOCATIONS (location_id, street_address, postal_code, city, state_province, country_id) VALUES
    (1, '123 Main St', '12345', 'New York', 'NY', 1),
    (2, '456 Maple Ave', '67890', 'Toronto', 'ON', 2),
    (3, '789 Oak Blvd', '23456', 'London', 'England', 3),
    (4, '456 Rue de la Paix', '34567', 'Paris', 'Île-de-France', 4),
    (5, '789 Sakura St', '56789', 'Tokyo', 'Tokyo', 5),
    (6, '123 Beijing Rd', '78901', 'Beijing', 'Beijing', 6);

-- Insertar datos en JOBS
INSERT INTO JOBS (job_id, job_title, min_salary, max_salary) VALUES
    (1, 'Manager', 25000, 50000),
    (2, 'Developer', 20000, 40000),
    (3, 'Analyst', 15000, 35000),
    (4, 'Salesperson', 18000, 35000);

-- Insertar datos en DEPARTMENTS
INSERT INTO DEPARTMENTS (department_id, department_name, manager_id, location_id) VALUES
    (10, 'HR', NULL, 1),
    (20, 'IT', NULL, 2),
    (30, 'Sales', NULL, 4);

-- Insertar datos en EMPLOYEES
INSERT INTO EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) VALUES
    (100, 'John', 'Doe', 'john@example.com', '123-456-7890', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 1, 45000, NULL, NULL, 10),
    (101, 'Jane', 'Smith', 'jane@example.com', '987-654-3210', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 2, 30000, NULL, 100, 20),
    (102, 'Michael', 'Johnson', 'michael@example.com', '555-555-5555', TO_DATE('2023-03-10', 'YYYY-MM-DD'), 2, 28000, NULL, 100, 20),
    (150, 'Alice', 'Williams', 'alice@example.com', '111-222-3333', TO_DATE('2023-04-05', 'YYYY-MM-DD'), 3, 22000, NULL, 100, 30),
    (151, 'Bob', 'Anderson', 'bob@example.com', '222-333-4444', TO_DATE('2023-05-10', 'YYYY-MM-DD'), 4, 18000, NULL, 100, 30),
    (155, 'Caroline', 'Thompson', 'caroline@example.com', '333-444-5555', TO_DATE('2023-06-15', 'YYYY-MM-DD'), 2, 28000, NULL, 150, 20),
    (156, 'Daniel', 'Miller', 'daniel@example.com', '444-555-6666', TO_DATE('2023-07-20', 'YYYY-MM-DD'), 1, 45000, NULL, 150, 10),
    (160, 'Eva', 'Martinez', 'eva@example.com', '555-666-7777', TO_DATE('2023-08-25', 'YYYY-MM-DD'), 3, 22000, NULL, 150, 30),
    (161, 'Frank', 'Garcia', 'frank@example.com', '666-777-8888', TO_DATE('2023-09-30', 'YYYY-MM-DD'), 2, 28000, NULL, 150, 20),
    (162, 'Grace', 'Hernandez', 'grace@example.com', '777-888-9999', TO_DATE('2023-10-05', 'YYYY-MM-DD'), 1, 45000, NULL, 150, 10),
    (170, 'Henry', 'Lopez', 'henry@example.com', '888-999-0000', TO_DATE('2023-11-10', 'YYYY-MM-DD'), 4, 18000, NULL, 150, 30),
    (171, 'Isabella', 'Rodriguez', 'isabella@example.com', '999-000-1111', TO_DATE('2023-12-15', 'YYYY-MM-DD'), 2, 28000, NULL, 170, 20),
    (201, 'Frank', 'Williams', 'zoe@example.com', '111-222-3333', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 3, 22000, NULL, 170, 30),
    (202, 'Bob', 'Smith', 'zoe@example.com', '111-222-3333', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 3, 22000, NULL, 170, 30),
    (203, 'Caroline', 'Smith', 'zoe@example.com', '111-222-3333', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 3, 22000, NULL, 170, 30),
    (204, 'Karoline', 'Hernandez', 'zoe@example.com', '111-222-3333', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 3, 22000, NULL, 170, 30),
    (305, 'Kevin', 'Jones', 'kevin@example.com', '555-111-2222', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 1, 12000, NULL, 170, 10),
    (306, 'Laura', 'King', 'laura@example.com', '555-222-3333', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 2, 13000, NULL, 170, 20),
    (307, 'Kimberly', 'Smith', 'kimberly@example.com', '555-333-4444', TO_DATE('2023-03-10', 'YYYY-MM-DD'), 3, 14000, NULL, 150, 30),
    (308, 'Karen', 'Johnson', 'karen@example.com', '555-444-5555', TO_DATE('2023-04-05', 'YYYY-MM-DD'), 4, 14500, NULL, 150, 30),
    (309, 'Justin', 'Taylor', 'justin@example.com', '555-555-6666', TO_DATE('2023-05-10', 'YYYY-MM-DD'), 2, 14800, NULL, 100, 10);


-- Insertar datos en JOB_HISTORY
INSERT INTO JOB_HISTORY (employee_id, start_date, end_date, job_id, department_id) VALUES
    (101, TO_DATE('2023-02-20', 'YYYY-MM-DD'), NULL, 2, 20),
    (102, TO_DATE('2023-03-10', 'YYYY-MM-DD'), NULL, 2, 20),
    (103, TO_DATE('2023-04-05', 'YYYY-MM-DD'), NULL, 3, 30);
