--
-- @lc app=leetcode id=511 lang=mysql
--
-- [511] Game Play Analysis I
--

-- @lc code=start
# Write your MySQL query statement below
select
  player_id
  , min(event_date) as first_login
from
  Activity
group by 1
-- @lc code=end

