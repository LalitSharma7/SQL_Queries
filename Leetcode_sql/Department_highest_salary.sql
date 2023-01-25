select Department, name as "Employee", salary as "Salary" from
(select d.name as "Department", e.salary, e.name, dense_rank() over (partition by e.departmentid order by e.salary desc) as salary_rank
from employee e
inner join department d on e.departmentid=d.id) as temp
where salary_rank=1
