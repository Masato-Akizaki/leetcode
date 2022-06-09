--
-- @lc app=leetcode id=1729 lang=mysql
--
-- [1729] Find Followers Count
--

-- @lc code=start
# Write your MySQL query statement below
select
    user_id
    , count(distinct follower_id) as followers_count
from
    Followers
group by 1
order by 1

-- @lc code=end

