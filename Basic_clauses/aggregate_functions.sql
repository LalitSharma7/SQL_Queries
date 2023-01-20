select max(imdb_rating) from movies where industry = "bollywood";

select round(avg(imdb_rating),2) as avg_rating
from movies where studio = "Marvel Studios";

select studio, count(*) as cnt
from movies
where studio != ""
group by studio
order by cnt desc;