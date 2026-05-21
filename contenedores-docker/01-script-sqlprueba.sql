
-- Crear base de datos pruebag1

-- Permite crear una base de datos (SQL-LDD)
CREATE DATABASE prueba1;

-- Utilizar la base de datos 
USE prueba1;

-- Crear una tabla (SQL-LDD)
CREATE TABLE alumno (
 id INT NOT NULL,
 nombre VARCHAR(20) NOT NULL, 
 edad INT not null, 
 matricula INT NOT NULL,
 direccion VARCHAR (30) NULL, 
 CONSTRAINT pk_alumno
 PRIMARY KEY (id), 
 CONSTRAINT unique_matricula
 UNIQUE (matricula)
);

-- AGREGAR DOS ALUMNOS (SQL-LMD)

INSERT INTO alumno (id, nombre, edad, matricula, direccion)
VALUES (1, 'ARCADIA', 65, 123456, 'Calle del Infierno'), 
       (2, 'NARNIA', 19, 125689, 'Conocido Barrio');
       
       
-- Seleccionar los alumnos (SQL-LMD)
SELECT *
FROM alumno;

-- Cambiar el nombre de Arcadia a Monico (SQL-LMD)

UPDATE alumno
SET nombre = 'MONICO'
WHERE id = 1;
