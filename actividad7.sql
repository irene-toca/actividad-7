-- TABLA DEPARTAMENTOS 

CREATE TABLE departamentos
(
    id_dpto INTEGER PRIMARY KEY,
    nombre VARCHAR (30),
    presupuesto INTEGER CHECK (presupuesto >= 5000) NOT NULL
    
);
CREATE INDEX indice_departamentos_nombre ON departamentos (nombre);

-- TABLA EMPLEADOS 

CREATE TABLE empleados
(
    id_emp INTEGER PRIMARY KEY,
    nombre VARCHAR (30),
    apellidos VARCHAR (50),
    sexo VARCHAR (20),
    fecha_nac DATE,
    municipio VARCHAR (50),
    sueldo DECIMAL(5,2) CHECK (sueldo >= 1000),
    id_dpto INTEGER,
    CONSTRAINT emp_dpto_fk FOREIGN KEY (id_dpto)
    REFERENCES departamentos (id_dpto) 
    ON DELETE SET NULL



);
 
-- TABLA PROYECTOS
CREATE TABLE proyectos
(
    id_proy INTEGER PRIMARY KEY,
    nombre VARCHAR (50) DEFAULT 'INDEF' UNIQUE NOT NULL,
    fecha_ini DATE,
    fecha_fin DATE
);

-- TABLA ASIGNACION
CREATE TABLE asignacion
(
    id_emp INTEGER,
    id_proy INTEGER,
    CONSTRAINT asig_emp_fk FOREIGN KEY (id_emp)
    REFERENCES empleados (id_emp),
    CONSTRAINT asig_proy_fk FOREIGN KEY (id_proy)
    REFERENCES proyectos (id_proy)
);



