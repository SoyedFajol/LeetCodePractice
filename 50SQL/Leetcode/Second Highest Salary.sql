# Write your MySQL query statement below
Select max(salary) as SecondHighestSalary
From Employee
Where salary not in (select max(salary) from employee)