-- Crear tabla REGIONS
CREATE TABLE REGIONS (
    region_id NUMBER PRIMARY KEY,
    region_name VARCHAR2(50)
);

-- Crear tabla COUNTRIES
CREATE TABLE COUNTRIES (
    country_id NUMBER PRIMARY KEY,
    country_name VARCHAR2(50),
    region_id NUMBER,
    CONSTRAINT fk_countries_regions FOREIGN KEY (region_id) REFERENCES REGIONS(region_id)
);

-- Crear tabla LOCATIONS
CREATE TABLE LOCATIONS (
    location_id NUMBER PRIMARY KEY,
    street_address VARCHAR2(50),
    postal_code VARCHAR2(12),
    city VARCHAR2(50),
    state_province VARCHAR2(50),
    country_id NUMBER,
    CONSTRAINT fk_locations_countries FOREIGN KEY (country_id) REFERENCES COUNTRIES(country_id)
);

-- Crear tabla JOBS
CREATE TABLE JOBS (
    job_id NUMBER PRIMARY KEY,
    job_title VARCHAR2(35),
    min_salary NUMBER(10, 2),
    max_salary NUMBER(10, 2)
);

-- Crear tabla DEPARTMENTS
CREATE TABLE DEPARTMENTS (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50),
    manager_id NUMBER,
    location_id NUMBER,
    CONSTRAINT fk_departments_locations FOREIGN KEY (location_id) REFERENCES LOCATIONS(location_id)
);

-- Crear tabla EMPLOYEES
CREATE TABLE EMPLOYEES (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    phone_number VARCHAR2(20),
    hire_date DATE,
    job_id NUMBER,
    salary NUMBER(10, 2),
    commission_pct NUMBER(4, 2),
    manager_id NUMBER,
    department_id NUMBER,
    CONSTRAINT fk_employees_jobs FOREIGN KEY (job_id) REFERENCES JOBS(job_id),
    CONSTRAINT fk_employees_managers FOREIGN KEY (manager_id) REFERENCES EMPLOYEES(employee_id)
);

-- Crear tabla JOB_HISTORY
CREATE TABLE JOB_HISTORY (
    employee_id NUMBER,
    start_date DATE,
    end_date DATE,
    job_id NUMBER,
    department_id NUMBER,
    CONSTRAINT fk_job_history_employees FOREIGN KEY (employee_id) REFERENCES EMPLOYEES(employee_id),
    CONSTRAINT fk_job_history_jobs FOREIGN KEY (job_id) REFERENCES JOBS(job_id),
    CONSTRAINT fk_job_history_departments FOREIGN KEY (department_id) REFERENCES DEPARTMENTS(department_id)
);
