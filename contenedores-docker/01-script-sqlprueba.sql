
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



CREATE DATABASE pruebaatributos;

CREATE TABLE alumno(
 num_alumno int not null primary key, 
 nombre varchar(50) not null, 
 apellido_1 varchar (30) not null, 
 apellido_2 varchar (30) NULL, 
 fecha_naci date NOT NULL
);


INSERT INTO alumno
VALUES (1, 'Angel Patricio', 'Perez', 'Hernandez', '1998-09-08');

INSERT INTO alumno
VALUES (2, 'Ian Uriel', 'Rizo', NULL, '2007-07-25');

SELECT * 
FROM alumno; 


SELECT 
	nombre, apellido_1, apellido_2, YEAR(fecha_naci), 
	MONTH(fecha_naci), DAY(fecha_naci), 
	(DATEDIFF(year, fecha_naci, GETDATE())) AS Edad
FROM alumno; 