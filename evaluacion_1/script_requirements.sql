-- Requerimiento 1: Empleados ordenados por salario descendente
SELECT last_name AS Apellido, first_name AS Nombre, salary AS Salario
FROM EMPLOYEES
ORDER BY salary DESC;

-- Requerimiento 2: Empleados con códigos entre 150 y 170
SELECT last_name AS Apellido, first_name AS Nombre, email AS CorreoElectronico
FROM EMPLOYEES
WHERE employee_id BETWEEN 150 AND 170;

-- Requerimiento 3: Empleados con nombre que empieza con 'K'
SELECT first_name AS Nombre, last_name AS Apellido, email AS CorreoElectronico, phone_number AS NumeroTelefono
FROM EMPLOYEES
WHERE first_name LIKE 'K%';

-- Requerimiento 4: Empleados con salario menor a 15000 y correo que no empiece con 'k'
SELECT first_name AS Nombre, last_name AS Apellido, email AS CorreoElectronico, salary AS Salario
FROM EMPLOYEES
WHERE salary < 15000 AND NOT email LIKE 'k%'
ORDER BY salary ASC;

