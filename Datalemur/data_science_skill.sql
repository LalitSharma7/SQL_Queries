SELECT candidate_id FROM candidates 
WHERE skill IN ( 'Tableau', 'Python', 'PostgreSQL' )
GROUP BY candidate_id HAVING COUNT( skill)=3;
