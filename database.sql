drop table if exists historial; 
drop table if exists actividad_paciente;
drop table if exists actividad;
drop table if exists paciente_usuario;
drop table if exists paciente;
drop table if exists usuarios;
drop table if exists permisos;


CREATE TABLE permisos (
    id        SERIAL PRIMARY KEY,
    nivelPermisos VARCHAR(20) NOT NULL
);

CREATE TABLE usuarios (
  id        SERIAL,
  dni varchar(30) not null,
  userPassword  VARCHAR(30) NOT NULL,
  userName      VARCHAR(30) NOT NULL,
  surname   VARCHAR(30) NOT NULL,
  bornDate  DATE NOT NULL,
  sex       VARCHAR(6) NOT NULL,
  email     VARCHAR(120) NOT NULL,
  userAddress   VARCHAR(120),
  city      VARCHAR(30),
  postcode  VARCHAR(12),
  country   VARCHAR(20),
  fechaalta DATE NOT NULL,
  fechabaja DATE,
  permisosID serial REFERENCES permisos(id),
  primary key (dni)
);

CREATE TABLE paciente (
  id        SERIAL,
  dni varchar(30) not null,
  pacienteName      VARCHAR(30) NOT NULL,
  surname   VARCHAR(30) NOT NULL,
  bornDate  DATE NOT NULL,
  sex       VARCHAR(6) NOT NULL,
  pacienteAddress   VARCHAR(120),
  city      VARCHAR(30),
  postcode  VARCHAR(12),
  country   VARCHAR(20),
  fechaalta DATE NOT NULL,
  fechabaja DATE, 
  primary key (dni)
);

CREATE TABLE paciente_usuario (
    id SERIAL PRIMARY KEY,
    pacienteId varchar(30) REFERENCES paciente(dni),
    usuarioId varchar(30) REFERENCES usuarios(dni)
);

CREATE TABLE actividad (
    id SERIAL PRIMARY KEY,
    tipoActividad VARCHAR(20) NOT NULL,
    medicación boolean NOT NULL
);

CREATE TABLE actividad_paciente (
id SERIAL PRIMARY KEY,
fechaalta DATE NOT NULL,
fechabaja DATE,
actividadId serial REFERENCES actividad(id),
pacienteId varchar(30) REFERENCES paciente(dni),
usuarioId varchar(30) REFERENCES usuarios(dni)
);


CREATE TABLE historial ( 
id serial,
actividad_pacienteId serial references actividad_paciente(id),
fecha DATE NOT NULL, 
Hora time NOT NULL,
Estado boolean NOT NULL, 
Observaciones VARCHAR(50),
primary key (id, actividad_pacienteId)
);

