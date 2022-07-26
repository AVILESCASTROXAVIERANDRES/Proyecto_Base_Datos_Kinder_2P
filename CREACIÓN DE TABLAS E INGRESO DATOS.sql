
--CREACION DE TABLAS

/*==============================================================*/
/* Table: CLUB                                                  */
/*==============================================================*/
create table CLUB (
   ID_CLUB              int                  not null,
   NOMBRE_CLUB          varchar(60)          null,
   DESCRIPCION_CLUB     varchar(200)         null,
   MATERIALES_CLUB      varchar(200)         null,
   DURACION_CLUB        int                  null,
   constraint PK_CLUB primary key nonclustered (ID_CLUB)
)
go

/*==============================================================*/
/* Table: CLUB_MATRICULA                                        */
/*==============================================================*/
create table CLUB_MATRICULA (
   ID_CLUB_MATRI        int                  not null,
   ID_CLUB              int                  null,
   ID_MATRICULA         int                  null,
   RENDIMIENTO_CLUB_MATRI varchar(30)          null,
   OBSERVACIONES_CLUB_MATRI varchar(200)         null,
   constraint PK_CLUB_MATRICULA primary key nonclustered (ID_CLUB_MATRI)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_12_FK on CLUB_MATRICULA (
ID_CLUB ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_8_FK on CLUB_MATRICULA (
ID_MATRICULA ASC
)
go

/*==============================================================*/
/* Table: CLUB_PROFESOR                                         */
/*==============================================================*/
create table CLUB_PROFESOR (
   ID_CLUB_PROFESOR     int                  not null,
   ID_PROFESOR          int                  null,
   ID_CLUB              int                  null,
   CLUB_PROFESOR_OBSERACION varchar(100)         null,
   constraint PK_CLUB_PROFESOR primary key nonclustered (ID_CLUB_PROFESOR)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on CLUB_PROFESOR (
ID_PROFESOR ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_13_FK on CLUB_PROFESOR (
ID_CLUB ASC
)
go

/*==============================================================*/
/* Table: ESTADO_SOCIAL                                         */
/*==============================================================*/
create table ESTADO_SOCIAL (
   ID_ESTADO_SOCIAL     int                  not null,
   ID_NINO              int                  null,
   TALLA_CAMISA_ESTADO_SOCIAL int                  null,
   TALLA_PANTALON_ESTADO_SOCIAL int                  null,
   TALLA_ZAPATOS_ESTADO_SOCIAL int                  null,
   constraint PK_ESTADO_SOCIAL primary key nonclustered (ID_ESTADO_SOCIAL)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_11_FK on ESTADO_SOCIAL (
ID_NINO ASC
)
go

/*==============================================================*/
/* Table: MATRICULA                                             */
/*==============================================================*/
create table MATRICULA (
   ID_MATRICULA         int                  not null,
   ID_NINO              int                  null,
   FECHA__MATRICULA     datetime             null,
   ANO_LECTIVO_MATRICULA int                  null,
   PRECIO_MATRICULA     int                  null,
   DESCRIPCION_MATRICULA varchar(20)          null,
   constraint PK_MATRICULA primary key nonclustered (ID_MATRICULA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_7_FK on MATRICULA (
ID_NINO ASC
)
go

/*==============================================================*/
/* Table: NINO                                                  */
/*==============================================================*/
create table NINO (
   ID_NINO              int                  not null,
   ID_REPRESENTANTE     int                  null,
   CEDULA_NINO          varchar(10)          null,
   NOMBRES_NINO         varchar(40)          null,
   APELLIDO_NINO        varchar(40)          null,
   GENERO_NINO          varchar(20)          null,
   FECHA_NACIMIENTO_NINO datetime             null,
   NACIONALIDAD_NINO    varchar(20)          null,
   constraint PK_NINO primary key nonclustered (ID_NINO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_6_FK on NINO (
ID_REPRESENTANTE ASC
)
go

/*==============================================================*/
/* Table: PROFESOR                                              */
/*==============================================================*/
create table PROFESOR (
   ID_PROFESOR          int                  not null,
   NOMBRE_PROFESOR      varchar(40)          null,
   APELLIDO_PROFESOR    varchar(40)          null,
   CEDULA_PROFESOR      varchar(10)          null,
   PROFESION_PROFESOR   varchar(40)          null,
   EDAD_PROFESOR        int                  null,
   GENERO_PROFESOR      varchar(40)          null,
   NACIONALIDAD_PROFESOR varchar(40)          null,
   ANO_LECTIVO_PROFESOR int                  null,
   constraint PK_PROFESOR primary key nonclustered (ID_PROFESOR)
)
go

/*==============================================================*/
/* Table: REPRESENTANTE                                         */
/*==============================================================*/
create table REPRESENTANTE (
   ID_REPRESENTANTE     int                  not null,
   ROL_REPRESENTANTE    varchar(20)          null,
   CEDULA_REPRESENTANTE varchar(10)          null,
   NOMBRES_REPRESENTANTE varchar(40)          null,
   APELLIDOS_REPRESENTANTE varchar(40)          null,
   GENERO_REPRESENTANTE varchar(20)          null,
   NACIONALIDAD_REPRESENTANTE varchar(20)          null,
   DIRECCION_REPREESNTANTE varchar(60)          null,
   TELEFONO_HOGAR_REPRESNTANTE varchar(10)          null,
   TELEFONO_DOMICILIO_REPRESENTANTE varchar(10)          null,
   constraint PK_REPRESENTANTE primary key nonclustered (ID_REPRESENTANTE)
)
go

/*==============================================================*/
/* Table: SALUD                                                 */
/*==============================================================*/
create table SALUD (
   ID_SALUD             int                  not null,
   ID_NINO              int                  null,
   ALERGIAS_SALUD       varchar(40)          null,
   MEDICAMENTO_REGULAR_SALUD varchar(40)          null,
   ULTIMA_FECHA_ENFERMO_SALUD datetime             null,
   DIAGNOSTICO_SALUD    varchar(40)          null,
   DOCTOR_TRATANTE_SALUD varchar(40)          null,
   constraint PK_SALUD primary key nonclustered (ID_SALUD)
)
go

/*==============================================================*/
--INGRESO DE DATOS



--tabla representante
Insert into REPRESENTANTE VALUES (1,'Padre','1325478962','Xavier Andres','Aviles Castro',
'Masculino','Ecuatoriano','El palmar','0989141155','0528445');
Insert into REPRESENTANTE VALUES (2,'Padre','1326984562','Ariel Paco','Cefran Meza',
'Masculino','Ecuatoriano','La pradera','092156328','0529635');
Insert into REPRESENTANTE VALUES (3,'Tutor','1325478962','Alfonso Hernandez','Bermudez Alvarado',
'Masculino','Ecuatoriano','Los esteros','098521432','0527824');
Insert into REPRESENTANTE VALUES (4,'Tutor','1325478962','Maria Genesis','Velez Mendoza',
'Femenino','Ecuatoriano','El palmar','0989141155','0528445');
Insert into REPRESENTANTE VALUES (5,'Madre','1324851489','Analy Andrea','Alonzo Figueroa',
'Femenino','Ecuatoriano','Barrio Cuba','098214563','0529215');
Insert into REPRESENTANTE VALUES (6,'Madre','1325478621','Mell Nikole','Mera Alcivar',
'Femenino','Ecuatoriano','Los esteros','098214563','0529652');
Insert into REPRESENTANTE VALUES (7,'Padre','1325789658','Pedro Andres','Hernandez Castro',
'Masculino','Ecuatoriano','El palmar','0982145698','0523298');
Insert into REPRESENTANTE VALUES (8,'Padre','1351709405','Alfonso Andres','Vele Castro',
'Masculino','Ecuatoriano','El palmar','0989141155','0528445');
Insert into REPRESENTANTE VALUES (9,'Padre','1351709405','Alex Mateo','Andrade Castro',
'Masculino','Ecuatoriano','Jocay','0982145632','0525862');
Insert into REPRESENTANTE VALUES (10,'Tutor','1352489632','Ariel Andres','Matute Castro',
'Masculino','Ecuatoriano','El palmar','0982514569','0528545');
Insert into REPRESENTANTE VALUES (11,'Madre','1354896325','Patricia Romero','Alonzo anchundia',
'Femenino','Ecuatoriano','Barrio san ignacio','098514569','0585555');
Insert into REPRESENTANTE VALUES (12,'Padre','1325458962','Pablo Andres','Cedeño Arcentales',
'Masculino','Ecuatoriano','La pradera','0989141455','0589445');
Insert into REPRESENTANTE VALUES (13,'Madre','1389578621','Analy Moreira','Anchundia Castro',
'Femenino','Ecuatoriano','Los esteros','098218563','0528852');
Insert into REPRESENTANTE VALUES (14,'Tutor','1328578962','Marcos Genesis','Lopez Mendoza',
'Maculino','Ecuatoriano','El palmar','0996141155','0528415');
Insert into REPRESENTANTE VALUES (15,'Padre','1351889405','Pedro Andres','Paramo Castro',
'Masculino','Ecuatoriano','El palmar','0989148855','0528995');

---Profesor

Insert into Profesor values(1,'Pedro Hernandes','Avile Castro','1317545405','Maestro Artes',25,'Masculino','Ecuatoriano',2021);
Insert into Profesor values(2,'Maria Romina','Castro Alvarado','1352698751','Maestro Pensamiento Matematico',24,'Femenino','Ecuatoriano',2021);
Insert into Profesor values(3,'Paco Pedro','Velez Cifuentes','1265987456','Maestro Educación Fisica',26,'Masculino','Venenzolano',2021);
Insert into Profesor values(4,'Ariel Alex','Anchundia Mera','1352478963','Maestro Manualidades',27,'Masculino','Ecuatoriano',2021);
Insert into Profesor values(5,'Fernanda Analy','Mera Mera','1352478963','Maestro Dibujo',30,'Femenino','Ecuatoriano',2021);
Insert into Profesor values(6,'Genesis Nikole','Flecher Mera','1356984525','Maestro Historia',29,'Femenino','Ecuatoriano',2021);
Insert into Profesor values(7,'Andres Mateo','Velez Mero','1362547896','Maestro Ingles',32,'Masculino','Venenzolano',2022);
Insert into Profesor values(8,'Irvin Lenny','Anchundia Aviles','1324789635','Maestro Artes',28,'Masculino','Ecuatoriano',2022);
Insert into Profesor values(9,'Karen Carolina','Mera Arcentales','1352698745','Maestro Pensamiento Matematico',29,'Femenino','Ecuatoriano',2022);
Insert into Profesor values(10,'Jorge Carlos','Aviles Arcentales','1352698745','Maestro Manualidades',29,'Masculino','Ecuatoriano',2022);

---niños
insert into Nino values(1,1,'1352478965','Xavier Alberto','Avilés Mendoza','Masculino','20-05-2017','Ecuatoriano');
insert into Nino values(2,2,'1352489654','Maria Matilde','Velez Macias','Femenino','14-03-2016','Ecuatoriano');
insert into Nino values(3,3,'1325647896','Pedro Arcentales','Sanchez Avila','Masculino','20-02-2017','Ecuatoriano');
insert into Nino values(4,1,'1325489654','Analy Pamela','Anchunida Alonzo','Femenino','14-01-2017','Ecuatoriano');
insert into Nino values(5,2,'1385455555','Jorge Carlos','Cefran Macias','Masculino','15-04-2018','Ecuatoriano');
insert into Nino values(6,1,'1365455554','Genesis Mell','Anchundia Mera','Femenino','18-05-2018','Ecuatoriano');
insert into Nino values(7,2,'1385455584','Carlos Andrés','Andrade Mera','Masculino','22-05-2017','Ecuatoriano');
insert into Nino values(8,3,'1325478952','Yesly Maria','Velez Escobar','Femenino','11-04-2016','Ecuatoriano');
insert into Nino values(9,5,'1236547896','Jorge Andrés','Hernandez Parrales','Masculino','05-05-2018','Ecuatoriano');
insert into Nino values(10,4,'1236547896','Nikole Andrea','Anchundia Alonzo','Femenino','06-05-2017','Ecuatoriano');
insert into Nino values(11,1,'1385455584','José Andrés','Mera Mera','Masculino','15-01-2017','Ecuatoriano');
insert into Nino values(12,10,'1235447896','Maria Andrea','Gomez Alonzo','Femenino','08-05-2017','Ecuatoriano');
insert into Nino values(13,14,'1238547896','Carlos Andres','Perez Alonzo','Masculino','15-05-2017','Ecuatoriano');
insert into Nino values(14,15,'1385459984','José Ariel','Mera Parrales','Masculino','16-01-2017','Ecuatoriano');
insert into Nino values(15,12,'1235449596','Maria Antonia','Cedeño Alonzo','Femenino','05-05-2017','Ecuatoriano');
insert into Nino values(16,13,'1238547896','Eugenio Andres','Perez Anchundia','Masculino','18-05-2017','Ecuatoriano');
insert into Nino values(17,6,'1385459684','José Paco','Casanova Mera','Masculino','22-01-2017','Ecuatoriano');
insert into Nino values(18,9,'1233347896','Martha Andrea','Andrade Alonzo','Femenino','01-05-2017','Ecuatoriano');
insert into Nino values(19,10,'1238547896','Carlos Andres','Perez Alonzo','Masculino','15-05-2017','Ecuatoriano');
insert into Nino values(20,7,'1352478965','Efrain Alberto','Hernandez Mendoza','Masculino','21-05-2017','Ecuatoriano');
insert into Nino values(21,7,'1352488954','Maria Clotilde','Hernandez Macias','Femenino','14-03-2016','Ecuatoriano');
insert into Nino values(22,12,'1325686896','Matias Arcentales','Cedeño Avila','Masculino','20-02-2017','Ecuatoriano');
insert into Nino values(23,14,'1325489678','Nayeli Pamela','Parrales Alonzo','Femenino','15-01-2017','Ecuatoriano');
insert into Nino values(24,15,'1385455555','jose Carlos','Paramo Macias','Masculino','16-04-2018','Ecuatoriano');
insert into Nino values(25,8,'1385665555','jose Irvin','Vele Macias','Masculino','18-04-2018','Ecuatoriano');
insert into Nino values(26,10,'1365925554','Maria Jose','Anchundia Mera','Femenino','19-05-2018','Ecuatoriano');
insert into Nino values(27,8,'138545664','Carlos Hernez','Vele Mera','Masculino','29-05-2017','Ecuatoriano');
insert into Nino values(28,6,'1328878952','Valentina Maria','Alcivar Escobar','Femenino','10-04-2016','Ecuatoriano');
insert into Nino values(29,5,'1236547896','Ernesto Andrés','Alonzo Parrales','Masculino','04-05-2018','Ecuatoriano');
insert into Nino values(30,4,'1236857896','Nikol Maria','Anchundia Aviles','Femenino','08-05-2017','Ecuatoriano');

---salud

insert into Salud values (1,11,'Abejas, Polen','Paracetamol y jarabe','25-05-2022','No debe exponerse a lugares con Abejas','Mateo Aviles');
insert into Salud values (2,10,'Pelo de Perro','Loratadina','26-05-2022','No debe tener perros','Paco Velez');
insert into Salud values (3,9,'Picadura de insectos','doxiciclina, suero con vitaminas','15-05-2022','No debe exponerse a lugares con insectos','Irvin Palacios');
insert into Salud values (4,4,'Fragancias','Loratanida','5-05-2022','No debe ponerse perfumes','Ariel Moreno');
insert into Salud values (5,7,'camaron','Loratadina','29-05-2022','No debe comer camarones ','Maria vera');
insert into Salud values (6,6,'Polvo','Loratadina','26-05-2022','No debe estar en lugares con mucho Polvo','Francisco Aviles');
insert into Salud values (7,5,'Pelo de Gato','Loratadina','29-05-2022','No debe tener gatos','Analy Velez');
insert into Salud values (8,8,'Maquillaje','doxiciclina y loratadina','19-05-2022','No debe utilizar maquillaje','Irvin Cifuentes');
insert into Salud values (9,3,'Cremas','Loratanida y suero','2-05-2022','No debe ponerse cremas','Lenny Moreno');
insert into Salud values (10,2,'Calamar','Loratadina','16-05-2022','No debe comer calamares ','Marco vera');
insert into Salud values (11,1,'Ajo','Loratadina y vitaminas','10-05-2022','No debe comer niguna comida con ajo ','Maria vera');
insert into Salud values (12,12,'Abejas, Polen','Paracetamol y jarabe','25-05-2022','No debe exponerse a lugares con Abejas','Mateo Aviles');
insert into Salud values (13,13,'Pelo de Perro','Loratadina','26-05-2022','No debe tener perros','Paco Velez');
insert into Salud values (14,14,'Picadura de insectos','doxiciclina, suero con vitaminas','15-05-2022','No debe exponerse a lugares con insectos','Irvin Palacios');
insert into Salud values (15,16,'Fragancias','Loratanida','5-05-2022','No debe ponerse perfumes','Ariel Moreno');
insert into Salud values (16,15,'camaron','Loratadina','29-05-2022','No debe comer camarones ','Maria vera');
insert into Salud values (17,18,'Polvo','Loratadina','26-05-2022','No debe estar en lugares con mucho Polvo','Francisco Aviles');
insert into Salud values (18,17,'Pelo de Gato','Loratadina','29-05-2022','No debe tener gatos','Analy Velez');
insert into Salud values (19,19,'Maquillaje','doxiciclina y loratadina','19-05-2022','No debe utilizar maquillaje','Irvin Cifuentes');
insert into Salud values (20,20,'Cremas','Loratanida y suero','2-05-2022','No debe ponerse cremas','Lenny Moreno');
insert into Salud values (21,21,'Abejas, Polen','Paracetamol y jarabe','25-05-2022','No debe exponerse a lugares con Abejas','Mateo Aviles');
insert into Salud values (22,23,'Pelo de Perro','Loratadina','26-05-2022','No debe tener perros','Paco Velez');
insert into Salud values (23,22,'Picadura de insectos','doxiciclina, suero con vitaminas','15-05-2022','No debe exponerse a lugares con insectos','Irvin Palacios');
insert into Salud values (24,24,'Fragancias','Loratanida','5-05-2022','No debe ponerse perfumes','Ariel Moreno');
insert into Salud values (25,25,'camaron','Loratadina','29-05-2022','No debe comer camarones ','Maria vera');
insert into Salud values (26,26,'Polvo','Loratadina','26-05-2022','No debe estar en lugares con mucho Polvo','Francisco Aviles');
insert into Salud values (27,27,'Pelo de Gato','Loratadina','29-05-2022','No debe tener gatos','Analy Velez');
insert into Salud values (28,28,'Maquillaje','doxiciclina y loratadina','19-05-2022','No debe utilizar maquillaje','Irvin Cifuentes');
insert into Salud values (29,30,'Cremas','Loratanida y suero','2-05-2022','No debe ponerse cremas','Lenny Moreno');
insert into Salud values (30,29,'Calamar','Loratadina','16-05-2022','No debe comer calamares ','Marco vera');

--estado social

insert into Estado_Social values(1,11,30,30,28);
insert into Estado_Social values(2,10,28,33,34);
insert into Estado_Social values(3,9,26,34,32);
insert into Estado_Social values(4,8,30,29,26);
insert into Estado_Social values(5,7,29,30,28);
insert into Estado_Social values(6,6,29,28,28);
insert into Estado_Social values(7,5,29,32,34);
insert into Estado_Social values(8,4,27,34,32);
insert into Estado_Social values(9,3,38,29,26);
insert into Estado_Social values(10,2,27,30,28);
insert into Estado_Social values(11,1,30,30,28);
insert into Estado_Social values(12,12,28,33,34);
insert into Estado_Social values(13,13,26,34,32);
insert into Estado_Social values(14,14,30,29,26);
insert into Estado_Social values(15,15,29,30,28);
insert into Estado_Social values(16,16,29,28,28);
insert into Estado_Social values(17,17,29,32,34);
insert into Estado_Social values(18,18,27,34,32);
insert into Estado_Social values(19,19,38,29,26);
insert into Estado_Social values(20,20,27,30,28);
insert into Estado_Social values(21,21,30,30,28);
insert into Estado_Social values(22,22,28,33,34);
insert into Estado_Social values(23,23,26,34,32);
insert into Estado_Social values(24,24,30,29,26);
insert into Estado_Social values(25,26,29,30,28);
insert into Estado_Social values(26,25,29,28,28);
insert into Estado_Social values(27,27,29,32,34);
insert into Estado_Social values(28,28,27,34,32);
insert into Estado_Social values(29,29,38,29,26);
insert into Estado_Social values(30,30,27,30,28);

--Club

insert into Club values(1,'Artes con plastilina','Un club aprender a hacer figuras con plastilina',
'Se necesitan guantes, plastilina, regla',2);
insert into Club values(2,'Armar legos','Un club para armar legos  desarrollar mas actividad mental',
'Se necesitan legos, imagenes',3);
insert into Club values(3,'Canto','Un club aprender a cantar canciones de niños',
'Se necesitan cuadernos, lapiz, borrador ',4);
insert into Club values(4,'Caligrafia','Un club para mejorar la manera de escribir',
'Se necesitan cuaderno, lapiz, esferos, borrador, hojas de linea',4);


--Club_Profesor
insert into CLUB_PROFESOR values (1,2,1,'El profesor es muy estricto');
insert into CLUB_PROFESOR values (2,1,2,'El profesor da premios a los estudiantes');
insert into CLUB_PROFESOR values (3,3,3,'El profesor los saca a pasear');
insert into CLUB_PROFESOR values (4,2,4,'El profesor les ayuda a entender');



--matricula


insert into Matricula values (1,5,'12-12-2021',2021,90,'Retirado');
insert into Matricula values (2,6,'13-12-2021',2021,90,'Retirado');
insert into Matricula values (3,7,'11-12-2021',2021,90,'Matriculado');
insert into Matricula values (4,10,'29-05-2021',2021,90,'Matriculado');
insert into Matricula values (5,11,'30-05-2021',2021,90,'Matriculado');
insert into Matricula values (6,2,'11-12-2021',2021,90,'Retirado');
insert into Matricula values (7,3,'29-05-2021',2021,90,'Matriculado');
insert into Matricula values (8,4,'11-12-2021',2021,90,'Matriculado');
insert into Matricula values (9,1,'29-05-2021',2021,90,'Matriculado');
insert into Matricula values (10,9,'29-05-2021',2021,90,'Retirado');
insert into Matricula values (11,20,'11-12-2021',2021,90,'Retirado');
insert into Matricula values (12,15,'15-12-2021',2021,90,'Retirado');
insert into Matricula values (13,8,'29-05-2021',2021,90,'Retirado');
insert into Matricula values (14,12,'11-12-2021',2021,90,'Retirado');
insert into Matricula values (15,13,'11-12-2021',2021,90,'Retirado');
insert into Matricula values (16,14,'15-12-2021',2021,90,'Retirado');
insert into Matricula values (17,17,'16-05-2022',2022,90,'Retirado');
insert into Matricula values (18,18,'22-05-2022',2022,90,'Matriculado');
insert into Matricula values (19,21,'2-05-2022',2022,90,'Matriculado');
insert into Matricula values (20,22,'18-05-2022',2022,90,'Matriculado');
insert into Matricula values (21,29,'20-05-2022',2022,90,'Matriculado');
insert into Matricula values (22,27,'16-05-2022',2022,90,'Retirado');
insert into Matricula values (23,26,'22-05-2022',2022,90,'Matriculado');
insert into Matricula values (24,28,'20-05-2022',2022,90,'Matriculado');
insert into Matricula values (25,16,'16-05-2022',2022,90,'Retirado');
insert into Matricula values (26,25,'22-05-2022',2022,90,'Retirado');
insert into Matricula values (27,30,'20-05-2022',2022,90,'Retirado');
insert into Matricula values (28,24,'16-05-2022',2022,90,'Retirado');
insert into Matricula values (29,23,'22-05-2022',2022,90,'Retirado');
insert into Matricula values (30,19,'20-05-2022',2022,90,'Retirado');



--club_matricula


insert into club_Matricula values(1,2,7,'Bueno','Se porto muy bien');
insert into club_Matricula values(2,1,3,'Regular','no hizo caso');
insert into club_Matricula values(3,3,5,'Bueno','Cumplio con lo debido');
insert into club_Matricula values(4,4,8,'Excelente','Saco muy buenas calificaciones');
insert into club_Matricula values(5,2,3,'Excelente','Hizo un buen trabajo');
insert into club_Matricula values(6,2,5,'Regular','No hizo casi tareas');
insert into club_Matricula values(7,3,8,'Bueno','Presentaba siempre tareas');
insert into club_Matricula values(8,3,5,'Bueno','Siempre levantaba la mano');
insert into club_Matricula values(9,1,19,'Bueno','Presentaba siempre tareas');
insert into club_Matricula values(10,3,20,'Bueno','Siempre levantaba la mano');
insert into club_Matricula values(11,1,11,'Regular','no hizo caso');
insert into club_Matricula values(12,3,1,'Bueno','Cumplio con lo debido');
insert into club_Matricula values(13,4,28,'Excelente','Saco muy buenas calificaciones');
insert into club_Matricula values(14,2,26,'Excelente','Hizo un buen trabajo');