--
-- @lc app=leetcode id=176 lang=mysql
--
-- [176] Second Highest Salary
--

-- @lc code=start
# Write your MySQL query statement below
select
  max(Salary) as SecondHighestSalary
from(
  select
    Salary
    , rank() over (order by salary desc) as rank_result
  from
    Employee
) Employee
where
  rank_result = 2
-- @lc code=end

