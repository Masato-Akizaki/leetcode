--
-- @lc app=leetcode id=1890 lang=mysql
--
-- [1890] The Latest Login in 2020
--

-- @lc code=start
# Write your MySQL query statement below
select
    user_id
    , max(time_stamp) as last_stamp
from
    Logins
where
    cast(time_stamp as date) between '2020-01-01' and '2020-12-31'
group by 1
-- @lc code=end

