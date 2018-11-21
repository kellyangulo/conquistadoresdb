use ConquistadoresBD
GO
------------------------------------------- INDEX -------------------------------------------
create nonclustered index IDX_Niño
on nino (nino_id)
go

select * from nino

go
create nonclustered index IDX_NiñoActividad
on ninoactividad (nino_id)
go

select * from ninoactividad

go
create nonclustered index IDX_ClaseActividad
on claseActividad (actividad_id)

go
select * from claseActividad

go
create nonclustered index IDX_Actividad
on actividad (nombre)
go

select * from Actividad

go
create nonclustered index IDX_NiñoReunion
on ReunionNino (reunion_id)
go

select * from ReunionNino

go
create nonclustered index IDX_NiñoCuota
on PagoCuota (reunion_id,nino_id)
go

select * from PagoCuota

go
create nonclustered index IDX_Persona
on persona (nombre,apellidos)
go

select * from persona

go
create nonclustered index IDX_AlergiaNiño
on alergiaNino (alergia_id,nino_id)
go

select * from alergiaNino

go
create nonclustered index IDX_HistorialTrabajador
on HistorialTrabajador (trabajador_id,fecha)
go

select * from HistorialTrabajador

go
create nonclustered index IDX_NiñoClase
on ninoClase (clase_id,nino_id)
go

select * from ninoClase

go
create nonclustered index IDX_NiñoUnidad
on ninoUnidad (unidad_id,nino_id)
go

select * from ninoUnidad

go
create nonclustered index IDX_NiñoClub
on ninoClub (club_id,nino_id)
go

select * from ninoClub

go
create nonclustered index IDX_Campamento
on campamento (fecha)
go

select * from campamento

go
