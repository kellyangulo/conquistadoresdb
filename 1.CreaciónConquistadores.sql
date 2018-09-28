create database  ConquistadoresBD
go
use ConquistadoresBD
go
 
create table club(

	id int identity, 
	nombre nvarchar(80) not null, 
	calle nvarchar (50) not null,
	colonia nvarchar (30) not null,
	codigo_postal varchar (5) not null,
	logo_tipo text not null,
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

create table tipoEmpleado(
	id int identity,
	nombre nvarchar (80) not null,
	constraint PK_tipoEmpleado primary key(id)
)

create table clase(            -----MODIFICADA
	id int identity,
	nombre nvarchar(80) not null, 
	color varchar (20) not null, 
	Rango_Edad int, 
	constraint PK_clase primary key (id)
)


create table actividad(
	id int identity,
	nombre nvarchar (80) not null, 
	constraint PK_actividad primary key (id)
)

create table persona(                  ------MODIFICADA          
	id int identity,
	nombre nvarchar(100) not null,
	sexo bit not null,
	constraint PK_persona primary key(id)
)

create table alergia(
	id int identity,
	descrip text not null,
	constraint PK_alergia primary key (id)
)

create table Ocupacion(
	ID int identity,
	Nombre varchar (30) not null
)
alter table Ocupacion
add constraint PK_Ocupacion primary key(ID)

--------Empieza las tablas que dependen
create table unidad(
	id int identity,
	club_id int,
	lema text not null,
	nombre nvarchar (80) not null,
	logo text not null,
	genero bit not null
	constraint PK_unidad primary key(id),
	constraint FK_club_unidad foreign key (club_id) references club (id)
)
create table campamentoUnidad(
	unidad_id int not null,
	campamento_id int not null,
	constraint FK_unidad_campamentoUnidad foreign key (unidad_id) references unidad (id),
	constraint FK_campamento_capmentoUnidad foreign key (campamento_id) references campamento (id)
)

create table clubClase(
	club_id int not null,
	clase_id int not null,
	constraint FK_club_clubClase foreign key (club_id) references club(id),
	constraint FK_clase_clubClase foreign key (clase_id) references clase(id)
)

create  table claseActividad(
	clase_id int not null, 
	actividad_id int not null,
	constraint FK_clase_claseActividad foreign key (clase_id) references clase(id),
	constraint FK_actividad_claseActividad foreign key (actividad_id) references actividad(id)
)


create table especialidad (  ------MODIFICADA     
	id int identity,
	nombre nvarchar (80) not null, 
	descrip text,
	clase_id int not null
	constraint PK_especialidad primary key(id)
)
alter table especialidad
add constraint FK_Especialidad_Clase foreign key (clase_id) references clase(id)

create table EspecialidadActividad(         
	especialidad_id int not null,
	actividad_id int not null,
	constraint FK_EspecialidadActividad_Especialidad foreign key (especialidad_id) references especialidad(id),
	constraint FK_EspecialidadActividad_Actividad foreign key (actividad_id) references actividad(id)
)


create table padre(
	padre_id int,
	Ocupacion_ID int not null
	constraint FK_persona_padre foreign key (padre_id) references persona (id),
	constraint PK_padre primary key (padre_id)
)
alter table padre
add constraint FK_Padre_OcupacionID foreign key (Ocupacion_ID) references Ocupacion (ID)

create table telefonoPadre(
	numero varchar(10) not null,
	padre_id int not null, 
	constraint FK_telefono_padre foreign key (padre_id) references padre (padre_id)
)
                      
create table nino(                                 
	nino_id int, 
	unidad_id int not null,
	estatura tinyint  not null,
	peso tinyint not null,
	padre_id int,
	fecha_nacimiento date not null, 
	clase_id int not null,
	constraint PK_Unidad_nino foreign key (unidad_id) references unidad(id),
	constraint FK_persona_nino foreign key (nino_id) references persona (id),
	constraint FK_padre_nino foreign key (padre_id) references padre(padre_id),
	constraint PK_nino primary key (nino_id)
)

create table alergiaNino(
	nino_id int not null,
	alergia_id int not null,
	constraint FK_nino_alergia_nino foreign key (nino_id) references nino (nino_id),
	constraint FK_alergia_alergia_nino foreign key (alergia_id) references alergia (id)
)

create table ninoActividad(
	actividad_id int not null,
	nino_id int not null,
	fecha_realizacion date
	constraint FK_actividad_ninoActividad foreign key (actividad_id) references actividad(id),
	constraint FK_nino_ninoActividad foreign key (nino_id) references nino (nino_id)
)

create table Reunion(
	ID int identity,
	Fecha date not null
)
alter table Reunion 
add constraint PK_ReunionID primary key (ID)

create table Pulcritud(
	ID tinyint identity,
	Nombre varchar(10) not null
)
alter table Pulcritud
add constraint PK_PulcritudID primary key (ID)

create table ReunionNino(
	
	nino_id int not null,
	reunion_id int not null,
	puntualidad bit,
	pulcritud_id tinyint,
	tarea bit, 
	asitencia bit,
	constraint FK_ReunionNino_nino foreign key (nino_id) references nino (nino_id),
	constraint FK_ReunionNinoID foreign key (reunion_id) references Reunion(ID),
	constraint FK_PulcritudIDn foreign key (pulcritud_id) references Pulcritud (ID)
)

create table trabajador(
	trabajador_id int,
	fechaInicio date,
	estatus bit not null,
	club_id int not null,
	tipoEmp_id int not null,
	constraint FK_persona_trabajador foreign key (trabajador_id) references persona (id),
	constraint FK_club_trabajador foreign key (club_id) references club (id),
	constraint FK_tipoEmp_trabajador foreign key (tipoEmp_id) references tipoEmpleado (id),
	constraint PK_trabajador primary key (trabajador_id)
)

create table HistorialTrabajador(
	trabajador_id int not null,
	especialidad_id int not null,
	constraint FK_trabajador_HistorialTrabajador foreign key (trabajador_id) references trabajador (trabajador_id),
	constraint FK_especialidad_HistorialTrabajador foreign key (especialidad_id) references especialidad (id)
)

--drop database ConquistadoresBD