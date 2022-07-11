--
-- @lc app=leetcode id=1873 lang=mysql
--
-- [1873] Calculate Special Bonus
--

-- @lc code=start
# Write your MySQL query statement below
select
    employee_id
    , case
        when employee_id % 2 = 0 then 0
        when name like "M%" then 0
        else salary
    end as bonus
from
    Employees
order by employee_id
-- @lc code=end

