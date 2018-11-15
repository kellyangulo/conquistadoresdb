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

--2.MOSTRAR LOS DATOS DE TODOS LOS NIÑOS 
create view Niño_View 
as select p.nombre+' '+p.apellidos as [Niño], n.estatura as [Estatura], n.peso as [Peso],
DATEDIFF(yy,fecha_nacimiento,GETDATE()) as [Edad] from nino n
inner join persona p on n.nino_id = p.id 
GO
select * from Niño_View 

--3.NOMBRE DE LOS NIÑOS MÁS CUMPLIDOS POR REUNION
create view NiñosReunion_View 
as select r.reunion_id as [Reunion] , p.nombre+' '+p.apellidos as  [Niños] from ReunionNino r 
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.puntualidad = 1 and r.pulcritud_id = 1 and r.tarea = 1 and r.asitencia = 1
GO
select * from NiñosReunion_View 

--4.DATOS DE PAGOS EN CUOTAS POR REUNION
create view PagoCuota_View 
as select c.reunion_id as [Reunion] , p.nombre+' '+p.apellidos as  [Niños], c.FechaPago, c.Cantidad from PagoCuota c 
inner join nino n on n.nino_id = c.nino_id
inner join persona p on p.id = n.nino_id
GO
select * from PagoCuota_View 

--5.LAS ACTIVIDADES QUE HAY POR CLASE
create view ClaseActi_View 
as select cl.nombre as [Clase],a.nombre as [Actividad] from clase cl
inner join claseActividad ca on cl.id = ca.clase_id
inner join actividad a on a.id = ca.actividad_id
--inner join clubClase c on c.clase_id = ca.clase_id
--inner join club k on k.id = c.club_id
GO
select * from ClaseActi_View





