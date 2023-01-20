select release_year, count(*) as movies_count
from movies group by release_year
having movies_count>2
order by movies_count desc;

select *, YEAR(CURDATE())-birth_year as age from actors;

select*, (revenue-budget) as profit from moviesdb.financials;

select *, 
     if(currency = 'USD', revenue*77, revenue) as revenue_inr
     from moviesdb.financials;

select *, 
case
    when unit = "thousands" then revenue/1000
    when unit = "billions" then revenue*1000
    else revenue
end as revnue_convert
from moviesdb.financials;

