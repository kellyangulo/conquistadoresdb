use ConquistadoresBD
GO

------------------------------------------------CONSULTAS NO TRIVIALES------------------------------------------------------
 
--1. MOSTRAR LA ESTATURA PROMEDIO DE NIÑOS DE CADA UNIDAD
select AVG(n.estatura) as [Estatura Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

--2. MOSTRAR EL PESO PROMEDIO DE NIÑOS Y NIÑAS DE CADA UNIDAD
select AVG(n.peso) as [Peso Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

--3. MOSTRAR EL NOMBRE DE LOS TRABAJADORES QUE TIENEN HIJOS INSCRITOS EN ALGUN CLUB Y CUANTOS NIÑOS SON
select (p.nombre) as [ Trabajador], COUNT(t.trabajador_id) as [Hijo empleado] from trabajador t
inner join nino n on t.trabajador_id = n.padre_id
inner join persona p on t.trabajador_id = p.id
--group by t.trabajador_id 
group by p.nombre

--4. MOSTRAR CUANTAS ACTIVIADES TIENE CADA CLASE                 
select cl.nombre as [Clase],COUNT(ca.actividad_id) as [Número de actividades] from clase cl
inner join claseActividad ca on cl.id = ca.clase_id
group by cl.nombre

--5. MOSTRAR EL NOMBRE DE LOS CAMPAMENTOS SE HAN HECHO EN "BARRANCHOS" 
select c.colonia, COUNT(c.colonia) as Cantidad from campamento c
where c.colonia like '%Barranchos%'
group by c.colonia

--6.CUANTOS TRABAJADORES HAY POR CADA CLUB
select c.nombre as [Club] ,COUNT(c.id) as [Trabajadores] from club c
inner join HistorialTrabajador h on c.id  = h.club_id
group by c.nombre

--7. NÚMERO DE TRABAJADORES QUE TENGAN LA ESPECIALIDAD DE "SEGURIDAD"
select COUNT(e.nombre) as [Cantidad] from especialidad e
inner join EspecialidadTrabajador et on e.id = et.especialidad_id
where e.nombre like '%Seguridad%'
group by e.nombre

--8.CANTIDAD DE NIÑOS QUE HAN REALIZADO LA ACTIVIDAD DE "CICLISMO"
select COUNT(n.actividad_id) from ninoActividad n
where  n.actividad_id in 
(select id from actividad a 
 inner join ninoActividad  on a.id = n.actividad_id 
 where  a.nombre like '%ciclismo%' )
group by n.actividad_id

--9.CANTIDAD DE NIÑOS QUE HAN REALIZADO LA ACTIVIDAD DE "SEÑALACION" ANTES DEL 02/05/2018
select COUNT(n.actividad_id) from ninoActividad n
where  n.actividad_id in 
(select id from actividad a
 inner join ninoActividad  on a.id = n.actividad_id 
 where  a.nombre like '%Señalacion%' and n.fecha_realizacion < '02/05/2018') 
group by n.actividad_id

--10.CANTIDAD DE NIÑOS QUE HAN REALIZADO LA ACTIVIDAD DE "VOLEIBOL" PERO NO LA DE "CICLISMO"
select COUNT(*) as [Cantidad]  FROM ((select n1.nino_id from actividad a 
 inner join ninoActividad n1 on a.id = n1.actividad_id 
 where  a.nombre like '%Voleibol%' )
	except
 (select n1.nino_id from actividad a 
 inner join ninoActividad n1 on a.id = n1.actividad_id 
 where  a.nombre like '%Ciclismo%' )) nw
 
--11.NOMBRE DE LOS TRABAJADORES QUE SE HAN ESTADO EN MAS DE CLUB 
select p.nombre from persona p
inner join trabajador t on p.id = t.trabajador_id
where exists
(SELECT H.trabajador_id, count( H.trabajador_id) as Cantidad
FROM HistorialTrabajador H
GROUP BY  H.trabajador_id
HAVING count( H.trabajador_id) > 1) 

--12.NOMBRE DE LAS UNIDADES QUE TENGAN NIÑOS MENORES DE 11 AÑOS DE EDAD
select u.nombre from  ninoUnidad n
inner join unidad u on n.unidad_id = u.id
where  n.nino_id in 
(select nino_id from nino where 11 > DATEDIFF(yy,nino.fecha_nacimiento,GETDATE()))

--13.NOMBRE DE LAS UNIDADES QUE SOLO TENGAN NIÑOS MAYORES DE 10 AÑOS DE EDAD
select u.nombre from  ninoUnidad n
inner join unidad u on n.unidad_id = u.id
where  n.nino_id in 
(select nino_id from nino where 10 < DATEDIFF(yy,nino.fecha_nacimiento,GETDATE()))
except 
(select u.nombre from  ninoUnidad n
inner join unidad u on n.unidad_id = u.id
where  n.nino_id in 
(select nino_id from nino where 10 > DATEDIFF(yy,nino.fecha_nacimiento,GETDATE())))

--14.NOMBRE DE LAS CLASES QUE TENGAN NIÑOS MENORES DE 13 AÑOS DE EDAD
select c.nombre from  clase c
inner join ninoClase nc  on nc.clase_id = c.id
where  nc.nino_id in 
(select nino_id from nino where 13 > DATEDIFF(yy,nino.fecha_nacimiento,GETDATE()))
GROUP BY C.nombre

--15.CANTIDAD DE DINERO OBTENIDA DE LAS CUOTAS DADAS EN LA REUNION 12
select SUM(p.Cantidad) as  [Cantidad] from ReunionNino r
inner join PagoCuota p on r.PagoCuotaID = p.ID
where r.reunion_id = 12

--16.CANTIDAD DE DINERO OBTENIDO POR CADA REUNION
select r.reunion_id as [Reunion],SUM(p.Cantidad) as  [Cantidad] from ReunionNino r
inner join PagoCuota p on r.PagoCuotaID = p.ID
group by r.reunion_id

--17.CUANTOS NIÑOS HAN REALIZADO LA ACTIVIDAD "CICLISMO" Y TAMBIÉN "AJEDREZ"
select COUNT(*) from
(((select n.nino_id from actividad a 
 inner join ninoActividad n on a.id = n.actividad_id 
 where  a.nombre like '%ciclismo%')
 union
 (select n.nino_id from actividad a 
 inner join ninoActividad n on a.id = n.actividad_id 
 where a.nombre like '%voleibol%'))) as [Cantidad de niños]

--18.NOMBRE DE LOS NIÑOS QUE HAN ESTADO EN MÁS DE UNA CLASE
select p.nombre+' '+p.apellidos as  [Niños] from persona p
inner join  nino n on p.id = n.nino_id
where exists
(SELECT  c.nino_id, count( c.nino_id) as Cantidad
FROM ninoClase c
GROUP BY c.nino_id
HAVING count(c.nino_id) > 1) 

--19.NOMBRE DE LOS NIÑOS QUE HAN ESTADO EN MÁS DE UNA CLUB

--20.NOMBRE DE LOS PAPAS QUE TIENE MÁS DE UN HIJO
select p.nombre+' '+p.apellidos as  [Nombre papá] from persona p
inner join  padre pp on p.id = pp.padre_id
where exists
(SELECT  pn.IDPapa, count( pn.IDPapa) as Cantidad
FROM Padre_Nino pn
GROUP BY pn.IDPapa
HAVING count(pn.IDPapa) > 1)




-------------------------------------------------CONSULTAS TRIVIALES--------------------------------------------------------

--21. MOSTRAR EL NOMBRE DE LOS NIÑOS QUE SEAN ALERGICOS AL POLEN
select p.nombre +' '+ p.apellidos [Niños alergicos al polen]  from nino n
inner join persona p on n.nino_id = p.id
inner join alergiaNino a on a.nino_id = n.nino_id
where a.alergia_id = 2

--22.NOMBRE DE LAS UNIDADES QUE ASISTIERON AL CAMPAMENTO 
select u.nombre from campamento c
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join unidad u on cu.unidad_id = u.id
where c.nombre like '%La flor%'

--23.CANTIDAD DE PAPAS QUE SU OCUPACION ES "DESAROLLADOR"
select  COUNT(o.ID) as [Cantidad]  from padre p
inner join Ocupacion o on p.Ocupacion_ID = o.ID
where o.Nombre like '%Desarrollador%' 
group by o.ID

--24.NIÑOS QUE ASISTIERON A LA REUNION 8 
select p.nombre+' '+p.apellidos as  [Niños] from ReunionNino r
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.reunion_id = 8

--25.NOMBRE DE TODOS LOS NIÑOS QUE PERTENECEN A LAS CLASE B EN CUALQUIER CLUB
select p.nombre+' '+p.apellidos as [Nombre] from  clase c
inner join ninoClase nc  on nc.clase_id = c.id
inner join nino n on nc.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%B%'

--26.NOMBRE DE LOS NIÑOS MÁS CUMPLIDOS DE LA REUNION 1
select p.nombre+' '+p.apellidos as  [Niños] from ReunionNino r
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.reunion_id = 1 and r.puntualidad = 1 and r.pulcritud_id = 1 and r.tarea = 1 and r.asitencia = 1

--27.NOMBRE DE LOS NIÑOS QUE PERTENECEN AL CLUB ""
--28.
--29.
--30.


