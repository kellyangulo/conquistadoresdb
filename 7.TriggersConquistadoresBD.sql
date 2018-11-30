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
		update  ReunionNino  set puntualidad=0,pulcritud_id=null,tarea=0 where nino_id=@NiñoID and reunion_id=@ReunionID

	IF(@NiñoID)  in (select nino_id from ReunionNino where puntualidad = 1 and pulcritud_id = 1 and tarea = 1 and asistencia = 1)
		insert into MasCumplido(nino_id,reunion_id) values(@NiñoID,@ReunionID) 

GO
--select * from MasCumplido
GO

---------------------PRUEBA TRIGGER TG_NiñoReunion
--select * from ReunionNino where nino_id=201
--insert into  ReunionNino (nino_id,pulcritud_id,puntualidad,tarea,asistencia,reunion_id) values(201,1,1,1,0,2)
--select * from ReunionNino where nino_id=201


GO
--2.TRIGGER PARA MOSTRAR LOS NIÑOS QUE YA PUEDEN INVESTIRSE DE LA CLASE QUE ESTAN CURSANDO Y GUARDAR LA ESPECIALIDAD REALIZADA
create trigger TG_Investidura on ninoActividad for insert
as
	declare @NiñoID int
	declare @IDClase int
	declare @NumeroR int 
	declare @RR int

	declare @NumAct int 
	declare @NumR int
	declare @E int

		select @NiñoID=i.nino_id,@IDClase=n.clase_id from inserted i inner join ninoClase n on i.nino_id=n.nino_id

		exec @NumeroR = RequisitosInvestidura @IDClase
		exec @NumAct= ActividadEspecialidad @IDClase
		exec @NumR= ActividadesRealizadasEspe @IDClase,@NiñoID
				
		IF ( select  distinct count(actividad_id) from ninoActividad where nino_id= @NiñoID ) = (@NumeroR)
				insert into Niño_Investidura (nino_id,clase_id) values (@NiñoID, @IDClase)

		IF ((@NumR) = (@NumAct))
		 begin
				select @E=e.id  from nino n 
				inner join  ninoclase nc on n.nino_id= nc.nino_id
				inner join especialidad e on nc.clase_id=e.clase_id
				where n.nino_id=@NiñoID and nc.clase_id=@IDClase

				insert into  NiñoEspecialidadCumplida(NiñoID,EspecialidadID) values (@NiñoID,@E)
		 end
	

GO
--select * from Niño_Investidura
--select * from NiñoEspecialidadCumplida
GO

---------------------PRUEBA TRIGGER TG_Investidura
--insert into  ninoActividad (nino_id,actividad_id) values(201,3)
--insert into  ninoActividad (nino_id,actividad_id) values(201,4)
--insert into  ninoActividad (nino_id,actividad_id) values(201,5)
--insert into  ninoActividad (nino_id,actividad_id) values(201,8)
--insert into  ninoActividad (nino_id,actividad_id) values(201,9)
--insert into  ninoActividad (nino_id,actividad_id) values(201,10)
--select * from Niño_Investidura
--select * from NiñoEspecialidadCumplida

GO
--3.TRIGGER PARA VALIDAR QUE NO AGREGUEN UNA ACTIVIDAD YA PERTENECIANTE A UNA CLASE COMO ACTIVIDAD DE UNA ESPECIALIDAD
create trigger TG_ActividadEspecialidad on EspecialidadActividad for insert
as
	declare @Actividad int 
	declare @Especialidad int 

		select  @Actividad=actividad_id, @Especialidad=especialidad_id  from inserted 

		IF (@Actividad) in (select actividad_id from claseActividad where actividad_id=@Actividad)
		 begin
				delete from EspecialidadActividad where  actividad_id=@Actividad and especialidad_id=@Especialidad
				print 'No se pudo agregar la tupla ingresada a la tabla EspecialidadActividad, ya que la actividad era perteneciente a una clase'
		 end
GO
---------------------PRUEBA TRIGGER TG_ActividadEspecialidad

--select * from claseActividad c inner join  EspecialidadActividad e on c.actividad_id=e.actividad_id
--insert into EspecialidadActividad (especialidad_id,actividad_id) values (1,1)
--select * from EspecialidadActividad where actividad_id=1

GO
--4.TRIGGER PARA VALIDAR QUE NO AGREGUEN UNA ACTIVIDAD YA PERTENECIANTE A UNA ESPECIALIDAD COMO ACTIVIDAD DE UNA CLASE
create trigger TG_ActividadClase on claseActividad for insert
as
	declare @Actividad int 
	declare @Clase int 

		select  @Actividad=actividad_id, @Clase=clase_id from inserted

		IF (@Actividad) in (select actividad_id from EspecialidadActividad where actividad_id=@Actividad)
		 begin
				delete from claseActividad where  actividad_id=@Actividad and clase_id=@Clase
				print 'No se pudo agregar la tupla ingresada a la tabla ClaseActividad, ya que la actividad era perteneciente a una especialidad'
		 end
GO
---------------------PRUEBA TRIGGER TG_ActividadClase
--select * from claseActividad c inner join  EspecialidadActividad e on c.actividad_id=e.actividad_id
--insert into claseActividad (clase_id,actividad_id) values (1,8)
--select * from claseActividad where actividad_id=8

