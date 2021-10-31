Create database Hospital

Use Hospital



Create table Pacientes(
Numero_Seguridad_Social int primary key,
Nombres_Paciente varchar(30),
Apellidos_Paciente varchar(30),
Domicilio varchar(30),
Sexo varchar(15),
Provincia varchar(30),
Codigo_Postal varchar(15),
Num_Historial_Clinico int,
observacione varchar(max)
);

insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(09995645,'Juan Carlos','Rivera Alfaro', 'La Libertad', 'Quezaltepeque' ,'Masculino',05248990,1515, 'se encuentra con presion alta');
insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(09995644,'Johana Elizabeth','Campos Lara', 'San Salvador','El Paisnal','Femenino', 23456789,1345, 'mareos constantes');
insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(09995123,'Carlos Enrique','Ayala Moz', 'San Salvador','San Marcos','Masculino',23434454, 1124, 'estado normal');
insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(09995789,'María Jose','Del Carmen Mendez', 'San salvador','San Marcos','Femenino', 12457890,1545, 'internada por embarazo');
insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(0999900,'Marta Roselin','Aguirre Ramos', 'La Libertad', 'Quezaltepeque','Femenino' ,12345656, 1515, 'Necesita ser examinada');
insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(09912345,'Miguel Angel','Cano Aguirre', 'Chalatenango','Santa Rita','Masculino', 90768123,1306, 'Necesita medicamentos para diabetes tipo II');
insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(09123456,'Marcela Del Carmen','López Menjívar', 'Chalatenango','santa Rita','Femenino', 56454538, 1303, 'estado normal');
insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(06789878,'Marlon Efraín ','Guevara Montes', 'Chalatenango', 'El Cobano','Masculino', 23335588, 1305, 'internado por presion arterial alta');
insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(89893435,'Ivon Elizabeth','Orellana Moralez','San Salvador', 'Nejapa','Femenino', 55674423 ,1405 ,'despues de aplicar medicamento su estado es normal');
insert into Pacientes(Numero_Seguridad_Social, Nombres_Paciente,Apellidos_Paciente,Provincia, Domicilio,Sexo, Num_Historial_Clinico, Codigo_Postal, observacione)
values(55665577,'Karla Mariana','Guzman Ayala', 'san Salvador','Guazapa','Femenino', 89776566, 1555, 'estado normal');


Create table Medicos(
Cod_Medico int primary key identity(1,1),
Nombres_Medico varchar(30),
Apellidos_Medico varchar(30),
Numero_Colegiado Varchar(50) unique,
Observaciones varchar(30)
)
insert into medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('José', 'Martínez', 25346789,'ninguna');
insert into medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Anabel', 'López', 21122211, 'ninguna');
insert into medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Angel', 'Gómez', 12321256,'ninguna');
insert into medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Rosa', 'Méndez', 11215161 , 'ninguna');
insert into medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Marlon', 'Cruz', 99887766 , 'ninguna');
insert into medicos(Nombres_Medico,Apellidos_Medico, Numero_Colegiado, observaciones)
values('Eriberto', 'Cañas', 34557766,'ninguna');


Create table Ingresos(
Id_Ingresos int primary key identity(1,1),
Procedencia varchar(30),
Fecha_Ingreso date default getdate(),
Numero_Planta  int,
Numero_Cama int,
Observaciones varchar(max),
Numero_Seguridad_Social int foreign key(Numero_Seguridad_Social) references Pacientes(Numero_Seguridad_Social),
Cod_Medico int foreign key(Cod_Medico) references Medicos(Cod_Medico)
);


insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 2, 35, 'estable');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 1, 30, 'estable');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 2, 12, 'cuidado intensivo');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 3, 28, 'estable');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 1, 3, 'estable');
insert into ingresos(procedencia,Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 2, 11, 'estable');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 3, 10, 'estable');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 3, 13, 'moderado');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 2, 13, 'necesita atencion');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 1, 21, 'estable');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 2, 25, 'estable');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 4, 11, 'estable');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 4, 19, 'estable');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador',3, 23, 'Moderado');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 1, 28, 'necesita atencion');
insert into ingresos(procedencia, Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 2, 5, 'estable');
insert into ingresos(procedencia,Numero_Planta, Numero_Cama, observaciones)
values ('San Salvador', 2, 2, 'necesita atencion');











Create table Contacto (
Id_Contacto int primary key identity(1,1),
Num_Telefonico int
);

insert into Contacto( Num_Telefonico)
values ( 77445566);
insert into Contacto( Num_Telefonico)
values ( 77445555);
insert into Contacto( Num_Telefonico)
values ( 70445566);
insert into Contacto( Num_Telefonico)
values ( 72445566);
insert into Contacto( Num_Telefonico)
values ( 79445566);
insert into Contacto( Num_Telefonico)
values ( 79435566);
insert into Contacto( Num_Telefonico)
values ( 70645566);
insert into Contacto( Num_Telefonico)
values ( 71448566);
insert into Contacto( Num_Telefonico)
values ( 72445966);
insert into Contacto( Num_Telefonico)
values ( 77213566);



Create Table Contacto_Paciente(
Id_C_P int primary key identity(1,1), 
Id_Contacto int foreign key(Id_Contacto) references Contacto(Id_Contacto),
Numero_Seguridad_Social int foreign key(Numero_Seguridad_Social) references Pacientes(Numero_Seguridad_Social)
);




Create table Especialidades(
Id_Especialidad int primary key identity(1,1),
Nombre varchar(50)
);

insert into Especialidades( Nombre)
values('Cirujano')


Create table Especiales_Medicos( 
Id_E_M int primary key identity(1,1), 
Id_Especialidad int foreign key(Id_Especialidad) references Especialidades(Id_Especialidad),
Cod_Medico int foreign key(Cod_Medico) references Medicos(Cod_Medico)
);


Create table Cargos(
Id_Cargo int primary key identity(1,1),
Nombre varchar(30),
Descripción varchar(max)
)

insert into Cargos( Nombre, Descripción)
values ('Cirujano','Realizar operaciones')
insert into Cargos( Nombre, Descripción)
values ('Administracion','Gestonar la empresa')
insert into Cargos( Nombre, Descripción)
values('Secretario/a', 'Llevar apuntes generales')
insert into Cargos( Nombre, Descripción)
values('Enfermera', 'atender pacientes')
insert into Cargos( Nombre, Descripción)
values('Laboratorio',' realizar examenes');





Create table Medicos_Cargos(
Id_M_C int primary key identity(1,1), 
Cod_Medico int foreign key(Cod_Medico) references Medicos(Cod_Medico),
Id_Cargo int foreign key(Id_Cargo) references cargos(Id_Cargo)
)