use ConquistadoresBD
GO

--1. MOSTRAR LA ESTATURA PROMEDIO DE NIÑOS DE CADA UNIDAD
select AVG(n.estatura) as [Estatura Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

--2. MOSTRAR EL PESO PROMEDIO DE NIÑOS Y NIÑAS DE CADA UNIDAD
select AVG(n.peso) as [Peso Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

--3. MOSTRAR EL ID  DE LOS TRABAJADORES QUE TIENEN HIJOS INSCRITOS EN ALGUN CLUB Y CUANTOS HIJOS SON
select (t.trabajador_id) as [ID Trabajador], COUNT(t.trabajador_id) as [Hijo empleado] from trabajador t
inner join nino n on t.trabajador_id = n.padre_id
inner join persona p on t.trabajador_id = p.id
group by t.trabajador_id

--4. MOSTRAR CUANTAS ACTIVIADES TIENE CADA CLASE                 
select COUNT(ca.actividad_id) as [Número de actividades] from clase cl
inner join claseActividad ca on cl.id = ca.clase_id
group by ca.clase_id

--5. MOSTRAR EL NOMBRE DE LOS CAMPAMENTOS SE HAN HECHO EN "BARRANCHOS" 
select c.colonia, COUNT(c.colonia) as Cantidad from campamento c
where c.colonia like '%Barranchos%'
group by c.colonia

--6. MOSTRAR EL NOMBRE DE LOS NIÑOS QUE SEAN ALERGICOS AL POLEN
select p.nombre +' '+ p.apellidos [Niños alergicos al polen]  from nino n
inner join persona p on n.nino_id = p.id
inner join alergiaNino a on a.nino_id = n.nino_id
where a.alergia_id = 2


--7.NOMBRE DE LAS UNIDADES QUE ASISTIERON AL CAMPAMENTO 
select u.nombre from campamento c
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join unidad u on cu.unidad_id = u.id
where c.nombre like '%La flor%'

--CHECAR
--8.CUANTOS TRABAJADORES HAY POR CADA CLUB
select COUNT(c.id) from club c
inner join HistorialTrabajador h on c.id  = h.club_id
inner join trabajador t on h.trabajador_id = t.trabajador_id
group by c.id
except 
(select t.trabajador_id from trabajador t where t.estatus like 0)

--9.

--10.




-------------------------------- MAL 

--. MOSTRAR EL NOMBRE DE LAS UNIDADES QUE SOLO TENGAN NIÑOS MAYORES DE 10 AÑOS
select u.nombre from unidad u
union 
(select fecha_nacimiento, datediff(yy,getdate(),fecha_nacimiento) from nino)
inner join ninoUnidad nu on u.id = nu.unidad_id
inner join nino n on nu.nino_id = n.nino_id
where datediff(yy,getdate(),n.fecha_nacimiento)


