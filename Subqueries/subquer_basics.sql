
select * from movies 
where imdb_rating = 
(select max(imdb_rating) from movies);


select * from movies
where imdb_rating in((select max(imdb_rating) from movies),
					  (select min(imdb_rating) from movies));
                      
                      
select * from (select name, 
	   year(curdate())-birth_year as age
from actors) as actors_age
where age>70 and age<85;
                      

             