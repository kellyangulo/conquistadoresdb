use ConquistadoresBD
GO
------------------------------------------- TRIGGERS -------------------------------------------

--1.TRIGGER PARA GUARDAR LOS NI�OS M�S CUMPLIDOS
create trigger TG_Ni�oMasCumplido on ReunionNino for insert
as  
	declare @Ni�oID int
	declare @ReunionID int

	select @Ni�oID=nino_id,@ReunionID=reunion_id from inserted 

	if(@Ni�oID)  in (select nino_id from ReunionNino where puntualidad = 1 and pulcritud_id = 1 and tarea = 1 and asitencia = 1)
		insert into MasCumplido(nino_id,reunion_id) values(@Ni�oID,@ReunionID) 

go
--select * from MasCumplido
go

--2.TRIGGER PARA AGREGAR LOS NI�OS INSERTADOS EN LA TABLA "nino" A LA VISTA "Ni�o_View"
create trigger TG_AgregaNi�oVista on nino for insert
as  
	declare @Ni�o int
	declare @Estatura tinyint
	declare @Peso tinyint
	declare @Fecha date
	declare @Edad int
	declare @Nombre varchar

	select @Ni�o=nino_id, @Estatura=estatura, @Peso=peso, @Fecha=fecha_nacimiento from inserted 
	
	select @Nombre=p.nombre+' '+p.apellidos, @Edad=DATEDIFF(yy,@Fecha,GETDATE()) from nino n
	inner join persona p on n.nino_id = p.id 
	where nino_id=@Ni�o

	insert into Ni�o_View(Ni�o,Estatura,Peso,Edad)  values(@Nombre,@Estatura,@Peso,@Edad)

go
--select * from Ni�o_View 
go

--3.TRIGGER PARA MOSTRAR LOS NI�OS QUE YA PUEDEN INVESTIRSE DE LA CLASE QUE CURSAN
create trigger TG_Investidura on ninoActividad for insert
as
	declare @Ni�oID int
	declare @IDClase int

	select @Ni�o=i.nino_id,@IDClase=clase_id from inserted i inner join ninoClase n on i.nino_id=n.nino_id

		select actividad_id from EspecialidadActividad ea 
		inner join actividad a on a.id = ea.actividad_id 
		inner join especialidad k on k.id = ea.especialidad_id 
		inner join clase c on c.id=k.clase_id
		where c.id=@IDClase
			union
		select actividad_id from clase cl
		inner join claseActividad ca on cl.id = ca.clase_id
		inner join actividad a on a.id = ca.actividad_id
		where cl.id=@IDClase

	--exec RequisitosInvestidura @IDClase

	insert into Ni�o_Investidura(nino_id,clase_id) values (@Ni�oID,@IDClase)

go
--select * from Ni�o_Investidura
go
