use ConquistadoresBD
GO
------------------------------------------- VISTAS -------------------------------------------

--1.MOSTRAR EL NOMBRE DE TODOS LOS TRABAJADORES ACTIVOS Y LOS PUESTOS QUE TIENE
create view Empleado_View 
as select p.nombre+' '+p.apellidos as [Trabajador], ti.nombre as [Puesto] from trabajador t
inner join persona p on t.trabajador_id = p.id 
inner join tipoEmpleado ti on t.tipoEmp_id = ti.id
where  estatus=1
--select * from Empleado_View 

--2.MOSTRAR LOS DATOS DE TODOS LOS NIÑOS 
create view Niño_View 
as select p.nombre+' '+p.apellidos as [Niño], n.estatura as [Estatura], n.peso as [Peso],
DATEDIFF(yy,fecha_nacimiento,GETDATE()) as [Edad] from nino n
inner join persona p on n.nino_id = p.id 
select * from Niño_View 