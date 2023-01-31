select count(policy_holder_id) as member_count from
(select policy_holder_id,
count(case_id) as call_count
from callers
group by policy_holder_id
having count(case_id)>=3)
as call_records;
