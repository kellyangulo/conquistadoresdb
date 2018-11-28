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
go

alter table club
add constraint UQ_Nombre unique (nombre)

go
create table campamento(
	id int identity,
	nombre nvarchar(80) not null,
	fecha date not null,
	calle  nvarchar (50) not null,
	colonia nvarchar (30) not null,
	constraint PK_campamento primary key(id)
)
go

alter table campamento
add constraint UQ_NombreFecha unique (fecha,nombre)

alter table campamento
add constraint CK_fechaCampamento check (fecha <= getdate())

go
create table tipoEmpleado(
	id int identity,
	nombre nvarchar (80) not null,
	constraint PK_tipoEmpleado primary key(id)
)
go
create table clase(           
	id int identity,
	nombre nvarchar(80) not null, 
	color varchar (20) not null, 
	Rango_Edad int, 
	constraint PK_clase primary key (id)
)
go

alter table clase
add constraint UQ_clase unique (nombre)

go
create table actividad(
	id int identity,
	nombre nvarchar (80) not null, 
	constraint PK_actividad primary key (id)
)
go
create table persona(                      
	id int identity,
	nombre nvarchar(25) not null,
	apellidos nvarchar(50) not null, 
	sexo bit not null,
	constraint PK_persona primary key(id)
)
go
create table alergia(
	id int identity,
	descrip varchar(300) not null,
	constraint PK_alergia primary key (id)
)
go

alter table alergia
add constraint UQ_DescripcionAlergia unique (descrip)

go
create table Ocupacion(
	ID int identity,
	Nombre varchar (30) not null
)
go

alter table Ocupacion
add constraint PK_Ocupacion primary key(ID)

alter table Ocupacion
add constraint UQ_NombreOcupacion unique (Nombre)

go
create table Reunion(
	ID int identity,
	Fecha date not null,
	Cuota smallint 
)
go

alter table Reunion 
add constraint PK_ReunionID primary key (ID)

alter table Reunion 
add constraint CK_FechaReunion check (Fecha <= getdate())

alter table Reunion 
add constraint CK_Cuota check (Cuota >= 0 )

go
create table Pulcritud(
	ID tinyint identity,
	Nombre varchar(10) not null
)
go

alter table Pulcritud
add constraint PK_PulcritudID primary key (ID)

---------------------------------------------TABLAS DEPENDIENTES---------------------------------------------
go
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
go

alter table unidad
add constraint UQ_Club_Unidad unique (nombre,club_id,genero)

go
create table campamentoUnidad(

	unidad_id int not null,
	campamento_id int not null,
	constraint FK_unidad_campamentoUnidad foreign key (unidad_id) references unidad (id),
	constraint FK_campamento_capmentoUnidad foreign key (campamento_id) references campamento (id)
)
go

alter table campamentoUnidad
add constraint UQ_Campamento_Unidad unique (unidad_id,campamento_id)

go
create table clubClase(

	club_id int not null,
	clase_id int not null,
	constraint FK_club_clubClase foreign key (club_id) references club(id),
	constraint FK_clase_clubClase foreign key (clase_id) references clase(id)
)
go
create  table claseActividad(

	clase_id int not null, 
	actividad_id int not null,
	constraint FK_clase_claseActividad foreign key (clase_id) references clase(id),
	constraint FK_actividad_claseActividad foreign key (actividad_id) references actividad(id)
)
go
create table especialidad (  

	id int identity,
	nombre nvarchar (50) not null, 
	descrip nvarchar (80),
	clase_id int not null
	constraint PK_especialidad primary key(id)
)
go

alter table especialidad
add constraint FK_Especialidad_Clase foreign key (clase_id) references clase(id)

alter table especialidad
add constraint UQ_Especialidad unique (nombre,descrip)

go
create table EspecialidadActividad(    
     
	especialidad_id int not null,
	actividad_id int not null,
	constraint FK_EspecialidadActividad_Especialidad foreign key (especialidad_id) references especialidad(id),
	constraint FK_EspecialidadActividad_Actividad foreign key (actividad_id) references actividad(id)
)
go
create table padre(

	padre_id int,
	Ocupacion_ID int not null
	constraint FK_persona_padre foreign key (padre_id) references persona (id),
	constraint PK_padre primary key (padre_id)
)
go

alter table padre
add constraint FK_Padre_OcupacionID foreign key (Ocupacion_ID) references Ocupacion (ID)

go
create table telefonoPadre(

	numero varchar(10) not null,
	padre_id int not null, 
	constraint FK_telefono_padre foreign key (padre_id) references padre (padre_id)
)
go

alter table telefonoPadre
add constraint UQ_telefonoPadre unique (numero)                      

go
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
go

alter table nino
add constraint CK_FechaNacimiento check (fecha_nacimiento < getdate())

go
create table alergiaNino(

	nino_id int not null,
	alergia_id int not null,
	constraint FK_nino_alergia_nino foreign key (nino_id) references nino (nino_id),
	constraint FK_alergia_alergia_nino foreign key (alergia_id) references alergia (id)
)
go

alter table alergiaNino
add constraint UQ_Alergia_Nino unique (nino_id,alergia_id)

go
create table ninoActividad(
	actividad_id int not null,
	nino_id int not null,
	fecha_realizacion date
	constraint FK_actividad_ninoActividad foreign key (actividad_id) references actividad(id),
	constraint FK_nino_ninoActividad foreign key (nino_id) references nino (nino_id)
)
go

alter table ninoActividad
add constraint CK_FechaninoActividad check (fecha_realizacion <= getdate())

alter table ninoActividad
add constraint UQ_ninoActividad unique (nino_id,actividad_id,fecha_realizacion)

