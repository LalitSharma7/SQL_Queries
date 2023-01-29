select p.page_id
from pages p  
LEFT JOIN
page_likes u    
on p.page_id = u.page_id
where user_id is null
order by page_id;
