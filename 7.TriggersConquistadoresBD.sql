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

--2.TRIGGER PARA MOSTRAR LOS NI�OS QUE YA PUEDEN INVESTIRSE DE LA CLASE QUE CURSAN
create function aiuda (@IDClase int )returns table
	as 
		return (select a.id as [Actividad] from EspecialidadActividad ea 
		inner join actividad a on a.id = ea.actividad_id 
		inner join especialidad k on k.id = ea.especialidad_id 
		inner join clase c on c.id=k.clase_id
		where c.id=@IDClase
			union
		select  a.id as [Actividad] from clase cl
		inner join claseActividad ca on cl.id = ca.clase_id
		inner join actividad a on a.id = ca.actividad_id
		where cl.id=@IDClase )
	GO

create trigger TG_Investidura on ninoActividad for insert
as
	declare @Ni�oID int
	declare @IDClase int

		select @Ni�oID=i.nino_id,@IDClase=clase_id from inserted i inner join ninoClase n on i.nino_id=n.nino_id

		if((select * from aiuda(@IDClase)) in (select actividad_id from ninoActividad where nino_id=@Ni�oID))
			insert into Ni�o_Investidura(nino_id,clase_id) values (@Ni�oID,@IDClase)

go
--select * from Ni�o_Investidura
go

exec RequisitosInvestidura '1'
select * from ninoActividad where nino_id= 201 
insert into  ninoActividad (nino_id,actividad_id) values(201,3)
insert into  ninoActividad (nino_id,actividad_id) values(201,4)
insert into  ninoActividad (nino_id,actividad_id) values(201,5)
insert into  ninoActividad (nino_id,actividad_id) values(201,8)
select * from Ni�o_Investidura
drop trigger TG_Investidura
