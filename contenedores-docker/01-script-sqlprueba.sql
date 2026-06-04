
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


-- Ejemplo en Mariadb


# Crea una base de datos
CREATE DATABASE prueba_atributos;

# Utiliza la base de datos
USE prueba_atributos;

# Creación de tabla empleado
CREATE TABLE empleado(
	id int not null PRIMARY KEY, 
    nombre varchar(50) NOT NULL, 
    apellido1 varchar (15) NOT NULL, 
    apellido2 varchar (15) NULL, 
    fecha_Ingreso DATE NOT NULL
);

INSERT INTO empleado
VALUES (1, 'Reberiano', 'Robles', 'De la Torre', '1983-04-06');

SELECT 
	*, YEAR(fecha_ingreso), MONTH (fecha_ingreso), DAY(fecha_ingreso) 
FROM empleado;

ALTER TABLE empleado
ADD COLUMN fecha_naci DATE NOT NULL;

UPDATE empleado
SET fecha_naci = '1983-04-06'
WHERE id = 1;

SELECT 
	nombre, 
    apellido1, 
    apellido2, 
    fecha_ingreso, 
    fecha_naci, 
    timestampdiff(year, fecha_naci, CURDATE()) AS Edad
FROM empleado;