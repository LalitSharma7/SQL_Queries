with cte_exp as 

(SELECT sender_id
FROM messages
WHERE EXTRACT(MONTH FROM sent_date) = '8'
  AND EXTRACT(YEAR FROM sent_date) = '2022'
)

select sender_id, count(sender_id) as message_count
from cte_exp
group by sender_id
order by count(sender_id) desc
limit 2
