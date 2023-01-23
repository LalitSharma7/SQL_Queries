select * from actors 
       where actor_id = Any(
       select actor_id from movie_actor where movie_id in (
       101,110,121));
       

select * from movies where imdb_rating =Any(
select imdb_rating from movies 
     where studio = "Marvel studios");
     

