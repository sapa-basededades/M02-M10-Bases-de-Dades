

CREATE TABLE departamento (
  codigo INTEGER PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  presupuesto DECIMAL(10,2) NOT NULL,
  gastos DECIMAL(10,2)  NOT NULL
);

CREATE TABLE empleado (
  codigo INTEGER PRIMARY KEY,
  nif VARCHAR(9) NOT NULL UNIQUE,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  codigo_departamento INTEGER,
  FOREIGN KEY (codigo_departamento) REFERENCES departamento(codigo)
);


