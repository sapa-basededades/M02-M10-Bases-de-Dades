

CREATE TABLE cliente (
  id INTEGER PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  ciudad VARCHAR(100),
  categoría INTEGER
);

CREATE TABLE comercial (
  id INTEGER PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  comisión DECIMAL(10,2)
);

CREATE TABLE pedido (
  id INTEGER PRIMARY KEY,
  total DECIMAL(10,2) NOT NULL,
  fecha DATE,
  id_cliente INTEGER NOT NULL,
  id_comercial INTEGER NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id),
  FOREIGN KEY (id_comercial) REFERENCES comercial(id)
);
