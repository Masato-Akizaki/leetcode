--
-- @lc app=leetcode id=586 lang=mysql
--
-- [586] Customer Placing the Largest Number of Orders
--

-- @lc code=start
# Write your MySQL query statement below
select
  customer_number
from(
  select
    customer_number
    , count(1)
  from
    Orders
  group by 1
  order by 2 desc
) as order_counts
limit 1

-- @lc code=end

