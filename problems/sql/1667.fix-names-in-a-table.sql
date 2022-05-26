--
-- @lc app=leetcode id=1667 lang=mysql
--
-- [1667] Fix Names in a Table
--

-- @lc code=start
# Write your MySQL query statement below
select
    user_id
    , concat(upper(substring(name, 1, 1)), lower(substring(name, 2))) as name
from
    Users
order by user_id
-- @lc code=end

