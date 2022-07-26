--Trigger
--El kínder  no acepta que los infantes puedan matricularse en mas de 3 club
CREATE TRIGGER Tr_matricula_mayor
ON  CLUB_MATRICULA FOR  INSERT
AS 
DECLARE @CONT INT,@NINO INT 

SET @NINO =(select ID_MATRICULA FROM inserted WHERE inserted.ID_MATRICULA = ID_MATRICULA)
SET @CONT =	(SELECT  COUNT(*) FROM CLUB_MATRICULA WHERE  ID_MATRICULA= @NINO);	

IF @CONT>3
BEGIN
	DECLARE @MENSAJE VARCHAR(100)
	SET @MENSAJE='El estudiante ya esta matriculado en 3 club'
	print (@Mensaje)
	rollback transaction
END


--PRUEBAS
--prueba id Matricula 3
--La matricula 3 esta matriculada en 2 club al ingresar uno nuevo tendrá 3
insert into club_Matricula values(15,4,3,'Bueno','Siempre levantaba la mano');
--Al intentar ingresarse en otro club no podra
insert into club_Matricula values(16,4,3,'Bueno','Siempre levantaba la mano');
--visualizar que la nueva matricula 16 en el club de la matricula 3 no se ingreso
select * from CLUB_MATRICULA;

--Prueba id Matricula 5
--La matricula 5 ya esta en 3 club si intenta ingresar no podra 
insert into club_Matricula values(16,4,5,'Bueno','Siempre levantaba la mano');
--visualizar que la nueva matricula 16 en el club de la matricula 5 no se ingreso
select * from CLUB_MATRICULA;