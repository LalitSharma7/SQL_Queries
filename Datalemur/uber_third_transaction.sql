with cte_exp as (
   select *, row_number() OVER(PARTITION BY user_id 
   order by transaction_date) as rn FROM
   transactions
)

select user_id, spend, transaction_date
from cte_exp
where cte_exp.rn=3
