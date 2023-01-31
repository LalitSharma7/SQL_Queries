with cte_exp as (
    select u.city as city
    from trades t
    LEFT JOIN
    users u   
    on t.user_id = u.user_id
    where t.status = 'Completed'
)

select city, count(city) as total_orders
from cte_exp
group by city
order by total_orders desc
limit 3
