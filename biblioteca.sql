USE biblioteca;

CREATE TABLE Estudiante (
id VARCHAR (10) NOT NULL UNIQUE,
nombre VARCHAR (25) NOT NULL,
apellido VARCHAR (25) NOT NULL,
direccion VARCHAR (100) NULL,
telefono VARCHAR (13) NOT NULL,
email VARCHAR (50) NOT NULL,
PRIMARY KEY (id));

CREATE TABLE Inventario (
id INT NOT NULL UNIQUE auto_increment,
nombre VARCHAR (50) NOT NULL,
categoria VARCHAR (30) NULL,
autor VARCHAR (50),
PRIMARY KEY (id));

CREATE TABLE Reserva (
idcedula VARCHAR (10) NOT NULL,
idlibro INT NOT NULL,
fechareserva DATE,
fechadevolucion DATE,
CONSTRAINT fk_idcedula FOREIGN KEY (idcedula) REFERENCES Estudiante (id),
CONSTRAINT fk_idlibro FOREIGN KEY (idlibro) REFERENCES Inventario (id));
