--
-- @lc app=leetcode id=181 lang=mysql
--
-- [181] Employees Earning More Than Their Managers
--

-- @lc code=start
# Write your MySQL query statement below
select
  e1.Name as Employee
from
  Employee as e1
left join
  Employee as e2
  on e1.ManagerId = e2.Id
where
  e1.Salary > e2.Salary
-- @lc code=end

