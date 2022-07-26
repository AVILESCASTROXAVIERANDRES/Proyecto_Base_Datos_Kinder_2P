--------Consulta ireport------
--Reporte en ireport que muestre en un gráfico de torta cantidad de estudiantes matriculados en los clubes.

select 
cl.Nombre_club as Club,
count (clma.id_club) as Alumnos
from club cl
inner join Club_matricula clma on cl.id_club=clma.id_club
group by cl.nombre_club,clma.id_club