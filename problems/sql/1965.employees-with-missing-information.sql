--
-- @lc app=leetcode id=1965 lang=mysql
--
-- [1965] Employees With Missing Information
--

-- @lc code=start
# Write your MySQL query statement below
select
    Employees.employee_id
from
    Employees
left join
    Salaries
    on Employees.employee_id = Salaries.employee_id
where
    Salaries.employee_id is null
union all
select
    Salaries.employee_id
from
    Salaries
left join
    Employees
    on Salaries.employee_id = Employees.employee_id
where
    Employees.employee_id is null
order by 1
-- @lc code=end

