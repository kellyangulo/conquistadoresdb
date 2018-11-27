use ConquistadoresBD
GO
------------------------------------------- TRIGGERS -------------------------------------------

--1.TRIGGER PARA GUARDAR LOS NIÑOS MÁS CUMPLIDOS
create trigger TG_NiñoMasCumplido on ReunionNino for insert
as  
	declare @NiñoID int
	declare @ReunionID int

	select @NiñoID=nino_id,@ReunionID=reunion_id from inserted 

	if(@NiñoID)  in (select nino_id from ReunionNino where puntualidad = 1 and pulcritud_id = 1 and tarea = 1 and asitencia = 1)
		insert into MasCumplido(nino_id,reunion_id) values(@NiñoID,@ReunionID) 

go
--select * from MasCumplido
go

--2.TRIGGER PARA AGREGAR LOS NIÑOS INSERTADOS EN LA TABLA "nino" A LA VISTA "Niño_View"
create trigger TG_AgregaNiñoVista on nino for insert
as  
	declare @Niño int
	declare @Estatura tinyint
	declare @Peso tinyint
	declare @Fecha date
	declare @Edad int
	declare @Nombre varchar

	select @Niño=nino_id, @Estatura=estatura, @Peso=peso, @Fecha=fecha_nacimiento from inserted 
	
	select @Nombre=p.nombre+' '+p.apellidos, @Edad=DATEDIFF(yy,@Fecha,GETDATE()) from nino n
	inner join persona p on n.nino_id = p.id 
	where nino_id=@Niño

	insert into Niño_View(Niño,Estatura,Peso,Edad)  values(@Nombre,@Estatura,@Peso,@Edad)

go
--select * from Niño_View 
go

--3.TRIGGER PARA MOSTRAR LOS NIÑOS QUE YA PUEDEN INVESTIRSE DE LA CLASE QUE CURSAN
create trigger TG_Investidura on ninoActividad for insert
as
	declare @NiñoID int
	declare @IDClase int

	select @Niño=i.nino_id,@IDClase=clase_id from inserted i inner join ninoClase n on i.nino_id=n.nino_id

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

	insert into Niño_Investidura(nino_id,clase_id) values (@NiñoID,@IDClase)

go
--select * from Niño_Investidura
go
