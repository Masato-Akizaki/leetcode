--
-- @lc app=leetcode id=182 lang=mysql
--
-- [182] Duplicate Emails
--

-- @lc code=start
# Write your MySQL query statement below
select
  Email
from
  Person
group by 1
having
  count(1) > 1

-- @lc code=end

