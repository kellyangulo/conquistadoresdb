use ConquistadoresBD
GO
------------------------------------------- TRIGGERS -------------------------------------------
--1.TRIGGER PARA GUARDAR LOS NIÑOS MÁS CUMPLIDOS
create trigger TG_NiñoReunion on ReunionNino for insert
as  
	declare @NiñoID int
	declare @ReunionID int
	declare @Asistencia int

	select @Asistencia=asistencia,@NiñoID=nino_id,@ReunionID=reunion_id from inserted
	
	IF(@Asistencia=0)
		update  ReunionNino  set puntualidad=0,pulcritud_id=0,tarea=0 where nino_id=@NiñoID and reunion_id=@ReunionID

	IF(@NiñoID)  in (select nino_id from ReunionNino where puntualidad = 1 and pulcritud_id = 1 and tarea = 1 and asistencia = 1)
		insert into MasCumplido(nino_id,reunion_id) values(@NiñoID,@ReunionID) 

go
--select * from MasCumplido
go

--2.TRIGGER PARA MOSTRAR LOS NIÑOS QUE YA PUEDEN INVESTIRSE DE LA CLASE QUE CURSAN
create trigger TG_Investidura on ninoActividad after insert
as
	declare @NiñoID int
	declare @IDClase int
	declare @NumeroR int 

		select @NiñoID=i.nino_id,@IDClase=n.clase_id from inserted i inner join ninoClase n on i.nino_id=n.nino_id
		print @IDClase
		exec @NumeroR= RequisitosInvestidura @IDClase

		IF (select distinct count (actividad_id) from ninoActividad where nino_id=@NiñoID)=(@NumeroR) 
			insert into Niño_Investidura(nino_id,clase_id) values (@NiñoID,@IDClase)
go
--select * from Niño_Investidura
go
select*from ninoActividad
-------PRUEBA TRIGGER 2
--select * from ninoActividad where nino_id= 201 
--insert into  ninoActividad (nino_id,actividad_id) values(201,3)
--insert into  ninoActividad (nino_id,actividad_id) values(201,4)
--insert into  ninoActividad (nino_id,actividad_id) values(201,5)
--insert into  ninoActividad (nino_id,actividad_id) values(201,8)
--insert into  ninoActividad (nino_id,actividad_id) values(201,9)
--insert into  ninoActividad (nino_id,actividad_id) values(201,10)
--select * from Niño_Investidura

--FUNCION PARA AGARRAR CURA
--create function aiuda (@IDClase int )returns table
	--as 
		--return (select a.id as [Actividad] from EspecialidadActividad ea 
		--inner join actividad a on a.id = ea.actividad_id 
		--inner join especialidad k on k.id = ea.especialidad_id 
		--inner join clase c on c.id=k.clase_id
		--where c.id=@IDClase
			--union
		--select  a.id as [Actividad] from clase cl
		--inner join claseActividad ca on cl.id = ca.clase_id
		--inner join actividad a on a.id = ca.actividad_id
		--where cl.id=@IDClase )
--select * from nino n inner join ninoClase k on n.nino_id= k.nino_id