GO

--5.TRIGGER PARA VERIFICAR QUE LA EDAD DEL NIÑO ENTRE EN EL RANGO DE ACEPTACION ESTABLECIDO 
create trigger TG_NiñoEdad on nino instead of insert
as
	declare @NiñoID int 
	declare @FechaN date
	declare @Estatura int
	declare @Peso int
	declare @Papa int
	declare @Edad int

	select @NiñoID=nino_id,@FechaN=fecha_nacimiento,@Estatura=estatura,@Peso=peso,@Papa=padre_id from inserted 

	select @Edad=DATEDIFF(yy,@FechaN,GETDATE())

	IF((@Edad) >= 10 and (@Edad) <= 16)
			insert into nino (nino_id,estatura,peso,padre_id,fecha_nacimiento) values(@NiñoID,@Estatura,@Peso,@Papa,@FechaN)
		 ELSE
			print 'El niño no se pudo insertar en la tabla Niño por que la edad no estaba en el rango de aceptacion'
GO

---------------------PRUEBA TRIGGER TG_NiñoEdad
----exec InsertarPersona 'Uriel','Buapo','1'
--insert into nino(nino_id,estatura,peso,padre_id,fecha_nacimiento)values(301,156,55,166,'11/03/1999')
--select * from nino where nino_id=

GO

--6.TRIGGER PARA VERIFICAR QUE LA EDAD DEL NIÑO ENTRE EN EL RANGO DE ACEPTACION ESTABLECIDO DE EDAD EN LA CLASE
create trigger TG_NiñoRangoEdad on ninoClase for insert
as
	declare @NiñoID int 
	declare @Clase int
	declare @FechaN date
	declare @Edad int
	declare @ClaseR int

	select @NiñoID=i.nino_id,@Clase=i.clase_id,@FechaN=n.fecha_nacimiento from inserted i inner join nino n on n.nino_id=i.nino_id
	select @Edad=DATEDIFF(yy,@FechaN,GETDATE())
	select @ClaseR=Rango_Edad from clase where id=@Clase
	
	IF((@Edad) not in (@ClaseR))
	 begin
		delete from ninoClase where  nino_id=@NiñoID and clase_id=@Clase
		print 'No se puedo ingresar al niño en la clase ya que no tiene el rango de edad establecido'
	 end
GO


---------------------PRUEBA TRIGGER TG_NiñoRangoEdad
----exec InsertarPersona 'Hola','Lu','0'
--insert into nino(nino_id,estatura,peso,padre_id,fecha_nacimiento)values(3?,156,55,166,'11/24/2002')
--select * from nino where nino_id=?
--insert into ninoClase (nino_id,clase_id,fecha) values (?,1,GETDATE())

GO

--7.TRIGGER PARA VERIFICAR QUE LOS NIÑOS INGRESADOS EN UNA UNIDAD SEAN DEL MISMO SEXO; 1=MUJER, 0=HOMBRE
create trigger TG_NiñoGeneroUnidad on ninoUnidad for insert
as
	declare @NiñoID int 
	declare @GeneroU bit
	declare @GeneroN bit
	declare @UnidadID int

	select @NiñoID=i.nino_id,@UnidadID=i.unidad_id,@GeneroN=n.sexo,@GeneroU=u.genero from inserted i inner join persona n on n.id=i.nino_id inner join unidad u on u.id=i.unidad_id
	
	IF((@GeneroN) not in (@GeneroU))
	 begin
		delete from ninoUnidad where nino_id=@NiñoID and unidad_id=@UnidadID
		print 'No se puede ingresar al niño en esta unidad ya que no es del genero perteneciente'
	 end
GO

---------------------PRUEBA TRIGGER TG_NiñoGeneroUnidad
----exec InsertarPersona 'YaNoSeQuePoner','xdxd','0'
--insert into nino(nino_id,estatura,peso,padre_id,fecha_nacimiento)values(?,156,55,166,'11/24/2002')
--select * from unidad where genero=1
--insert into ninoUnidad (nino_id,unidad_id,fecha) values(?,3,GETDATE())
--select * from ninoUnidad where nino_id=?

GO

--8.TRIGGER PARA VERIFICAR QUE LAS UNIDADES QUE ASISTEN A UN CAMPAMENTO SEAN DEL MISMO GENERO
create trigger TG_CampamentoUnidad on campamentoUnidad for insert
as
	declare @CampamentoID int
	declare @UnidadID int
	declare @GeneroC bit
	declare @GeneroU bit

	select @CampamentoID=i.campamento_id, @UnidadID=i.unidad_id, @GeneroC=c.genero, @GeneroU=u.genero from inserted i 
	inner join campamento c on c.id=i.campamento_id  inner join unidad u on u.id=i.unidad_id
	
	IF((@GeneroU) not in (@GeneroC))
	 begin
		delete from campamentoUnidad where  campamento_id=@CampamentoID and unidad_id=@UnidadID
		print 'La unidad ingresada no puede asistir a ese campamento ya que no es del genero perteneciente'
	 end
GO
--select * from unidad
