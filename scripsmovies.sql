select * from peliculas; --verificación de la carga de archivos por medio de DBeaver
select * from reparto;

alter table reparto rename p_id to id ; --modificación de tabla para asignar nombre a las columnas de reparte
ALTER TABLE peliculas ADD constraint pk_id primary key(id); --modificación para asignar primary y foreign key y relacionar las tablas
ALTER TABLE reparto ADD constraint fk_id foreign key (id) references peliculas (id); 

select * from peliculas where pelicula = 'Titanic'; --requerimiento numero 3

select * from reparto where id = '2'; --requerimiento número 4

select id, actor from reparto where actor='Harrison Ford'; --requerimiento número 5
select count (id) from reparto where actor='Harrison Ford'; --requerimiento número 5

SELECT pelicula, "Año estreno" FROM peliculas WHERE "Año estreno" BETWEEN 1990 AND 1999  ORDER BY "Año estreno" ASC; --requerimiento número 6

SELECT LENGTH (pelicula) as longitud_titulo from peliculas; --requerimiento número 7

SELECT LENGTH (pelicula) as longitud_titulo from peliculas order by longitud_titulo desc;--requerimiento número 8
SELECT MAX(LENGTH(titulo)) FROM peliculas; --RESPUESTA CORRECTA PARA EL NUMERO 8

TRUNCATE peliculas, reparto  RESTART IDENTITY;-- requerimiento numero 2 del desafio.


