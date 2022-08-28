![portada](https://github.com/YasminMoreno/w3-database-project/blob/main/imagenes/portada.png)

# w3-database-project

Proyecto sobre limpieza de varios csv con python y carga de datos para formar el database en SQL.

## Introducción

Para este proyecto vamos a analizar `8 csv` para crear en MySQL Workbench un database con su EER y varias querys que contesten a las preguntas que queremos acerca de él. 

Para ello vamos a utiplizar python y una vez hagamos la limpieza en él, MySQL Workbench.

Podemos crear tablas nuevas, renombrarlas, eliminar columnas, etc. 

Posteriormente crearemos unas preguntas, contestaremos a ellas mediante queries y sacaremos las conclusiones finales.
 
 
## Objetivos

1. Ver los 8 csv y analizar sus tablas y columnas para ver como queremos juntarlas y si quieremos crear alguna tabla nueva.
2. Hacer limpieza con pandas sobre los 8 CSV y cargarlos en MySQL Workbench
3. Crear el EER del database importado.
4. Hacer las preguntas a las cuales queremos contestar.
5. Utilizar las queries para resolver estas preguntas.


## Procedimiento

1. Hemos importados los 8 csv y los hemos ido limpiando de uno en uno, hemos quitado de todos ellos los duplicados y nulos si tenían y las columnas que no nos servían.
2. Hemos juntado la columna `first_name` y `last_name` y hemos creado una nueva columna llamada `complete_name` en la tabla actor.
3. La tabla `old_HDD` la hemos renombrado y convertido en 2, importando solo una vez el csv y escogiendo las columnas que nos interesaban. La primera de ellas llamada `filmactor` y la segunda `filmcategory`. Las hemos unido entre `film` y `actor` y entre `film` y `category` sucesivamente.
4. Hemos realizado un inner join mediante merge en la columna `inventory_id` de entra las tablas `inventory` y `rental` para solucionar esa columna y poderlas unir.
6. Hemos exportado todos los csv a MySQL Workbench y hemos creado el database `videoclub` y sus Primeray Keys y Foreing Keys. Todo ello lo hemos creado mediante python por si en un futuro queremos rectificar alguna tabla para que nos sea más sencillo a la hora de ejecutar.
7. Una vez exportado el database creamos la EER.
8. Por último escribimos las preguntas a las que queremos contestar y creamos las queries en SQL.



## Entregables

1. Archivo `database_proyect_3.ipynb` con el código donde limpiamos los 8 csv. 
2. Archivo `queries.sql` con el dataset limpio.
3. Archivo `videoclub_EER.png` con la imagen del EER creado.
4. Archivo pdf `Presentación_proyecto_3_videoclub` con la explicación del proceso que hemos realizado con python, el EER y de las preguntas que hemos contestado sobre el database con queries.


## Queries

- ¿Cuántas películas hay en cada categoría? 
- Listado de películas de categoría Music.
- ¿Cuántas películas ha hecho cada actor? ¿Quién ha hecho más películas? Ordenadas de más a menos. 
- Título y precio de alquiler de las películas de la categoría Action, ordenadas con el precio más barato a más caro.
- ¿Cual es la película más alquilada?
- Listado de películas que tengan Behind the Scenes (Detrás de las cámaras).
