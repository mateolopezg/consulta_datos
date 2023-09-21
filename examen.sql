--Resolución requerimientos  

--Requerimiento 1: 

SELECT 

    e.employee_id AS "ID del Empleado", 

    e.first_name AS "Nombre", 

    e.last_name AS "Apellido", 

    d.department_name AS "Nombre del Departamento" 

FROM 

    EMPLOYEES e 

JOIN 

    DEPARTMENTS d ON e.department_id = d.department_id 

WHERE 

    e.job_id IN (SELECT job_id FROM JOBS WHERE job_title = 'Sales Manager'); 

--Requerimiento 2: 

CREATE OR REPLACE VIEW V_EMPLEADOS_80 AS 

SELECT 

    e.employee_id AS "ID del Empleado", 

    e.first_name || ' ' || e.last_name AS "Nombre Completo", 

    j.job_title AS "Nombre del Trabajo", 

    e.salary AS "Salario", 

    e.email AS "Correo Electrónico" 

FROM 

    EMPLOYEES e 

JOIN 

    DEPARTMENTS d ON e.department_id = d.department_id 

JOIN 

    JOBS j ON e.job_id = j.job_id 

WHERE 

    d.department_id = 80; 


--Requerimiento 3: 

SELECT 

    r.region_name AS "Nombre de la Región", 

    c.country_id AS "ID del País", 

    c.country_name AS "Nombre del País" 

FROM 

    REGIONS r 

NATURAL JOIN 

    COUNTRIES c 

WHERE 

    r.region_name = 'Europe' 

    AND c.country_id NOT IN ( 

        SELECT DISTINCT country_id 

        FROM LOCATIONS 

        WHERE city = 'Roma' 

    ) 

ORDER BY 

    c.country_name DESC; 


--Requerimiento 4: 

SELECT 

    d.department_id AS "Número de Departamento", 

    d.department_name AS "Nombre del Departamento", 

    l.street_address AS "Dirección", 

    l.city AS "Ciudad" 

FROM 

    DEPARTMENTS d 

JOIN 

    LOCATIONS l ON d.location_id = l.location_id 

WHERE 

    l.city NOT IN ('Seattle', 'Toronto'); 



--Requerimiento 5: 

 

SELECT 

    d.department_name AS "Nombre del Departamento", 

    COALESCE(CONCAT(m.first_name, ' ', m.last_name), 'VACANTE') AS "Nombre del Manager" 

FROM 

    DEPARTMENTS d 

LEFT JOIN 

    EMPLOYEES m ON d.manager_id = m.employee_id; 
