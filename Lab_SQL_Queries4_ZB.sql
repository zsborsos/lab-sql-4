-- Lab | SQL Queries 4
-- Zsanett Borsos

-- Get film ratings.
SELECT DISTINCT(rating) FROM sakila.film;
-- Get release years.
SELECT DISTINCT(release_year) FROM sakila.film;
-- Get all films with ARMAGEDDON in the title.
SELECT title FROM sakila.film
WHERE title LIKE '%armageddon%';
-- Get all films with APOLLO in the title
SELECT title FROM sakila.film
WHERE title LIKE '%apollo%';
-- Get all films which title ends with APOLLO.
SELECT title FROM sakila.film
WHERE title LIKE '%apollo';
-- Get all films with word DATE in the title.
SELECT title FROM sakila.film
WHERE title LIKE '% date%';
-- Get 10 films with the longest title.
SELECT title FROM sakila.film
ORDER BY length(title) DESC
LIMIT 10;
-- Get 10 the longest films.
SELECT title, length FROM sakila.film
ORDER BY length DESC
LIMIT 10;
-- How many films include Behind the Scenes content?
SELECT title,special_features FROM sakila.film
WHERE special_features LIKE ('%Behind the Scenes%');
-- List films ordered by release year and title in alphabetical order.
SELECT title, release_year FROM sakila.film
ORDER BY title;