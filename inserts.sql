-- DATOS DE DEPARTAMENTOS

INSERT INTO departamentos(`id_dpto`, `nombre`, `presupuesto`)
VALUES (1, 'I+D', 50000),
       (2, 'Diseño', 25000),
       (3, 'Ventas', 15000 ),
       (4, 'Marketing', 10000);


-- DATOS DE EMPLEADOS

INSERT INTO empleados (`id_emp`, `nombre`, `apellidos`, `sexo`, `fecha_nac`, `sueldo`, `municipio`, `id_dpto`)
VALUES (10478, 'Alberto','Pérez López', 'M', 12/10/1969, 1500, 'Madrid', 1),
       (10479, 'Gloria', 'Ruiz Ruiz', 'F', 07/11/1965, 1650, 'Sevilla', 2),
       (10480, 'Antonio', 'García Montero', 'M', 07/10/1960, 1350, 'Madrid',1),
       () 