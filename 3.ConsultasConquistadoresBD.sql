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
SELECT * FROM ACTIVIDAD --21,1  , 
SELECT * FROM ninoActividad n where n.actividad_id = 1

--10.CANTIDAD DE NIÑOS QUE HAN REALIZADO LA ACTIVIDAD DE "VOLEIBOL" PERO NO LA DE "CICLISMO"

--TERMINARLA
((select n1.nino_id from actividad a 
 inner join ninoActividad n1 on a.id = n1.actividad_id 
 where  a.nombre like '%Voleibol%' )
	except
 (select n1.nino_id from actividad a 
 inner join ninoActividad n1 on a.id = n1.actividad_id 
 where  a.nombre like '%Ciclismo%' ))
 
--11.NOMBRE DE LOS TRABAJADORES QUE SE HAN ESTADO EN MAS DE CLUB 
select p.nombre from persona p
inner join trabajador t on p.id = t.trabajador_id
where exists
(SELECT H.trabajador_id, count( H.trabajador_id) as Cantidad
FROM HistorialTrabajador H
GROUP BY  H.trabajador_id
HAVING count( H.trabajador_id) > 1) 

--12.NOMBRE DE LAS UNIDADES QUE TENGAN NIÑOS MAYORES DE 10 AÑOS DE EDAD
select nino_id from nino where 13 >= DATEDIFF(yy,GETDATE(),nino.fecha_nacimiento)

--13.NOMBRE DE LAS CLASES QUE SOLO TENGAN NIÑOS MAYORES DE 12 AÑOS DE EDAD

--14.NOMBRE DE LAS CLASES QUE TENGAN NIÑOS MENORES DE 15 AÑOS DE EDAD

--15.CANTIDAD DE DINERO OBTENIDA DE LAS CUOTAS DADAS EN LA REUNION 12


--16.CANTIDAD DE NIÑOS QUE ASISTIERON A LA REUNION 8



--17.NOMBRE DE LOS NIÑOS MÁS CUMPLIDOS DE LA REUNION 2


--18.NOMBRE DE LOS NIÑOS QUE HAN ESTADO EN MÁS DE UNA CLASE


--19.NOMBRE DE LOS NIÑOS QUE HAN ESTADO EN MÁS DE UNA CLUB


--20.NOMBRE DE LOS PAPAS QUE TIENE MÁS DE UN HIJO



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

--23.CANTIDAD DE PAPAS QUE SU OCUPACION ES ""
--24.CANTIDAD DE DINERO OBTENIDO POR CADA REUNION
--25.NOMBRE DE LOS NIÑOS QUE PERTENECEN A LAS CLASE B
--26.NOMBRE DE LOS NIÑOS QUE PERTENECEN AL CLUB ""
--27.CUANTOS NIÑOS HAN REALIZADO ESTA ACTIVIDAD Y TAMBIÉN ESTA
--28.
--29.
--30.

-------------------------------- MAL 

--. MOSTRAR EL NOMBRE DE LAS UNIDADES QUE SOLO TENGAN NIÑOS MAYORES DE 10 AÑOS
select u.nombre from unidad u
union 
(select fecha_nacimiento, datediff(yy,getdate(),fecha_nacimiento) from nino)
inner join ninoUnidad nu on u.id = nu.unidad_id
inner join nino n on nu.nino_id = n.nino_id
where datediff(yy,getdate(),n.fecha_nacimiento)


