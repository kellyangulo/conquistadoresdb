create database  Conquistadores
go

use Conquistadores
go

create table club(

	id int identity, 
	nombre nvarchar(80) not null, 
	calle nvarchar (50) not null,
	colonia nvarchar (30) not null,
	codigo_postal varchar (5) not null,
	logo_tipo varchar (200) not null,
	constraint PK_club primary key(id)
)

create table campamento(
	id int identity,
	nombre nvarchar(80) not null,
	fecha date,
	calle  nvarchar (50) not null,
	colonia nvarchar (30) not null,
	constraint PK_campamento primary key(id)
)

create table especialidad (
	id int identity,
	nombre nvarchar (80) not null, 
	descrip text
	constraint PK_especialidad primary key(id)
)
create table tipoEmpleado(
	id int identity,
	nombre nvarchar (80) not null,
	constraint PK_tipoEmpleado primary key(id)
)

create table clase(
	id int identity,
	nombre nvarchar(80) not null, 
	color varchar (9) not null, --hexa solo exitos
	constraint PK_clase primary key (id)
)

create table actividad(
	id int identity,
	nombre nvarchar (80) not null, 
	descrip text,
	constraint PK_actividad primary key (id)
)

create table persona(
	id int identity,
	nombre nvarchar(100) not null,
	fecha_nacimiento date, 
	sexo char not null,
	constraint PK_persona primary key(id)
)

create table alergia(
	id int identity,
	descrip text,
	constraint PK_alergia primary key (id)
)


--------Empieza las tablas que dependen
create table unidad(
	id int identity,
	club_id int,
	lema varchar (60) not null,
	nombre nvarchar (80) not null,
	logo varchar (200) not null,
	genero char not null
	constraint PK_unidad primary key(id),
	constraint FK_club_unidad foreign key (club_id) references club (id)
)
create table campamentoUnidad(
	unidad_id int,
	campamento_id int,
	constraint FK_unidad_campamentoUnidad foreign key (unidad_id) references unidad (id),
	constraint FK_campamento_capmentoUnidad foreign key (campamento_id) references campamento (id)
)

create table clubClase(
		club_id int,
		clase_id int,
		constraint FK_club_clubClase foreign key (club_id) references club(id),
		constraint FK_clase_clubClase foreign key (clase_id) references clase(id)
)

create  table claseActividad(
	clase_id int, 
	actividad_id int,
	constraint FK_clase_claseActividad foreign key (clase_id) references clase(id),
	constraint FK_actividad_claseActividad foreign key (actividad_id) references actividad(id)
)

create table requisito(
	especialidad_id int,
	actividad_id int,
	constraint FK_especialidad_requisito foreign key (especialidad_id) references especialidad(id),
	constraint FK_actividad_requisito foreign key (actividad_id) references actividad(id)
)

create table telefono(
	numero varchar(10),
	persona_id int, 
	constraint FK_persona_telefono foreign key (persona_id) references persona (id)
)

create table padre(
	padre_id int,
	ocupacion nvarchar(30),
	constraint FK_persona_padre foreign key (padre_id) references persona (id),
	constraint PK_padre primary key (padre_id)
)
                                 
create table nino(                                        
	nino_id int, 
	estatura numeric (18,3),
	peso numeric(18,3),
	padre_id int,
	constraint FK_persona_nino foreign key (nino_id) references persona (id),
	constraint FK_padre_nino foreign key (padre_id) references padre(padre_id),
	constraint PK_nino primary key (nino_id)
)

create table alergiaNino(
	nino_id int,
	alergia_id int,
	constraint FK_nino_alergia_nino foreign key (nino_id) references nino (nino_id),
	constraint FK_alergia_alergia_nino foreign key (alergia_id) references alergia (id)
)

create table ninoActividad(
	actividad_id int,
	nino_id int,
	constraint FK_actividad_ninoActividad foreign key (actividad_id) references actividad(id),
	constraint FK_nino_ninoActividad foreign key (nino_id) references nino (nino_id)
)

create table ninoClase(
	nino_id int,
	clase_id int,
	puntualidad int,
	pulcritud int,
	tarea text, 
	asitencia int,
	constraint FK_nino_ninoClase foreign key (nino_id) references nino (nino_id),
	constraint FK_clase_ninoClase foreign key (clase_id) references clase (id)
)

create table trabajador (
	trabajador_id int,
	fechaInicio date,
	estatus bit not null,
	club_id int,
	tipoEmp_id int,
	constraint FK_persona_trabajador foreign key (trabajador_id) references persona (id),
	constraint FK_club_trabajador foreign key (club_id) references club (id),
	constraint FK_tipoEmp_trabajador foreign key (tipoEmp_id) references tipoEmpleado (id),
	constraint PK_trabajador primary key (trabajador_id)
)

create table espeInst(
	trabajador_id int,
	especialidad_id int,
	constraint FK_trabajador_espeInst foreign key (trabajador_id) references trabajador (trabajador_id),
	constraint FK_especialidad_espeInst foreign key (especialidad_id) references especialidad (id)
)

SELECT count(*) FROM
Conquistadores.INFORMATION_SCHEMA.TABLES;

use cacas
go

drop database Conquistadores
go