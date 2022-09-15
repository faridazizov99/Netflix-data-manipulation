USE netflix;
/*1. Write a query to display the title, rating, country, release_year, and director, 
for all movies directed by Michael Bay.
Sort the output by release_year (ascending)*/
select title, rating, country, release_year, director from movies
where director = 'Michael Bay'
order by release_year asc;

/*2.Write a query to display the title, country, duration_in_minutes, and date_added, 
for all movies that were added before March 2011. 
Sort the output by duration_in_minutes (ascending)*/
select title, country, duration_in_minutes,  date_added
from movies
where date_added < '2011-0-1'
order by duration_in_minutes asc;

/*3.Write a query to display the title, country, duration_in_minutes, and release_year, 
for all movies that were released between 2014 and 2016.
Sort the output by duration_in_minutes (descending).*/
select title, country, duration_in_minutes, release_year
from movies
where release_year between 2014 and 2016
order by duration_in_minutes desc;

/*4. Write a query to display the title, director, country, and duration_in_minutes,
for all movies with duration between 3-4 hours. 
Sort the output by duration_in_minutesmovies (descending)*/
select title, director, country, duration_in_minutes
from movies 
where duration_in_minutes/60 between 3 and 4
order by duration_in_minutesmovies desc;

/*5. Write a query to display the title, director, rating, num_of_seasons 
for all series with 10 to 14 seasons.
Sort the output by num_of_seasons (descending)*/
select title, director, rating, num_of_seasons
from series
where num_of_seasons between 10 and 14
order by num_of_seasons;

/*6. Write a query to display the title, director, rating, num_of_seasons
for all series
a. containing value in the director column (diretor not equals null)
b. and having num_of_seasons > 7 */
select title, director, rating, num_of_seasons 
from series
where director is not null
and num_of_seasons > 7;

/*7. Write a query to display the title, director, cast, country and rating, 
for all movies having Ryan Reynolds in their cast*/
select title, director, cast, country, rating
from movies
where cast like '%Ryan Reynolds%';

/*8. Write a query to display the title, director, cast, country and rating, 
for all movies having Ryan Reynolds and Nicolas Cage in their cast*/
select title, director, cast, country, rating
from movies
where cast like '%Ryan Reynolds%' and cast like '%Nicolas Cage%'

/*9. Write a query to display the title, director, cast, country, duration_in_minutes, and rating.
a. for all movies having PG (Parental Guidance) in their rating
b. and movie duration is greater than 3 hours*/
select title, director, cast, country, duration_in_minutes, rating
from movies
where rating like '%PG-%' and duration_in_minutes > 180

/*10. Write a query to display title, director, cast, country, and release_year 
 for all series released in 2014, 2016, or 2018. 
 Sort the output by title (ascending)*/
use netflix;
select title, director, cast, country, release_year
from series
where release_year IN (2014,2016,2018)
order by title asc
