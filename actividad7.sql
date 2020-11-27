-- TABLA DEPARTAMENTOS 

CREATE TABLE departamentos
(
    id_dpto INTEGER PRIMARY KEY,
    nombre VARCHAR (30),
    presupuesto INTEGER
);

-- TABLA EMPLEADOS 

CREATE TABLE empleados
(
    id_emp INTEGER PRIMARY KEY,
    nombre VARCHAR (30),
    apellidos VARCHAR (50),
    sexo VARCHAR (20),
    fecha_nac DATE,
    municipio VARCHAR (50),
    sueldo DECIMAL(5,2),
    id_dpto INTEGER 

);
 
-- TABLA PROYECTOS
CREATE TABLE proyectos
(
    id_proyectos INTEGER PRIMARY KEY,
    nombre VARCHAR (50),
    fecha_ini DATE,
    fecha_fin DATE
);

-- TABLA ASIGNACION
CREATE TABLE asignacion
(
    id_emp INTEGER,
    id_proy INTEGER
);