use ConquistadoresBD
GO

--1. MOSTRAR EL PROMEDIO DE ESTATURA DE NIÑOS Y NIÑAS DE CADA UNIDAD
select AVG(n.estatura) as [Estatura Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

--2. MOSTRAR EL PROMEDIO DE PESO DE NIÑOS Y NIÑAS DE CADA UNIDAD
select AVG(n.peso) as [Peso Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

--3. MOSTRAR EL ID  DE LOS TRABAJADORES QUE TIENEN HIJOS INSCRITOS EN ALGUN CLUB Y CUANTOS HIJOS SON
select (t.trabajador_id) as [ID Trabajador], COUNT(t.trabajador_id) as [Hijo empleado] from trabajador t
inner join nino n on t.trabajador_id = n.padre_id
inner join persona p on t.trabajador_id = p.id
group by t.trabajador_id

--4. MOSTRAR CUANTAS ACTIVIADES TIENE CADA CLASE POR CLUB                         mal
select COUNT(ca.actividad_id) as [Número de actividades] from clubClase cu
inner join clase cl on cu.clase_id = cl.id
inner join claseActividad ca on cu.clase_id = ca.clase_id
group by cu.clase_id

