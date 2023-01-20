select title from movies where imdb_rating>=9;

select title from movies where imdb_rating between 7 and 9;

select * from movies
where release_year in(2022,2021,2020);

select* from movies where industry = "hollywood"
order by imdb_rating desc limit 5 offset 1;