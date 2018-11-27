use ConquistadoresBD
GO
------------------------------------------- PROCEDIMIENTOS ALMACENADOS -------------------------------------------
--1.PROCEDIMIENTO ALMACENADO PARA AGREGAR PERSONAS
create proc InsertarPersona(
	@Nombre nvarchar(25),
	@Apellidos nvarchar(50),
	@Sexo bit --0: HOMBRE , 1: MUJER
)as insert into persona (nombre,apellidos,sexo)
values(@Nombre,@Apellidos,@Sexo)
GO
--select * from persona
--exec InsertarPersona 'CACA','HUATE','1'

----PARA PROBAR EL SP 5
--INSERT INTO trabajador(trabajador_id,estatus,tipoEmp_id)
--VALUES(,0,1)
GO

--2.PROCEDIMIENTO ALMACENADO PARA MOSTRAR LOS INFORMACIÓN DE EL INSTRUCTOR REQUERIDO
create proc InfoInstructor(
	@IDTrabajador int
)as IF @IDTrabajador in (select trabajador_id from trabajador where tipoEmp_id=5) --5 ES DE TIPO INSTRUCTOR
	begin
		select p.nombre+' '+p.apellidos as [Trabajador], t.estatus as [Estatus], e.nombre as[Tipo Empleado],es.nombre as [Especialidad] from persona p 
		inner join trabajador t on p.id=t.trabajador_id 
		inner join tipoEmpleado e on e.id= t.tipoEmp_id 
		inner join EspecialidadTrabajador ea on ea.trabajador_id=t.trabajador_id
		inner join especialidad es on es.id= ea.especialidad_id
		where p.id=@IDTrabajador
	end
ELSE
	print 'El ID ingresado no pertenece a ningún instructor'

GO
--exec InfoInstructor '6'
GO
----------------------------INFORMACIÓN DE TODOS LOS INSTRUCTORES PARA CALAR EL SP 2-------------------------------------
--select * from persona p inner join trabajador t on p.id=t.trabajador_id inner join tipoEmpleado e on e.id= t.tipoEmp_id inner join EspecialidadTrabajador ea on ea.trabajador_id=t.trabajador_id inner join especialidad es on es.id= ea.especialidad_id

--3.PROCEDIMIENTO ALMACENADO PARA MOSTRAR LOS REQUISITOS PARA INVESTIRTE DE UNA CLASE EN PARTICULAR
create proc RequisitosInvestidura(
	@IDClase int
)as 
	declare @Num int
IF @IDClase in (select id from clase ) 
	begin
		select @Num=count(*)from(
		select a.id as [Actividad] from EspecialidadActividad ea 
		inner join actividad a on a.id = ea.actividad_id 
		inner join especialidad k on k.id = ea.especialidad_id 
		inner join clase c on c.id=k.clase_id
		where c.id=@IDClase
			union
		select  a.id as [Actividad] from clase cl
		inner join claseActividad ca on cl.id = ca.clase_id
		inner join actividad a on a.id = ca.actividad_id
		where cl.id=@IDClase) caca
			return @Num
	end
ELSE
	print 'El ID ingresado no es perteneciente a ninguna de las clases existentes'

GO
--exec RequisitosInvestidura '7'
GO

--4.PROCEDIMIENTO ALMACENADO PARA MOSTRAR EL CONTROL DE LOS DATOS DE UN NIÑO EN LAS REUNIONES A LAS QUE A ASISTIDO
create proc ControlNiño(
	@IDNiño int
)as IF @IDNiño in (select nino_id from ReunionNino)
	begin
		select c.reunion_id as [Reunion] , p.nombre+' '+p.apellidos as  [Niño], r.Fecha as[Fecha Reunio], c.Cantidad as[Cantidad de cuota],
		a.asistencia as[Asistencia], a.puntualidad as[Puntualidad],a.tarea as[Tarea], pu.Nombre as[Pulcritud] from PagoCuota c 
		inner join nino n on n.nino_id = c.nino_id
		inner join persona p on p.id = n.nino_id 
		inner join Reunion r on r.ID = c.reunion_id
		inner join ReunionNino a on a.nino_id=n.nino_id
		inner join Pulcritud pu on pu.ID = a.pulcritud_id
		where p.id=@IDNiño	
	end
ELSE
	begin
		IF @IDNiño in (select nino_id from nino)
			print 'El ID del niño ingresado no ha asistido a ninguna reunión'
		ELSE
			print 'El ID ingresado no pertenece a ningún niño'
	end
GO
--exec ControlNiño'87'
GO

---------NIÑOS QUE NO HAN ASISTIDO A NINGUNA REUNION
--select nino_id from nino except select nino_id from ReunionNino

--5.PROCEDIMIENTO ALMACENADO PARA ELIMINA UN EMPLEADO QUE YA NO ESTAN ACTIVOS
create proc EliminaEmpleado(
	@IDEmpleado int
)as IF @IDEmpleado in (select trabajador_id  from trabajador where estatus=0)
		delete trabajador where trabajador_id=@IDEmpleado
ELSE
	begin
		IF @IDEmpleado in (select trabajador_id  from trabajador)
			print 'El ID del empleado ingresado sigue activo'
		ELSE
			print 'El ID ingresado no pertenece a ningún empleado'
	end
GO
--select trabajador_id  from trabajador 
--exec EliminaEmpleado '301'
--select trabajador_id  from trabajador 

