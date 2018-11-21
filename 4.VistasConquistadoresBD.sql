use ConquistadoresBD
GO
------------------------------------------- VISTAS -------------------------------------------

--1.MOSTRAR EL NOMBRE DE TODOS LOS TRABAJADORES ACTIVOS Y LOS PUESTOS QUE TIENE
create view Empleado_View 
as select p.nombre+' '+p.apellidos as [Trabajador], ti.nombre as [Puesto], c.nombre as [Club de pertenecia] from trabajador t
inner join persona p on t.trabajador_id = p.id 
inner join tipoEmpleado ti on t.tipoEmp_id = ti.id
inner join HistorialTrabajador h on h.trabajador_id = t.trabajador_id
inner join club c on c.id = h.club_id
where  estatus=1
GO
select * from Empleado_View 
GO
--2.MOSTRAR LOS DATOS DE TODOS LOS NIÑOS 
create view Niño_View 
as select p.nombre+' '+p.apellidos as [Niño], n.estatura as [Estatura], n.peso as [Peso],
DATEDIFF(yy,fecha_nacimiento,GETDATE()) as [Edad] from nino n
inner join persona p on n.nino_id = p.id 
GO
select * from Niño_View 
GO
--3.DIRECTORIO TELEFONICO DE LOS PADRE DE CADA NIÑO
create view DirectorioT_View
as select  pe2.nombre+' '+pe2.apellidos as  [Niño] ,pe.nombre+' '+pe.apellidos as  [Padre], t.numero [Contacto] from  Padre_Nino pn
inner join nino n on pn.IDNino = n.nino_id
inner join padre p on pn.IDPapa = p.padre_id
inner join telefonoPadre t on p.padre_id = t.padre_id
inner join persona pe on pe.id = p.padre_id
inner join persona pe2 on pe2.id = n.nino_id
GO
select * from DirectorioT_View
GO
--4.NOMBRE DE LOS NIÑOS MÁS CUMPLIDOS POR REUNION
create view NiñosReunion_View 
as select r.reunion_id as [Reunion] , p.nombre+' '+p.apellidos as  [Niños] from ReunionNino r 
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.puntualidad = 1 and r.pulcritud_id = 1 and r.tarea = 1 and r.asitencia = 1
GO
select * from NiñosReunion_View 
GO
--5.DATOS DE PAGOS EN CUOTAS POR REUNION
create view PagoCuota_View 
as select c.reunion_id as [Reunion] , p.nombre+' '+p.apellidos as  [Niño], c.FechaPago, c.Cantidad from PagoCuota c 
inner join nino n on n.nino_id = c.nino_id
inner join persona p on p.id = n.nino_id
GO
select * from PagoCuota_View 
GO
--6.LAS ACTIVIDADES QUE HAY POR CLASE
create view ClaseActi_View 
as select cl.nombre as [Clase],a.nombre as [Actividad] from clase cl
inner join claseActividad ca on cl.id = ca.clase_id
inner join actividad a on a.id = ca.actividad_id
GO
select * from ClaseActi_View
GO




