with actors_age as(
       select
             name as actor_name,
             year(curdate())-birth_year as age
	   from actors
)

select actor_name, age
from actors_age
where age>70 and age <80;


#CTE 
# benefits
# 1) Simple query
# 2) give potential for view

with
    x as(
         select *, 
         (revenue-budget)*100/budget as pct_profit
         from financials
    ),
    y as(
        select * from movies
        where imdb_rating<(select avg(imdb_rating) from movies)
    )
select 
     x.movie_id, x.pct_profit,
     y.title, y.imdb_rating
from x
join y
on x.movie_id = y.movie_id
where pct_profit >= 500;