go
create table PagoCuota(
	ID int identity not null,
	nino_id int not null,
	reunion_id int not null,
	FechaPago date not null,
	Cantidad int not null
)
go

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

go
create table ReunionNino(
	nino_id int not null,
	reunion_id int not null,
	puntualidad bit,
	pulcritud_id tinyint,
	tarea bit, 
	asistencia bit,
	PagoCuotaID int,
	constraint FK_ReunionNino_nino foreign key (nino_id) references nino (nino_id),
	constraint FK_ReunionNinoID foreign key (reunion_id) references Reunion(ID),
	constraint FK_PulcritudIDn foreign key (pulcritud_id) references Pulcritud (ID)
)
go

alter table ReunionNino
add constraint FK_ReunionNino_PagoCuota foreign key (PagoCuotaID) references PagoCuota (ID)

alter table ReunionNino
add constraint UQ_ReunionNino unique (nino_id,reunion_id)

go
create table ninoUnidad(
	nino_id int not null,
	unidad_id int not null,
	fecha date not null
)
go

alter table ninoUnidad
add constraint FK_ninoUnidad_nino foreign key (nino_id) references nino (nino_id)

alter table ninoUnidad
add constraint FK_ninoUnidad_unidad foreign key (unidad_id) references unidad(id)

alter table ninoUnidad
add constraint CK_FechaNinoUnidad check (fecha <= getdate())

alter table ninoUnidad
add constraint UQ_ninoUnidad unique (nino_id,unidad_id,fecha)

go
create table ninoClase(
	nino_id int not null,
	clase_id int not null,
	fecha date
)
go

alter table ninoClase
add constraint FK_ninoClase_nino foreign key (nino_id) references nino(nino_id)

alter table ninoClase
add constraint CK_FechaNinoClase check (fecha <= getdate())

alter table ninoClase
add constraint FK_ninoClase_clase foreign key (clase_id) references clase(id)

alter table ninoClase
add constraint UQ_ninoClase unique (nino_id,clase_id,fecha)

go
create table trabajador(
	trabajador_id int,
	estatus bit not null,
	tipoEmp_id int not null,
	constraint FK_persona_trabajador foreign key (trabajador_id) references persona (id),
	constraint FK_tipoEmp_trabajador foreign key (tipoEmp_id) references tipoEmpleado (id),
	constraint PK_trabajador primary key (trabajador_id)
)
go
create table HistorialTrabajador(
	trabajador_id int not null,
	club_id int not null,
	fecha date not null,
)
go

alter table HistorialTrabajador
add constraint FK_HistorialTrabajador_Trabajador foreign key (trabajador_id) references trabajador (trabajador_id)

alter table HistorialTrabajador
add constraint FK_HistorialTrabajador_Club foreign key (club_id) references club (id)

alter table HistorialTrabajador
add constraint CK_Fecha_HistorialTrabajador check (fecha <= getdate())

alter table HistorialTrabajador
add constraint UQ_HistorialTrabajador unique (trabajador_id,club_id,fecha)

go
create table EspecialidadTrabajador(
	trabajador_id int not null,
	especialidad_id int not null,
	constraint FK_trabajador_EspecialidadTrabajador foreign key (trabajador_id) references trabajador (trabajador_id),
	constraint FK_especialidad_EspecialidadTrabajador foreign key (especialidad_id) references especialidad (id)
)
go
create table Padre_Nino
(
	IDNino int not null,
	IDPapa int not null
)
go

alter table Padre_Nino
add constraint FK_Padre_Nino_PapaID Foreign key (IDPapa) references padre (padre_id)

alter table Padre_Nino
add constraint FK_Padre_Nino_NiñoID Foreign key (IDNino) references nino (nino_id)

alter table Padre_Nino
add constraint UQ_Padre_Niño unique (IDPapa,IDNino)

go
create table ninoClub
(
	nino_id int not null,
	club_id int not null,
	fecha date not null
)
go

alter table ninoClub
add constraint FK_ninoClub_nino foreign key (nino_id) references nino (nino_id)

alter table ninoClub
add constraint FK_ninoClub_club foreign key (club_id) references club(id)

alter table ninoClub
add constraint CK_FechaNinoClub check (fecha <= getdate())

alter table ninoClub
add constraint UQ_ninoClub unique (nino_id,club_id,fecha)

go
create table Niño_Investidura(
	nino_id int not null,
	clase_id int not null 
)
go

alter table Niño_Investidura
add constraint FK_Niño_Investidura_nino foreign key (nino_id) references nino (nino_id)

alter table Niño_Investidura
add constraint FK_Niño_Investidura_clase foreign key (clase_id) references clase(id)

alter table Niño_Investidura
add constraint UQ_Investidura unique (nino_id,clase_id)

go

create table MasCumplido(
	nino_id int not null,
	reunion_id int not null
)
go

alter table MasCumplido
add constraint FK_Niño_MasCumplido foreign key (nino_id) references nino (nino_id)

alter table MasCumplido
add constraint FK_Reunin_MasCumplido foreign key (reunion_id) references Reunion(ID)

alter table MasCumplido
add constraint UQ_MasCumplido unique (nino_id,reunion_id)

go

create table NiñoEspecialidadCumplida(
	NiñoID int not null,
	EspecialidadID int not null
)
go

alter table  NiñoEspecialidadCumplida
add constraint FK_Niño_NiñoEspecialidadCumplida foreign key (NiñoID) references nino (nino_id)

alter table  NiñoEspecialidadCumplida
add constraint FK_Especialidad_NiñoEspecialidadCumplida foreign key (EspecialidadID) references especialidad (id)

alter table  NiñoEspecialidadCumplida
add constraint UQ_NiñoEspecialidadCumplida unique (NiñoID,EspecialidadID)
