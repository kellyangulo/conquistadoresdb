use ConquistadoresBD
GO

------------------------------------------------CONSULTAS NO TRIVIALES------------------------------------------------------
 
--1. MOSTRAR LA ESTATURA PROMEDIO DE NI�OS DE CADA UNIDAD
select AVG(n.estatura) as [Estatura Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

--2. MOSTRAR EL PESO PROMEDIO DE NI�OS Y NI�AS DE CADA UNIDAD
select AVG(n.peso) as [Peso Promedio] from ninoUnidad u 
inner join nino n on u.nino_id = n.nino_id
group by u.unidad_id

--3. MOSTRAR EL NOMBRE DE LOS TRABAJADORES QUE TIENEN HIJOS INSCRITOS EN ALGUN CLUB Y CUANTOS NI�OS SON
select (p.nombre) as [ Trabajador], COUNT(t.trabajador_id) as [Hijo empleado] from trabajador t
inner join nino n on t.trabajador_id = n.padre_id
inner join persona p on t.trabajador_id = p.id
--group by t.trabajador_id 
group by p.nombre

--4. MOSTRAR CUANTAS ACTIVIADES TIENE CADA CLASE                 
select cl.nombre as [Clase],COUNT(ca.actividad_id) as [N�mero de actividades] from clase cl
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

--7. N�MERO DE TRABAJADORES QUE TENGAN LA ESPECIALIDAD DE "SEGURIDAD"
select COUNT(e.nombre) as [Cantidad] from especialidad e
inner join EspecialidadTrabajador et on e.id = et.especialidad_id
where e.nombre like '%Seguridad%'
group by e.nombre

--8.CANTIDAD DE NI�OS QUE HAN REALIZADO LA ACTIVIDAD DE "CICLISMO"
select COUNT(n.actividad_id) from ninoActividad n
where  n.actividad_id in 
(select id from actividad a 
 inner join ninoActividad  on a.id = n.actividad_id 
 where  a.nombre like '%ciclismo%' )
group by n.actividad_id

--9.CANTIDAD DE NI�OS QUE HAN REALIZADO LA ACTIVIDAD DE "SE�ALACION" ANTES DEL 02/05/2018
select COUNT(n.actividad_id) from ninoActividad n
where  n.actividad_id in 
(select id from actividad a
 inner join ninoActividad  on a.id = n.actividad_id 
 where  a.nombre like '%Se�alacion%' and n.fecha_realizacion < '02/05/2018') 
group by n.actividad_id

--10.CANTIDAD DE NI�OS QUE HAN REALIZADO LA ACTIVIDAD DE "VOLEIBOL" PERO NO LA DE "CICLISMO"
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

--12.NOMBRE DE LAS UNIDADES QUE TENGAN NI�OS MENORES DE 11 A�OS DE EDAD
select u.nombre from  ninoUnidad n
inner join unidad u on n.unidad_id = u.id
where  n.nino_id in 
(select nino_id from nino where 11 > DATEDIFF(yy,nino.fecha_nacimiento,GETDATE()))

--13.NOMBRE DE LAS UNIDADES QUE SOLO TENGAN NI�OS MAYORES DE 10 A�OS DE EDAD
select u.nombre from  ninoUnidad n
inner join unidad u on n.unidad_id = u.id
where  n.nino_id in 
(select nino_id from nino where 10 < DATEDIFF(yy,nino.fecha_nacimiento,GETDATE()))
except 
(select u.nombre from  ninoUnidad n
inner join unidad u on n.unidad_id = u.id
where  n.nino_id in 
(select nino_id from nino where 10 > DATEDIFF(yy,nino.fecha_nacimiento,GETDATE())))

--14.NOMBRE DE LAS CLASES QUE TENGAN NI�OS MENORES DE 13 A�OS DE EDAD
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

--17.CUANTOS NI�OS HAN REALIZADO LA ACTIVIDAD "CICLISMO" Y TAMBI�N "AJEDREZ"
select COUNT(*) from
(((select n.nino_id from actividad a 
 inner join ninoActividad n on a.id = n.actividad_id 
 where  a.nombre like '%ciclismo%')
 intersect
 (select n.nino_id from actividad a 
 inner join ninoActividad n on a.id = n.actividad_id 
 where a.nombre like '%voleibol%'))) as [Cantidad de ni�os]

--18.NOMBRE DE LOS NI�OS QUE HAN ESTADO EN M�S DE UNA CLASE
select p.nombre+' '+p.apellidos as  [Ni�os] from persona p
inner join  nino n on p.id = n.nino_id
where exists
(SELECT  c.nino_id, count( c.nino_id) as Cantidad
FROM ninoClase c
GROUP BY c.nino_id
HAVING count(c.nino_id) > 1) 

--19.NOMBRE DE LOS NI�OS QUE HAN ESTADO EN M�S DE UNA CLUB
select p.nombre+' '+p.apellidos as  [Nombre ni�o] from persona p
inner join  nino n on p.id = n.nino_id
where exists
(SELECT  c.nino_id, count( c.nino_id) as Cantidad
FROM ninoClub c
GROUP BY c.nino_id
HAVING count(c.nino_id) > 1) 

--20.NOMBRE DE LOS PAPAS QUE TIENE M�S DE UN HIJO
select p.nombre+' '+p.apellidos as  [Nombre pap�] from persona p
inner join  padre pp on p.id = pp.padre_id
where exists
(SELECT  pn.IDPapa, count( pn.IDPapa) as Cantidad
FROM Padre_Nino pn
GROUP BY pn.IDPapa
HAVING count(pn.IDPapa) > 1)


-------------------------------------------------CONSULTAS TRIVIALES--------------------------------------------------------

--21. MOSTRAR EL NOMBRE DE LOS NI�OS QUE SEAN ALERGICOS AL POLEN
select p.nombre +' '+ p.apellidos [Ni�os alergicos al polen]  from nino n
inner join persona p on n.nino_id = p.id
inner join alergiaNino a on a.nino_id = n.nino_id
inner join alergia e on a.alergia_id = e.id
where e.descrip like '%polen%'

--22.NOMBRE DE LAS UNIDADES QUE ASISTIERON AL CAMPAMENTO "LA FLOR"
select u.nombre from campamento c
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join unidad u on cu.unidad_id = u.id
where c.nombre like '%La flor%'

--23.CANTIDAD DE PAPAS QUE SU OCUPACION ES "DESAROLLADOR"
select  COUNT(o.ID) as [Cantidad]  from padre p
inner join Ocupacion o on p.Ocupacion_ID = o.ID
where o.Nombre like '%Desarrollador%' 
group by o.ID

--24.NI�OS QUE ASISTIERON A LA REUNION 8 
select p.nombre+' '+p.apellidos as  [Ni�os] from ReunionNino r
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.reunion_id = 8

--25.NOMBRE DE TODOS LOS NI�OS QUE PERTENECEN A LAS CLASE B EN CUALQUIER CLUB
select p.nombre+' '+p.apellidos as [Nombre] from  clase c
inner join ninoClase nc  on nc.clase_id = c.id
inner join nino n on nc.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%B%'

--26.NOMBRE DE LOS NI�OS M�S CUMPLIDOS DE LA REUNION 1
select p.nombre+' '+p.apellidos as  [Ni�os] from ReunionNino r
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.reunion_id = 1 and r.puntualidad = 1 and r.pulcritud_id = 1 and r.tarea = 1 and r.asitencia = 1

--27.NOMBRE DE LOS NI�OS QUE PERTENECEN AL CLUB "SUNNY CLUB"
select p.nombre+' '+p.apellidos as [Nombre] from  club c
inner join ninoClub nc  on nc.club_id = c.id
inner join nino n on nc.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%Sunny club%'

--28.CANTIDAD DE NI�OS POR UNIDAD
select u.nombre as [Unidad], COUNT(n.nino_id) as [Cantidad de ni�os] from ninoUnidad n
inner join unidad u on n.unidad_id = u.id
group by u.nombre

--29.CANTIDAD DE NI�OS POR CLUB
select c.nombre as [Club], COUNT(n.nino_id) as [Cantidad de ni�os] from ninoClub n
inner join club c on n.club_id = c.id
group by c.nombre

--30.CANTIDAD DE NI�OS QUE PAGARON LA CUOTA DE LA REUNION 3
select COUNT(p.nino_id) as [Cantidad de ni�os] from PagoCuota p
where p.reunion_id = 3

--31.MOSTRAR EL NOMBRE DE LOS NI�OS QUE SEAN ALERGICOS A LAS  NUECES Y AL POLVO
(select p.nombre +' '+ p.apellidos [Ni�os alergicos]  from nino n
inner join persona p on n.nino_id = p.id
inner join alergiaNino a on a.nino_id = n.nino_id
inner join alergia e on a.alergia_id = e.id
where e.descrip like '%nueces%')
 intersect
(select p.nombre +' '+ p.apellidos [Ni�os alergicos]  from nino n
inner join persona p on n.nino_id = p.id
inner join alergiaNino a on a.nino_id = n.nino_id
inner join alergia e on a.alergia_id = e.id
where e.descrip like '%polvo%')

--32.NOMBRE DE LOS NI�OS M�S CUMPLIDOS POR REUNION
select r.reunion_id as [Reunion] , p.nombre+' '+p.apellidos as  [Ni�os] from ReunionNino r
inner join nino n on n.nino_id = r.nino_id
inner join persona p on p.id = n.nino_id
where r.puntualidad = 1 and r.pulcritud_id = 1 and r.tarea = 1 and r.asitencia = 1

--33.CANTIDAD DE NI�OS ALERGICOS POR CLUB
select c.nombre as [Club],COUNT(n.nino_id) as [Cantidad] from alergiaNino n
inner join ninoClub nc on n.nino_id = nc.nino_id
inner join club c on c.id = nc.club_id
group by c.nombre

--34.CANTIDAD DE NI�OS QUE ASISTIERON A LAS REUNIONES
select r.ID as [ Reunion],COUNT(n.nino_id) as [Cantidad] from ReunionNino n
inner join Reunion r on r.ID = n.reunion_id
group by r.ID

--35.CANTIDAD DE CUOTAS RECIBIDAS EN LA FECHA '06/15/2018'
select reunion_id as [Nombre reunion], COUNT(nino_id) as [Cantidad de cuotas recibidas] from PagoCuota 
where FechaPago = '06/15/2018'
group by reunion_id

--36.NOMBRE DE LOS CAMPAMENTOS RELIZADOS EN LA FECHA '11/15/2017'
select nombre as [Campamentos] from campamento
where fecha = '11/15/2017'

--37.NOMBRE DE LOS TRABAJADORES QUE SIGUEN ACTIVOS
select p.nombre+' '+p.apellidos as [Trabajadores activos] from trabajador t 
inner join persona p on p.id = t.trabajador_id
where t.estatus = 1

--38.CANTIDAD DE REUNIONES RELAIZADAS EN EL MES DE ENERO DEL 2018
select COUNT(ID) as [Reuniones relizadad en enero] from Reunion
where Fecha like  '%-01-%'

--39.NOMBRE DE LAS UNIDADES QUE TIENEN NI�OS CON ALERGIAS
select u.nombre as [Unidad] from alergiaNino a
inner join ninoUnidad n on a.nino_id = n.nino_id
inner join unidad u on n.unidad_id  = u.id
group by u.nombre

--40.CANTIDAD DE PADRES POR OCUPACI�N
select o.Nombre as [Ocupaci�n] ,COUNT(o.Nombre) as [Cantidad] from padre p
inner join Ocupacion o on p.Ocupacion_ID = o.ID
group by o.Nombre

--41.MOSTRAR EL NOMBRE DE LOS NI�OS QUE SEAN ALERGICOS A LA "EXPOSICI�N SOLAR" PERO NO AL "MOHO"
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

--42.NOMBRE DE LAS ACTIVIDADES QUE NADIE RELIZO EN EL MES DE "ABRIL" DEL A�O EN CURSO
select nombre from actividad
except
(select a.nombre from ninoActividad r 
inner join actividad a on r.actividad_id = a.id
where fecha_realizacion like '%2018-04-%'
GROUP BY a.nombre)

--43.NOMBRE DE LOS NI�OS QUE NO HAYAN ASISTIDO A NINGUNA REUNION
select p.nombre+' '+p.apellidos as [Ni�o] from persona p
inner join nino n on p.id = n.nino_id
except
(select p.nombre+' '+p.apellidos as [Ni�o] from persona p
inner join nino n on p.id = n.nino_id
inner join ReunionNino r on n.nino_id = r.nino_id)

--44.NOMBRE DE LOS NI�OS QUE ASISTIERON AL CAMPAMENTO "EL PINO" 
select p.nombre+' '+p.apellidos as [Ni�o] from campamento c 
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join ninoUnidad u on cu.unidad_id = u.unidad_id
inner join nino n on u.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%El pino%'

--45.NOMBRE DE LOS NI�OS QUE ASISTIERON AL CAMPAMENTO "EL REENCUENTRO GIRLS" PERO NO AL "AMANECER GIRLS"
select p.nombre+' '+p.apellidos as [Ni�o] from campamento c 
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join ninoUnidad u on cu.unidad_id = u.unidad_id
inner join nino n on u.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%EL REENCUENTRO GIRLS%'
except
(select p.nombre+' '+p.apellidos as [Ni�o] from campamento c 
inner join campamentoUnidad cu on c.id = cu.campamento_id
inner join ninoUnidad u on cu.unidad_id = u.unidad_id
inner join nino n on u.nino_id = n.nino_id
inner join persona p on n.nino_id = p.id
where c.nombre like '%AMANECER GIRLS%')

--46.NOMBRE DE LOS INSTRUCTORES QUE TIENEN LA ESPECIALIDAD DE "HUMANIDADES"
select p.nombre+' '+p.apellidos as [Trabajador] from especialidad e
inner join EspecialidadTrabajador t on e.id = t.especialidad_id
inner join persona p on t.trabajador_id = p.id
where e.nombre like '%HUMANIDADES%'

--47.NOMBRE DE LOS INSTRUCTORES QUE TENGAN LA ESPECIALIDAD DE "SEGURIDAD" Y TAMBI�N LA "PRIMEROS AUXILIOS"
select p.nombre+' '+p.apellidos as [Trabajador] from especialidad e
inner join EspecialidadTrabajador t on e.id = t.especialidad_id
inner join persona p on t.trabajador_id = p.id
where e.nombre like '%SEGURIDAD%'
intersect
(select p.nombre+' '+p.apellidos as [Trabajador] from especialidad e
inner join EspecialidadTrabajador t on e.id = t.especialidad_id
inner join persona p on t.trabajador_id = p.id
where e.nombre like '%PRIMEROS AUXILIOS%')

--48.NOMBRE DE TODOS LOS EMPLEADOS A EXCEPCION DE INSTRUCTORES 
select p.nombre+' '+p.apellidos as [Trabajador] from tipoEmpleado t
inner join trabajador e on t.id = e.tipoEmp_id
inner join persona p on e.trabajador_id = p.id
where t.nombre not like '%INSTRUCTOR%'

--49.NOMBRE DE TODOS LOS DIRECTORES POR CLUB
select c.nombre as [Club] , p.nombre+' '+p.apellidos as [Director] from tipoEmpleado t
inner join trabajador e on t.id = e.tipoEmp_id
inner join persona p on e.trabajador_id = p.id
inner join HistorialTrabajador h on e.trabajador_id = h.trabajador_id
inner join club c on  h.club_id = c.id
where t.nombre like 'Director'

--50.NOMBRE DE TODOS LOS NI�OS QUE HAYAN NACIDO EN EL MES DE "NOVIEMBRE"
selecT p.nombre+' '+p.apellidos as [Ni�o] from persona p
inner join nino n on n.nino_id = p.id
where n.fecha_nacimiento like  '%-11-%'







