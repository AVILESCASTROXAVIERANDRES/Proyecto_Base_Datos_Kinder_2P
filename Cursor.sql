--Cursor--
--Muestre la cantidad de alumnos retirados y el rol de su representantes si es Padre, Madre o Tutor en cada año lectivo

declare 
@Año varchar(20),
@Representante varchar (20),
@cantidad varchar(20)

declare Cursor_Proye Cursor
for 
select 
ma.ANO_LECTIVO_MATRICULA as Año, rl.ROL_REPRESENTANTE, count (rl.ROL_REPRESENTANTE) as REPRESENTANTE_Cantidad
from MATRICULA ma
inner join NINO ni ON  ma.ID_NINO=ni.ID_NINO
inner join REPRESENTANTE rl on rl.ID_REPRESENTANTE = ni.ID_REPRESENTANTE
where (ma.DESCRIPCION_MATRICULA='Retirado')
group by ma.ANO_LECTIVO_MATRICULA, rl.ROL_REPRESENTANTE
order by Año asc
open Cursor_Proye 
fetch next from Cursor_Proye into @Año,@Representante,@cantidad
While(@@FETCH_STATUS=0)
	begin 
		print 'Año Lectivo: '+ @Año +' Rol: '+  @Representante +' Cantidad: '+ @cantidad;
		fetch next from Cursor_Proye into @Año,@Representante,@cantidad
	end
close Cursor_Proye
deallocate Cursor_Proye

