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
alter table club
add constraint UQ_Nombre unique (nombre)

create table campamento(
	id int identity,
	nombre nvarchar(80) not null,
	fecha date not null,
	calle  nvarchar (50) not null,
	colonia nvarchar (30) not null,
	constraint PK_campamento primary key(id)
)

alter table campamento
add constraint UQ_NombreFecha unique (fecha,nombre)

alter table campamento
add constraint CK_fechaCampamento check (fecha <= getdate())

create table tipoEmpleado(
	id int identity,
	nombre nvarchar (80) not null,
	constraint PK_tipoEmpleado primary key(id)
)

create table clase(           
	id int identity,
	nombre nvarchar(80) not null, 
	color varchar (20) not null, 
	Rango_Edad int, 
	constraint PK_clase primary key (id)
)
alter table clase
add constraint UQ_clase unique (nombre)

create table actividad(
	id int identity,
	nombre nvarchar (80) not null, 
	constraint PK_actividad primary key (id)
)

create table persona(                      
	id int identity,
	nombre nvarchar(25) not null,
	apellidos nvarchar(50) not null, 
	sexo bit not null,
	constraint PK_persona primary key(id)
)

create table alergia(
	id int identity,
	descrip varchar(300) not null,
	constraint PK_alergia primary key (id)
)
alter table alergia
add constraint UQ_DescripcionAlergia unique (descrip)

create table Ocupacion(
	ID int identity,
	Nombre varchar (30) not null
)
alter table Ocupacion
add constraint PK_Ocupacion primary key(ID)

alter table Ocupacion
add constraint UQ_NombreOcupacion unique (Nombre)

create table Reunion(
	ID int identity,
	Fecha date not null,
	Cuota smallint 
)
alter table Reunion 
add constraint PK_ReunionID primary key (ID)

alter table Reunion 
add constraint CK_FechaReunion check (Fecha <= getdate())

alter table Reunion 
add constraint CK_Cuota check (Cuota >= 0 )

create table Pulcritud(
	ID tinyint identity,
	Nombre varchar(10) not null
)
alter table Pulcritud
add constraint PK_PulcritudID primary key (ID)

---------------------------------------------TABLAS DEPENDIENTES---------------------------------------------
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

alter table unidad
add constraint UQ_Club_Unidad unique (nombre,club_id,genero)

create table campamentoUnidad(
	unidad_id int not null,
	campamento_id int not null,
	constraint FK_unidad_campamentoUnidad foreign key (unidad_id) references unidad (id),
	constraint FK_campamento_capmentoUnidad foreign key (campamento_id) references campamento (id)
)

alter table campamentoUnidad
add constraint UQ_Campamento_Unidad unique (unidad_id,campamento_id)

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

create table especialidad (  
	id int identity,
	nombre nvarchar (50) not null, 
	descrip nvarchar (80),
	clase_id int not null
	constraint PK_especialidad primary key(id)
)
alter table especialidad
add constraint FK_Especialidad_Clase foreign key (clase_id) references clase(id)

alter table especialidad
add constraint UQ_Especialidad unique (nombre,descrip)

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
	estatura tinyint  not null,
	peso tinyint not null,
	padre_id int,
	fecha_nacimiento date not null, 
	constraint FK_persona_nino foreign key (nino_id) references persona (id),
	constraint FK_padre_nino foreign key (padre_id) references padre(padre_id),
	constraint PK_nino primary key (nino_id)
)

alter table nino
add constraint CK_FechaNacimiento check (fecha_nacimiento < getdate())

create table alergiaNino(
	nino_id int not null,
	alergia_id int not null,
	constraint FK_nino_alergia_nino foreign key (nino_id) references nino (nino_id),
	constraint FK_alergia_alergia_nino foreign key (alergia_id) references alergia (id)
)
alter table alergiaNino
add constraint UQ_Alergia_Nino unique (nino_id,alergia_id)

create table ninoActividad(
	actividad_id int not null,
	nino_id int not null,
	fecha_realizacion date
	constraint FK_actividad_ninoActividad foreign key (actividad_id) references actividad(id),
	constraint FK_nino_ninoActividad foreign key (nino_id) references nino (nino_id)
)

alter table ninoActividad
add constraint CK_FechaninoActividad check (fecha_realizacion <= getdate())

create table PagoCuota(
	ID int identity not null,
	nino_id int not null,
	reunion_id int not null,
	FechaPago date not null,
	Cantidad int not null
)

alter table PagoCuota
add constraint PK_PagoCuotaID primary key (ID)

alter table PagoCuota
add constraint CK_FechaPagoCuota check (FechaPago <= getdate())

alter table PagoCuota
add constraint FK_PagoCuota_nino foreign key (nino_id) references nino (nino_id)

alter table PagoCuota
add constraint FK_PagoCuota_ReunionID foreign key (reunion_id) references Reunion (ID)

alter table PagoCuota
add constraint CK_Cantidad check (Cantidad > 0)


create table ReunionNino(
	nino_id int not null,
	reunion_id int not null,
	puntualidad bit,
	pulcritud_id tinyint,
	tarea bit, 
	asitencia bit,
	PagoCuotaID int
	constraint FK_ReunionNino_nino foreign key (nino_id) references nino (nino_id),
	constraint FK_ReunionNinoID foreign key (reunion_id) references Reunion(ID),
	constraint FK_PulcritudIDn foreign key (pulcritud_id) references Pulcritud (ID)
)

alter table ReunionNino
add constraint FK_ReunionNino_PagoCuota foreign key (PagoCuotaID) references PagoCuota (ID)

create table ninoUnidad(
	nino_id int not null,
	unidad_id int not null,
	fecha date
)
alter table ninoUnidad
add constraint FK_ninoUnidad_nino foreign key (nino_id) references nino (nino_id)

alter table ninoUnidad
add constraint FK_ninoUnidad_unidad foreign key (unidad_id) references unidad(id)

alter table ninoUnidad
add constraint CK_FechaNinoUnidad check (fecha <= getdate())

create table ninoClase(
	nino_id int not null,
	clase_id int not null,
	fecha date
)
alter table ninoClase
add constraint FK_ninoClase_nino foreign key (nino_id) references nino(nino_id)

alter table ninoClase
add constraint CK_FechaNinoClase check (fecha <= getdate())

alter table ninoClase
add constraint FK_ninoClase_clase foreign key (clase_id) references clase(id)

create table trabajador(
	trabajador_id int,
	estatus bit not null,
	tipoEmp_id int not null,
	constraint FK_persona_trabajador foreign key (trabajador_id) references persona (id),
	constraint FK_tipoEmp_trabajador foreign key (tipoEmp_id) references tipoEmpleado (id),
	constraint PK_trabajador primary key (trabajador_id)
)
create table HistorialTrabajador(
	trabajador_id int not null,
	club_id int not null,
	fecha date not null,
)
alter table HistorialTrabajador
add constraint FK_HistorialTrabajador_Trabajador foreign key (trabajador_id) references trabajador (trabajador_id)

alter table HistorialTrabajador
add constraint CK_Fecha_HistorialTrabajador check (fecha <= getdate())

create table EspecialidadTrabajador(
	trabajador_id int not null,
	especialidad_id int not null,
	constraint FK_trabajador_EspecialidadTrabajador foreign key (trabajador_id) references trabajador (trabajador_id),
	constraint FK_especialidad_EspecialidadTrabajador foreign key (especialidad_id) references especialidad (id)
)

