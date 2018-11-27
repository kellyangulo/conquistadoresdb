use ConquistadoresBD
GO
------------------------------------------- TRIGGERS -------------------------------------------

--1.TRIGGER PARA GUARDAR LOS NI�OS M�S CUMPLIDOS
create trigger MasCumplido on ReunionNino for insert
as  
	declare @Ni�oID int
	declare @ReunionID int

	select @Ni�oID=nino_id,@ReunionID=reunion_id from inserted 

	if(@Ni�oID)  in (select nino_id from ReunionNino where puntualidad = 1 and pulcritud_id = 1 and tarea = 1 and asitencia = 1)
		insert into Ni�oCumplido(nino_id,reunion_id) values(@Ni�oID,@ReunionID) 

--select * from Ni�oCumplido
go

--2.TRIGGER PARA MOSTRAR LOS NI�OS QUE YA PUEDEN INVESTIRSE DE LA CLASE QUE CURSAN
create trigger Investidura on ninoActividad for insert
as
	declare @Ni�oID int
	declare @IDClase int
	select @Ni�o=nino_id,@IDClase=clase_id from inserted i inner join ninoClase n on i.nino_id=n.nino_id

	if (@Ni�o) 
	in( select actividad_id from EspecialidadActividad ea 
		inner join actividad a on a.id = ea.actividad_id 
		inner join especialidad k on k.id = ea.especialidad_id 
		inner join clase c on c.id=k.clase_id
		where c.id=@IDClase
			union
		select actividad_id from clase cl
		inner join claseActividad ca on cl.id = ca.clase_id
		inner join actividad a on a.id = ca.actividad_id
		where cl.id=@IDClase)

	exec RequisitosInvestidura @IDClase

	insert into Ni�o_Investidura(nino_id,clase_id) values (@Ni�oID,@IDClase)

--select * from Ni�o_Investidura
go

--3.TRIGGER PARA 
create trigger EmpleadoVista on trabajador for insert
as  
	declare @EmpleadoID int
	declare @Tipo int
	declare @Estatus bit

	select @EmpleadoID=trabajador_id, @Estatus=estatus, @Tipo=tipoEmp_id from inserted 
	if(@Estatus=1) 
	begin
	 select p.nombre+' '+p.apellidos as [Trabajador], ti.nombre as [Puesto], c.nombre as [Club de pertenecia] from trabajador t
	 inner join persona p on t.trabajador_id = p.id 
	 inner join tipoEmpleado ti on t.tipoEmp_id = ti.id
	 inner join HistorialTrabajador h on h.trabajador_id = t.trabajador_id
	 inner join club c on c.id = h.club_id
	where  estatus=1
	end
	insert into Ni�oCumplido(nino_id,reunion_id) values(@Ni�oID,@ReunionID) 

	select * from trabajador
