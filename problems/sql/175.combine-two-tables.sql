--
-- @lc app=leetcode id=175 lang=mysql
--
-- [175] Combine Two Tables
--

-- @lc code=start
# Write your MySQL query statement below
select
  FirstName
  , LastName
  , City
  , State
from
  person
left join
  address
  on person.PersonId = address.PersonId
-- @lc code=end

