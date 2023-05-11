select * from peliculas;
select * from reparto;

alter table reparto rename p_id to id ;
ALTER TABLE peliculas ADD constraint pk_id primary key(id); 
ALTER TABLE reparto ADD constraint fk_id foreign key (id) references peliculas (id); 

select * from peliculas where pelicula = 'Titanic'; 

select * from reparto where id = '2';

select id, actor from reparto where actor='Harrison Ford';
select count (id) from reparto where actor='Harrison Ford';

SELECT pelicula, "Año estreno" FROM peliculas WHERE "Año estreno" BETWEEN 1990 AND 1999  ORDER BY "Año estreno" ASC;

SELECT LENGTH (pelicula) as longitud_titulo from peliculas;

SELECT LENGTH (pelicula) as longitud_titulo from peliculas order by longitud_titulo desc;


