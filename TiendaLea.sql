CREATE DATABASE TiendaLea;
USE TiendaLea;
 
 
CREATE TABLE tbDepartamentos(
id_Departamentos INT AUTO_INCREMENT  PRIMARY KEY,
Nombre_Departamento VARCHAR(40)
);
 
CREATE TABLE tbCargos(
id_Cargo INT AUTO_INCREMENT  PRIMARY KEY,
Tipo_Cargo VARCHAR (30)
);
 
CREATE TABLE tbEmpleados(
Id_Empleado INT AUTO_INCREMENT  PRIMARY KEY,
NombreEmpleado VARCHAR(20),
apellidoEmpleado VARCHAR(20),
Fecha_Inicio_Empresa VARCHAR(6),
idDepar INT,
FOREIGN KEY (idDepar)REFERENCES tbDepartamentos(id_Departamentos),
idCargo INT,
FOREIGN KEY (idCargo)REFERENCES tbCargos(id_Cargo)
);
 
CREATE TABLE tbProyectos(
id_Proyectos INT AUTO_INCREMENT  PRIMARY KEY,
nombreProyecto VARCHAR(25),
IdEmp INT,
FOREIGN KEY (IdEmp)REFERENCES tbEmpleados(Id_Empleado)
);
 
SELECT * FROM tbDepartamentos;
SELECT * FROM tbCargos;
SELECT * FROM tbEmpleados;
SELECT * FROM tbProyectos;