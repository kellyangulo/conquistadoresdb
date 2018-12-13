use ConquistadoresBD
GO
------------------------------------------------CONSULTAS NO TRIVIALES------------------------------------------------------
 
--1. MOSTRAR LA ESTATURA PROMEDIO DE NIÑOS DE CADA UNIDAD
select AVG(n.estatura) as [Estatura Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

GO

--2. MOSTRAR EL PESO PROMEDIO DE NIÑOS Y NIÑAS DE CADA UNIDAD
select AVG(n.peso) as [Peso Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

GO

--3. MOSTRAR EL NOMBRE DE LOS TRABAJADORES QUE TIENEN HIJOS INSCRITOS EN ALGUN CLUB Y CUANTOS NIÑOS SON
select (p.nombre) as [ Trabajador], COUNT(t.trabajador_id) as [Hijo empleado] from trabajador t
inner join nino n on t.trabajador_id = n.padre_id
inner join persona p on t.trabajador_id = p.id
group by p.nombre

GO

--4. MOSTRAR CUANTAS ACTIVIADES TIENE CADA CLASE                 
select cl.nombre as [Clase],COUNT(ca.actividad_id) as [Número de actividades] from clase cl
inner join claseActividad ca on cl.id = ca.clase_id
group by cl.nombre

GO

--5. MOSTRAR EL NOMBRE DE LOS CAMPAMENTOS SE HAN HECHO EN "BARRANCHOS" 
select c.colonia, COUNT(c.colonia) as Cantidad from campamento c
where c.colonia like '%Barranchos%'
group by c.colonia

GO

--6.CUANTOS TRABAJADORES HAY POR CADA CLUB
select c.nombre as [Club] ,COUNT(c.id) as [Trabajadores] from club c
inner join HistorialTrabajador h on c.id  = h.club_id
group by c.nombre

GO

--7. NÚMERO DE TRABAJADORES QUE TENGAN LA ESPECIALIDAD DE "SEGURIDAD"
select COUNT(e.nombre) as [Cantidad] from especialidad e
inner join EspecialidadTrabajador et on e.id = et.especialidad_id
where e.nombre like '%Seguridad%'
group by e.nombre

GO

--8.CANTIDAD DE NIÑOS QUE HAN REALIZADO LA ACTIVIDAD DE "CICLISMO"
select COUNT(n.actividad_id) from ninoActividad n
where  n.actividad_id in 
(select id from actividad a 
 inner join ninoActividad  on a.id = n.actividad_id 
 where  a.nombre like '%ciclismo%' )
group by n.actividad_id

GO

--9.CANTIDAD DE NIÑOS QUE HAN REALIZADO LA ACTIVIDAD DE "SEÑALACION" ANTES DEL 02/05/2018
select COUNT(n.actividad_id) from ninoActividad n
where  n.actividad_id in 
(select id from actividad a
 inner join ninoActividad  on a.id = n.actividad_id 
 where  a.nombre like '%Señalacion%' and n.fecha_realizacion < '02/05/2018') 
group by n.actividad_id

GO

--10.CANTIDAD DE NIÑOS QUE HAN REALIZADO LA ACTIVIDAD DE "VOLEIBOL" PERO NO LA DE "CICLISMO"
select COUNT(*) as [Cantidad]  FROM ((select n1.nino_id from actividad a 
 inner join ninoActividad n1 on a.id = n1.actividad_id 
 where  a.nombre like '%Voleibol%' )
	except
 (select n1.nino_id from actividad a 
 inner join ninoActividad n1 on a.id = n1.actividad_id 
 where  a.nombre like '%Ciclismo%' )) nw
 
GO

--11.NOMBRE DE LOS TRABAJADORES QUE SE HAN ESTADO EN MAS DE CLUB 
select p.nombre from persona p
inner join trabajador t on p.id = t.trabajador_id
where exists
(SELECT H.trabajador_id, count( H.trabajador_id) as Cantidad
FROM HistorialTrabajador H
GROUP BY  H.trabajador_id
HAVING count( H.trabajador_id) > 1) 

GO

--12.NOMBRE DE LAS UNIDADES QUE TENGAN NIÑOS MENORES DE 11 AÑOS DE EDAD
select u.nombre from  ninoUnidad n
inner join unidad u on n.unidad_id = u.id
where  n.nino_id in 
(select nino_id from nino where 11 > DATEDIFF(yy,nino.fecha_nacimiento,GETDATE()))

GO

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

GO

--14.NOMBRE DE LAS CLASES QUE TENGAN NIÑOS MENORES DE 13 AÑOS DE EDAD
select c.nombre from  clase c
inner join ninoClase nc  on nc.clase_id = c.id
where  nc.nino_id in 
(select nino_id from nino where 13 > DATEDIFF(yy,nino.fecha_nacimiento,GETDATE()))
GROUP BY C.nombre

GO

--15.CANTIDAD DE DINERO OBTENIDA DE LAS CUOTAS DADAS EN LA REUNION 12
select SUM(p.Cantidad) as  [Cantidad] from ReunionNino r
inner join PagoCuota p on r.PagoCuotaID = p.ID
where r.reunion_id = 12

GO

--16.CANTIDAD DE DINERO OBTENIDO POR CADA REUNION
select r.reunion_id as [Reunion],SUM(p.Cantidad) as  [Cantidad] from ReunionNino r
inner join PagoCuota p on r.PagoCuotaID = p.ID
group by r.reunion_id

GO

--17.CUANTOS NIÑOS HAN REALIZADO LA ACTIVIDAD "CICLISMO" Y TAMBIÉN "AJEDREZ"
select COUNT(*) from
(((select n.nino_id from actividad a 
 inner join ninoActividad n on a.id = n.actividad_id 
 where  a.nombre like '%ciclismo%')
 intersect
 (select n.nino_id from actividad a 
 inner join ninoActividad n on a.id = n.actividad_id 
 where a.nombre like '%voleibol%'))) as [Cantidad de niños]
 
GO

--18.NOMBRE DE LOS NIÑOS QUE HAN ESTADO EN MÁS DE UNA CLASE
select p.nombre+' '+p.apellidos as  [Niños] from persona p
inner join  nino n on p.id = n.nino_id
where exists
(SELECT  c.nino_id, count( c.nino_id) as Cantidad
FROM ninoClase c
GROUP BY c.nino_id
HAVING count(c.nino_id) > 1) 

GO

--19.NOMBRE DE LOS NIÑOS QUE HAN ESTADO EN MÁS DE UNA CLUB
select p.nombre+' '+p.apellidos as  [Nombre niño] from persona p
inner join  nino n on p.id = n.nino_id
where exists
(SELECT  c.nino_id, count( c.nino_id) as Cantidad
FROM ninoClub c
GROUP BY c.nino_id
HAVING count(c.nino_id) > 1) 

GO

--20.NOMBRE DE LOS PAPAS QUE TIENE MÁS DE UN HIJO
select p.nombre+' '+p.apellidos as  [Nombre papá] from persona p
inner join  padre pp on p.id = pp.padre_id
where exists
(SELECT  pn.IDPapa, count( pn.IDPapa) as Cantidad
FROM Padre_Nino pn
GROUP BY pn.IDPapa
HAVING count(pn.IDPapa) > 1)

GO
-------------------------------------------------CONSULTAS TRIVIALES--------------------------------------------------------
--21.MOSTRAR EL NOMBRE DE LOS NIÑOS QUE SEAN ALERGICOS A LAS  NUECES Y AL POLVO
(select p.nombre +' '+ p.apellidos [Niños alergicos]  from nino n
inner join persona p on n.nino_id = p.id
inner join alergiaNino a on a.nino_id = n.nino_id
inner join alergia e on a.alergia_id = e.id
where e.descrip like '%nueces%')
 intersect
(select p.nombre +' '+ p.apellidos [Niños alergicos]  from nino n
inner join persona p on n.nino_id = p.id
inner join alergiaNino a on a.nino_id = n.nino_id
inner join alergia e on a.alergia_id = e.id
where e.descrip like '%polvo%')

GO

--22.MOSTRAR EL NOMBRE DE LOS NIÑOS QUE SEAN ALERGICOS A LA "EXPOSICIÓN SOLAR" PERO NO AL "MOHO"
select p.nombre+' '+p.apellidos as [Nombre] from alergia a
inner join alergiaNino na on a.id = na.alergia_id
inner join nino n on na.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where a.descrip like '%solar%'
except
(select p.nombre+' '+p.apellidos as [Nombre] from alergia a
inner join alergiaNino na on a.id = na.alergia_id
inner join nino n on na.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where a.descrip like '%moho%')

GO

--23.NOMBRE DE LOS NIÑOS QUE ASISTIERON AL CAMPAMENTO "EL REENCUENTRO GIRLS" PERO NO AL "AMANECER GIRLS"
select p.nombre+' '+p.apellidos as [Niño] from campamento c 
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join ninoUnidad u on cu.unidad_id = u.unidad_id
inner join nino n on u.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%EL REENCUENTRO GIRLS%'
except
(select p.nombre+' '+p.apellidos as [Niño] from campamento c 
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join ninoUnidad u on cu.unidad_id = u.unidad_id
inner join nino n on u.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%AMANECER GIRLS%')

GO

--24.NOMBRE DE LOS INSTRUCTORES QUE TENGAN LA ESPECIALIDAD DE "SEGURIDAD" Y TAMBIÉN LA "PRIMEROS AUXILIOS"
select p.nombre+' '+p.apellidos as [Trabajador] from especialidad e
inner join EspecialidadTrabajador t on e.id = t.especialidad_id
inner join persona p on t.trabajador_id = p.id
where e.nombre like '%SEGURIDAD%'
intersect
(select p.nombre+' '+p.apellidos as [Trabajador] from especialidad e
inner join EspecialidadTrabajador t on e.id = t.especialidad_id
inner join persona p on t.trabajador_id = p.id
where e.nombre like '%PRIMEROS AUXILIOS%')

GO

--25.NOMBRE DE LAS UNIDADES QUE ASISTIERON AL CAMPAMENTO "LA FLOR"
select u.nombre from campamento c
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join unidad u on cu.unidad_id = u.id
where c.nombre like '%La flor%'

GO

--26.CANTIDAD DE PAPAS QUE SU OCUPACION ES "DESAROLLADOR"
select  COUNT(o.ID) as [Cantidad]  from padre p
inner join Ocupacion o on p.Ocupacion_ID = o.ID
where o.Nombre like '%Desarrollador%' 
group by o.ID

GO

--27.NIÑOS QUE ASISTIERON A LA REUNION 8 
select p.nombre+' '+p.apellidos as  [Niños] from ReunionNino r
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.reunion_id = 8

GO

--28.NOMBRE DE TODOS LOS NIÑOS QUE PERTENECEN A LAS CLASE B EN CUALQUIER CLUB
select p.nombre+' '+p.apellidos as [Nombre] from  clase c
inner join ninoClase nc  on nc.clase_id = c.id
inner join nino n on nc.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%B%'

GO

--29.NOMBRE DE LOS NIÑOS MÁS CUMPLIDOS DE LA REUNION 1
select p.nombre+' '+p.apellidos as  [Niños] from ReunionNino r
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.reunion_id = 1 and r.puntualidad = 1 and r.pulcritud_id = 1 and r.tarea = 1 and r.asistencia = 1

GO

--30.NOMBRE DE LOS NIÑOS QUE PERTENECEN AL CLUB "SUNNY CLUB"
select p.nombre+' '+p.apellidos as [Nombre] from  club c
inner join ninoClub nc  on nc.club_id = c.id
inner join nino n on nc.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%Sunny club%'

GO

--31.CANTIDAD DE NIÑOS POR UNIDAD
select u.nombre as [Unidad], COUNT(n.nino_id) as [Cantidad de niños] from ninoUnidad n
inner join unidad u on n.unidad_id = u.id
group by u.nombre

GO

--32.CANTIDAD DE NIÑOS POR CLUB
select c.nombre as [Club], COUNT(n.nino_id) as [Cantidad de niños] from ninoClub n
inner join club c on n.club_id = c.id
group by c.nombre

GO

--33. MOSTRAR EL NOMBRE DE LOS NIÑOS QUE SEAN ALERGICOS AL POLEN
select p.nombre +' '+ p.apellidos [Niños alergicos al polen]  from nino n
inner join persona p on n.nino_id = p.id
inner join alergiaNino a on a.nino_id = n.nino_id
inner join alergia e on a.alergia_id = e.id
where e.descrip like '%polen%'

GO

--34.NOMBRE DE LOS NIÑOS MÁS CUMPLIDOS POR REUNION
select r.reunion_id as [Reunion] , p.nombre+' '+p.apellidos as  [Niños] from ReunionNino r 
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.puntualidad = 1 and r.pulcritud_id = 1 and r.tarea = 1 and r.asistencia = 1
order by r.reunion_id 

GO

--35.CANTIDAD DE NIÑOS ALERGICOS POR CLUB
select c.nombre as [Club],COUNT(n.nino_id) as [Cantidad] from alergiaNino n
inner join ninoClub nc on n.nino_id = nc.nino_id
inner join club c on c.id = nc.club_id
group by c.nombre

GO

--36.CANTIDAD DE NIÑOS QUE ASISTIERON A LAS REUNIONES
select r.ID as [ Reunion],COUNT(n.nino_id) as [Cantidad] from ReunionNino n
inner join Reunion r on r.ID = n.reunion_id
group by r.ID

GO

--37.CANTIDAD DE CUOTAS RECIBIDAS EN LA FECHA '06/15/2018'
select reunion_id as [Nombre reunion], COUNT(nino_id) as [Cantidad de cuotas recibidas] from PagoCuota 
where FechaPago = '06/15/2018'
group by reunion_id

GO

--38.NOMBRE DE LOS CAMPAMENTOS RELIZADOS EN LA FECHA '11/15/2017'
select nombre as [Campamentos] from campamento
where fecha = '11/15/2017'

GO

--39.NOMBRE DE LOS TRABAJADORES QUE SIGUEN ACTIVOS
select p.nombre+' '+p.apellidos as [Trabajadores activos] from trabajador t 
inner join persona p on p.id = t.trabajador_id
where t.estatus = 1

GO

--40.CANTIDAD DE REUNIONES RELAIZADAS EN EL MES DE ENERO DEL 2018
select COUNT(ID) as [Reuniones relizadad en enero] from Reunion
where Fecha like  '%-01-%'

GO

--41.NOMBRE DE LAS UNIDADES QUE TIENEN NIÑOS CON ALERGIAS
select u.nombre as [Unidad] from alergiaNino a
inner join ninoUnidad n on a.nino_id = n.nino_id
inner join unidad u on n.unidad_id  = u.id
group by u.nombre

GO

--42.CANTIDAD DE PADRES POR OCUPACIÓN
select o.Nombre as [Ocupación] ,COUNT(o.Nombre) as [Cantidad] from padre p
inner join Ocupacion o on p.Ocupacion_ID = o.ID
group by o.Nombre

GO

--43.NOMBRE DE LAS ACTIVIDADES QUE NADIE RELIZO EN EL MES DE "ABRIL" DEL AÑO EN CURSO
select nombre from actividad
except
(select a.nombre from ninoActividad r 
inner join actividad a on r.actividad_id = a.id
where fecha_realizacion like '%2018-04-%'
GROUP BY a.nombre)

GO

--44.NOMBRE DE LOS NIÑOS QUE NO HAYAN ASISTIDO A NINGUNA REUNION
select p.nombre+' '+p.apellidos as [Niño] from persona p
inner join nino n on p.id = n.nino_id
except
(select p.nombre+' '+p.apellidos as [Niño] from persona p
inner join nino n on p.id = n.nino_id
inner join ReunionNino r on n.nino_id = r.nino_id)

GO

--45.NOMBRE DE LOS NIÑOS QUE ASISTIERON AL CAMPAMENTO "EL PINO" 
select p.nombre+' '+p.apellidos as [Niño] from campamento c 
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join ninoUnidad u on cu.unidad_id = u.unidad_id
inner join nino n on u.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%El pino%'

GO

--46.NOMBRE DE LOS INSTRUCTORES QUE TIENEN LA ESPECIALIDAD DE "HUMANIDADES"
select p.nombre+' '+p.apellidos as [Trabajador] from especialidad e
inner join EspecialidadTrabajador t on e.id = t.especialidad_id
inner join persona p on t.trabajador_id = p.id
where e.nombre like '%HUMANIDADES%'

GO

--47.NOMBRE DE TODOS LOS EMPLEADOS A EXCEPCION DE INSTRUCTORES 
select p.nombre+' '+p.apellidos as [Trabajador] from tipoEmpleado t
inner join trabajador e on t.id = e.tipoEmp_id
inner join persona p on e.trabajador_id = p.id
where t.nombre not like '%INSTRUCTOR%'

GO

--48.NOMBRE DE TODOS LOS DIRECTORES POR CLUB
select c.nombre as [Club] , p.nombre+' '+p.apellidos as [Director] from tipoEmpleado t
inner join trabajador e on t.id = e.tipoEmp_id
inner join persona p on e.trabajador_id = p.id
inner join HistorialTrabajador h on e.trabajador_id = h.trabajador_id
inner join club c on  h.club_id = c.id
where t.nombre like 'Director'

GO

--49.CANTIDAD DE NIÑOS QUE PAGARON LA CUOTA DE LA REUNION 3
select COUNT(p.nino_id) as [Cantidad de niños] from PagoCuota p
where p.reunion_id = 3

GO

--50.NOMBRE DE TODOS LOS NIÑOS QUE HAYAN NACIDO EN EL MES DE "NOVIEMBRE"
selecT p.nombre+' '+p.apellidos as [Niño] from persona p
inner join nino n on n.nino_id = p.id
where n.fecha_nacimiento like  '%-11-%'







