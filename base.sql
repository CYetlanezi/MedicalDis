show databases;

create database medical;

use medical;

create table medicos (
	ntrabajador varchar(20) primary key,
	con varchar (20),
    paterno varchar(20),
    materno varchar(20),
	nombre varchar (20),
    genero varchar(10),
	nsocial varchar (20),
	anti varchar (20),
	cedula varchar (20),
    horario varchar(300)
);

create table alumnos (
	boleta varchar(20) primary key,
	con varchar (20),
    paterno varchar(20),
    materno varchar(20),
	nombre varchar (20),
    genero varchar(10),
    aler varchar(300),
	nsocial varchar (20),
	tutor varchar (50),
	nstutor varchar (20),
    correo varchar(300)
);

create table consultas (
	idconsulta varchar(20) primary key,
	fecha varchar (20),
    boleta varchar(20),
    grupo varchar(20),
    edad varchar(20),
	peso varchar (20),
    talla varchar(10),
    temp varchar(20),
	sint varchar (300),
	trata varchar (100),
	observa varchar (100),    
	ntrabajador varchar (20),
    foreign key(boleta) references alumnos(boleta),
    foreign key(ntrabajador) references medicos(ntrabajador)
);

create table medicamento (
	idalma varchar(20) primary key,
	nombrem varchar (40),
    factiva varchar(40),
    lab varchar(20),
	tipo varchar (20),
    porcion varchar(20),
    vadmi varchar(30),
	uso varchar (30),
	res varchar (50),
	cadu varchar (20),
    cant varchar(10),
    tipoc varchar(30)
);
select * from alumnos;

create table material (
	idalma varchar(20) primary key,
	nombrem varchar (40),
    marca varchar(40),
	uso varchar (30),
    cant varchar(10)
);

create table conmed(
	idalma varchar(50),
    nombrem varchar (20),
    factiva varchar (20),
    dur varchar (20),
    tiem varchar (20),
    frec varchar (20),
    tiemf varchar (20),
    control varchar (20),
    cant varchar (20),
    dosis varchar (20),
	idconsulta varchar(20),
	foreign key(idconsulta) references consultas(idconsulta),
	foreign key(idalma) references medicamento(idalma)	
);

create table calendari(
	dia varchar(2),
	mes varchar(10),
	anio varchar(4),
	actividad varchar(10000)
);	


insert into alumnos values('2013090000','lol','Gutierrez','Torres','Claudia','Femenino','Al polen','998989','Mama de Claudia','787878787','saturn@hotmail.com');
insert into medicos values('200','xd','Meneses','Medina','Arturo','Masculino','555','12','333','12:00 - 20:00');
insert into medicamento values('1','Guayamax','Guayatetra','Patito','Antibiotico','500mg','Intravenosa','Infeccion','Recomendado','hoy','99','cajas');
insert into medicamento values('2','Clidamax','Clindamincina','Patito','Antibiotico','500mg','Intravenosa','Infeccion','Recomendado','hoy','99','cajas');
insert into medicamento values('3','Amox','Amoxixilina','Patito','Antibiotico','500mg','Intravenosa','Infeccion','Recomendado','hoy','99','cajas');
insert into medicamento values('4','Febrax','Naproxeno sodico c/ Paracetamol','Patito','Analgesico','500mg','Intravenosa','Infeccion','Recomendado','hoy','99','cajas');
insert into medicamento values('5','Aspirina','Acido Acetasilsalicilico','Patito','Analgesico','500mg','Intravenosa','Infeccion','Recomendado','hoy','99','cajas');
insert into medicamento values('6','Flanax','Esa wea','Patito','Antiestaminico','500mg','Intravenosa','Infeccion','Proporcionado','ayer','1','dosis');
insert into medicamento values('7','Analgel','Dolor','Patito','Antiestaminico','500mg','Intravenosa','Infeccion','Proporcionado','ayer','1','dosis');
insert into medicamento values('8','QG5','cal sodada','Patito','Laxante','500mg','Intravenosa','Infeccion','Proporcionado','ayer','1','dosis');
insert into medicamento values('9','Colgate','Quien sabe','Patito','Antiseptico','500mg','Intravenosa','Infeccion','Proporcionado','ayer','1','dosis');
insert into medicamento values('10','Alcohol etilico','Felipillo','Patito','Desinfectante','500mg','Intravenosa','Infeccion','Proporcionado','ayer','1','dosis');
insert into medicamento values('11','Agua oxigenada','Mejor benzal','Patito','Desinfectante','500mg','Intravenosa','Infeccion','Proporcionado','ayer','1','dosis');
