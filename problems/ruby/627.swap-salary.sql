--
-- @lc app=leetcode id=627 lang=mysql
--
-- [627] Swap Salary
--

-- @lc code=start
# Write your MySQL query statement below
update
  Salary
set
  sex = case when sex = 'm' then 'f'
             when sex = 'f' then 'm'
        end
-- @lc code=end

