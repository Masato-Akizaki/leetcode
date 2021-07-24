--
-- @lc app=leetcode id=196 lang=mysql
--
-- [196] Delete Duplicate Emails
--

-- @lc code=start
# Write your MySQL query statement below
delete
  p1.*
from
  Person p1
join
  Person p2
  on p1.Email = p2.Email 
  and p1.Id > p2.Id
-- @lc code=end

