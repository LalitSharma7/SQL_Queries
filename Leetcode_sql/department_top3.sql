select Department, Employee, salary from 
      (select d.name as 'Department', e.name as 'Employee', e.salary , DENSE_RANK() OVER 
      (PARTITION by d.name ORDER BY e.salary desc) as rank
from employee e
join
department d 
on e.departmentID = d.id) as c
where rank <4;
