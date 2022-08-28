-- ¿Cuántas películas hay en cada categoría?

SELECT c.name AS category, COUNT(*) AS films_number
FROM videoclub.category AS c
LEFT JOIN videoclub.filmcategory AS f 
ON f.category_id = c.category_id
GROUP BY c.name;

-- Listado de películas de categoría musical

SELECT f.title, c.name 
FROM videoclub.filmcategory as fc
LEFT JOIN videoclub.film AS f
ON f.film_id = fc.film_id
LEFT JOIN videoclub.category AS c
ON c.category_id = fc.category_id
WHERE name = 'Music' ;


-- ¿Cuántas películas ha hecho cada actor? ¿Quién ha hecho más películas? Ordenadas de más a menos. 

SELECT a.complete_name, COUNT(fa.film_id) AS films_number
FROM videoclub.filmactor AS fa
LEFT JOIN videoclub.actor AS a
ON fa.actor_id = a.actor_id
GROUP BY fa.actor_id
ORDER BY count(*) DESC ;

-- Título y precio de alquiler de las películas de la categoría Action, ordenadas con el precio más barato a más caro.

SELECT f.title, c.name AS categoy, f.rental_rate AS rental_price
FROM videoclub.filmcategory as fc
LEFT JOIN videoclub.film AS f
ON f.film_id = fc.film_id
LEFT JOIN videoclub.category AS c
ON c.category_id = fc.category_id
WHERE c.name = 'Action'
ORDER BY f.rental_rate ASC ;

-- ¿Cual es la película más alquilada?

SELECT f.title, count(rental_id) AS rental_number
FROM videoclub.rental
LEFT JOIN videoclub.inventory AS inv
ON inv.inventory_id = rental.inventory_id
LEFT JOIN videoclub.film AS f
ON f.film_id=inv.film_id
GROUP BY f.title
ORDER BY rental_number DESC LIMIT 1;

-- Listado de películas que tengan Behind the Scenes (Detrás de las cámaras)

SELECT title, special_features
FROM videoclub.film
WHERE special_features LIKE '%Behind the Scenes%' ;
