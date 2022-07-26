--Procedimiento Almacenado---
--Retorne el nombre del representante y el rol que ocupa a través de la matricula ingresada.
create procedure Procedimiento_almacenado
@codigo_matricula int
AS
	select 
	ni.NOMBRES_NINO as Nombres_Niño,
	ni.APELLIDO_NINO AS Apellidos_NIño,
	Repre.NOMBRES_REPRESENTANTE as Nombre_Representante,
	Repre.APELLIDOS_REPRESENTANTE as Apellido_Representante,
	Repre.ROL_REPRESENTANTE as Rol
	from REPRESENTANTE Repre
	INNER JOIN NINO ni ON ni.ID_REPRESENTANTE=Repre.ID_REPRESENTANTE
	INNER JOIN MATRICULA matri ON matri.ID_NINO=ni.ID_NINO
	where (matri.ID_MATRICULA=@codigo_matricula)
go

--Prueba
execute Procedimiento_almacenado '5'



