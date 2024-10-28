#Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |
+-------------+---------+
empId is the column with unique values for this table.
Each row of this table indicates the name and the ID of an employee in addition to their salary and the id of their manager.

# Write your MySQL query statement below
select Employee.name,Bonus.bonus
from Employee
left join Bonus
on Employee.empId=Bonus.empId
where Bonus.bonus<1000 or Bonus.bonus is null;
