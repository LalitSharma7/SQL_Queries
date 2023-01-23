select 
      actor_id, 
      name, 
      (select count(*) from movie_actor
      where actor_id = actors.actor_id) as movie_count
from actors
order by movie_count desc;

