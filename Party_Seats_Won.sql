
with cte as(select b.constituency_id, a.party, b.votes
from candidates a 
join
results b
on a.id = b.candidate_id),

cte2 as (select party, constituency_id, votes,
DENSE_RANK()over(partition by constituency_id order by votes desc) as dn
from cte)

select party,count(party) as party_seats_won from cte2
where dn = 1
group by party

