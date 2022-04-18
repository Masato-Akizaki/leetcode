--
-- @lc app=leetcode id=1050 lang=mysql
--
-- [1050] Actors and Directors Who Cooperated At Least Three Times
--

-- @lc code=start
# Write your MySQL query statement below
select
  actor_id
  , director_id
from
  ActorDirector
group by 1,2
having count(1) >= 3
-- @lc code=end

