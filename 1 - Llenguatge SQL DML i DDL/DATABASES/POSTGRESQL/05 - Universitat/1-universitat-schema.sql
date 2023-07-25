CREATE TABLE departamento (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TYPE tipo_sexo as ENUM('H', 'M');
CREATE TYPE tipo_persona as ENUM('profesor','alumno');

CREATE TABLE persona (
    id INTEGER PRIMARY KEY,
    nif VARCHAR(9) UNIQUE,
    nombre VARCHAR(25) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    ciudad VARCHAR(25) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR(9),
    fecha_nacimiento DATE NOT NULL,
    sexo tipo_sexo NOT NULL,
    tipo tipo_persona NOT NULL
);
 
CREATE TABLE profesor (
    id_profesor INTEGER PRIMARY KEY,
    id_departamento INTEGER NOT NULL,
    FOREIGN KEY (id_profesor) REFERENCES persona(id),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);
 
 CREATE TABLE grado (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
 
CREATE TYPE tipo_asignatura as ENUM('básica', 'obligatoria', 'optativa');
CREATE TABLE asignatura (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    creditos DECIMAL(10,2) NOT NULL,
    tipo tipo_asignatura NOT NULL,
    curso INTEGER NOT NULL,
    cuatrimestre INTEGER NOT NULL,
    id_profesor INTEGER,
    id_grado INTEGER NOT NULL,
    FOREIGN KEY(id_profesor) REFERENCES profesor(id_profesor),
    FOREIGN KEY(id_grado) REFERENCES grado(id)
);
 
CREATE TABLE curso_escolar (
    id INTEGER PRIMARY KEY,
    anyo_inicio INTEGER NOT NULL,
    anyo_fin INTEGER NOT NULL
);

CREATE TABLE alumno_se_matricula_asignatura (
    id_alumno INTEGER NOT NULL,
    id_asignatura INTEGER NOT NULL,
    id_curso_escolar INTEGER NOT NULL,
    PRIMARY KEY (id_alumno, id_asignatura, id_curso_escolar),
    FOREIGN KEY (id_alumno) REFERENCES persona(id),
    FOREIGN KEY (id_asignatura) REFERENCES asignatura(id),
    FOREIGN KEY (id_curso_escolar) REFERENCES curso_escolar(id)
);
 
 