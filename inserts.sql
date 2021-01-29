-- DATOS EJEMPLO

-- Permisos para otorgar
INSERT INTO permisos (nivelpermisos) VALUES ('Director');
INSERT INTO permisos (nivelpermisos) VALUES ('Trabajador');
INSERT INTO permisos (nivelpermisos) VALUES ('Familiar');

-- usuarios ejemplo
-- DIRECTORES
insert into usuarios (dni, userpassword, username, surname, borndate, sex, email, useraddress, city, postcode, country, fechaalta, permisosid) 
values ('00000001R', 'capcapcap', 'Antonio', 'Garcia', '02/02/1987', 'hombre','ejemplo@ejemplo.com','C/ algo 4 1,1', 'Barcelona', '43202', 'España', '01/10/2020', 1);

insert into usuarios (dni, userpassword, username, surname, borndate, sex, email, useraddress, city, postcode, country, fechaalta, permisosid) 
values ('00000005R', 'capcapcap', 'Margalida', 'Pons', '23/02/1985', 'mujer','ejemplo@ejemplo.com','C/ algo 4 1,1', 'Badalona', '45012', 'España', '01/12/2020', 1);

--TRABAJADORES
insert into usuarios (dni, userpassword, username, surname, borndate, sex, email, useraddress, city, postcode, country, fechaalta, permisosid) 
values ('00000002R', 'capcapcap', 'Adrián', 'Kleber', '02/02/1984', 'hombre','ejemplo@ejemplo2.com','C/ algo 4 1,1', 'Reus', '43202', 'España', '01/10/2020', 2);
insert into usuarios (dni, userpassword, username, surname, borndate, sex, email, useraddress, city, postcode, country, fechaalta, permisosid) 
values ('00000006R', 'capcapcap', 'Antonia', 'Flroes', '27/02/1989', 'mujer','ejemplo@ejemplo2.com','C/ algo 4 1,1', 'Tarragona', '43202', 'España', '01/11/2020', 2);

--FAMILIAR
insert into usuarios (dni, userpassword, username, surname, borndate, sex, email, useraddress, city, postcode, country, fechaalta, permisosid) 
values ('00000003R', 'capcapcap', 'Juan', 'López', '02/02/1977', 'hombre','ejemplo2@ejemplo.com','C/ algo 4 1,1', 'Barcelona', '43202', 'España', '01/10/2020', 3);
insert into usuarios (dni, userpassword, username, surname, borndate, sex, email, useraddress, city, postcode, country, fechaalta, permisosid) 
values ('00000007R', 'capcapcap', 'Marta', 'López', '02/02/1975', 'mujer','ejemplo2@ejemplo.com','C/ algo 4 1,1', 'Barcelona', '43202', 'España', '01/10/2020', 3);

-- actividad
insert into actividad (tipoactividad, medicación) values ('Yoga', false);
insert into actividad (tipoactividad, medicación) values ('Manualidades', false);
insert into actividad (tipoactividad, medicación) values ('Aspirina', true);
insert into actividad (tipoactividad, medicación) values ('Pilates', false);
insert into actividad (tipoactividad, medicación) values ('Caminar', false);
insert into actividad (tipoactividad, medicación) values ('Paracetamol', true);

-- paciente
insert into paciente (dni, pacientename, surname, borndate, sex, pacienteaddress, city, postcode, country, fechaalta) 
values ('00000004R', 'Marc', 'López', '02/02/1942', 'hombre','C/ algo 4 1,1', 'Barcelona', '43202', 'España', '01/10/2020');
insert into paciente (dni, pacientename, surname, borndate, sex, pacienteaddress, city, postcode, country, fechaalta) 
values ('00000008R', 'Rogelia', 'González', '02/02/1954', 'mujer','C/ algo 4 1,1', 'Barcelona', '43202', 'España', '01/10/2020');

-- asignación familiar paciente y trabajador paciente
insert into paciente_usuario (pacienteid, usuarioid) values ('00000004R', '00000003R');
insert into paciente_usuario (pacienteid, usuarioid) values ('00000004R', '00000002R');
insert into paciente_usuario (pacienteid, usuarioid) values ('00000008R', '00000007R');
insert into paciente_usuario (pacienteid, usuarioid) values ('00000008R', '00000006R');

-- actividad_paciente
insert into actividad_paciente (fechaalta, actividadid, pacienteid, usuarioid)
values ('01/10/2020', 3, '00000004R', '00000001R');

insert into actividad_paciente (fechaalta, fechabaja, actividadid, pacienteid, usuarioid)
values ('01/10/2020', '30/12/2021', 1, '00000004R', '00000001R');

insert into actividad_paciente (fechaalta, actividadid, pacienteid, usuarioid)
values ('01/10/2020', 6, '00000008R', '00000005R');

insert into actividad_paciente (fechaalta, fechabaja, actividadid, pacienteid, usuarioid)
values ('01/10/2020', '30/12/2021', 2, '00000008R', '00000005R');

insert into actividad_paciente (fechaalta, fechabaja, actividadid, pacienteid, usuarioid)
values ('01/10/2020', '30/12/2021', 4, '00000008R', '00000005R');

insert into actividad_paciente (fechaalta, fechabaja, actividadid, pacienteid, usuarioid)
values ('01/10/2020', '30/12/2021', 5, '00000004R', '00000005R');


-- historial
insert into historial (actividad_pacienteid, fecha, hora, estado, observaciones)
values (1, '01/10/2020', '8:00', true, '');
insert into historial (actividad_pacienteid, fecha, hora, estado, observaciones)
values (2, '01/10/2020', '8:00', true, '');
insert into historial (actividad_pacienteid, fecha, hora, estado, observaciones)
values (1, '02/10/2020', '8:00', true, '');
insert into historial (actividad_pacienteid, fecha, hora, estado, observaciones)
values (2, '02/10/2020', '8:00', true, '');
insert into historial (actividad_pacienteid, fecha, hora, estado, observaciones)
values (1, '03/10/2020', '8:00', true, '');
insert into historial (actividad_pacienteid, fecha, hora, estado, observaciones)
values (2, '03/10/2020', '8:00', true, '');
insert into historial (actividad_pacienteid, fecha, hora, estado, observaciones)
values (1, '04/10/2020', '8:00', false, '');
insert into historial (actividad_pacienteid, fecha, hora, estado, observaciones)
values (2, '04/10/2020', '8:00', false, '');

