--
-- @lc app=leetcode id=197 lang=mysql
--
-- [197] Rising Temperature
--

-- @lc code=start
# Write your MySQL query statement below
select
  w1.Id
from
  Weather w1
left join
  Weather w2
  on w1.RecordDate = date_add(w2.RecordDate, interval 1 day)
where
  w1.Temperature > w2.Temperature
order by 1
  
-- @lc code=end

