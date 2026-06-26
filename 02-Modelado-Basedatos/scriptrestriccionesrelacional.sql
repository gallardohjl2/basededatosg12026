-- Crear una base de datos 

CREATE DATABASE bdconstraint;
GO

-- Usar la base de datos
USE bdconstraint;
GO

-- Razón de Cardinalidad 1:1

-- Crear tabla Paciente
CREATE TABLE paciente(
	Idpaciente INT NOT NULL, 
	Nombre VARCHAR (40) NOT NULL, 
	Apellido1 VARCHAR (20) NOT NULL, 
	Apellido2 VARCHAR (20) NULL,
	Fechanaci DATE NOT NULL,
	CONSTRAINT pk_paciente
	PRIMARY KEY (Idpaciente)
);
GO

CREATE TABLE expediente (
	Idexp INT NOT NULL PRIMARY KEY,
	Fechaapertura DATE NOT NULL, 
	Tiposangre char(3) NULL, 
	Idpaciente INT NOT NULL, 
	CONSTRAINT unique_idpaciente
	UNIQUE(Idpaciente),
	CONSTRAINT fk_expediente_paciente
	FOREIGN KEY (Idpaciente)
	REFERENCES paciente(Idpaciente)
);
GO

-- Datos para las tablas 

INSERT INTO paciente 
VALUES (1, 'José Domingo', 'Pérez', 
           'Hernández', '1995-03-21');

INSERT INTO paciente 
VALUES (2, 'José Luis', 'Herrera', 
           'Gallardo', '1978-04-06');

INSERT INTO paciente 
VALUES (3, 'Parinko', 'Cabeza', 
           'Grande', '1983-04-06'),
	   (4, 'Laura', 'Robledo', 'Davalos',
	   '2005-12-20');

-- INSERTAR EXPEDIENTES
INSERT INTO expediente
VALUES (1, GETDATE(), '+O', 1);

INSERT INTO expediente
VALUES (2, '2026-06-17', '+O', 2);

SELECT * FROM expediente


SELECT * FROM paciente;





