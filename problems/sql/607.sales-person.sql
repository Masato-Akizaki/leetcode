--
-- @lc app=leetcode id=607 lang=mysql
--
-- [607] Sales Person
--

-- @lc code=start
# Write your MySQL query statement below
select
  SalesPerson.name
from
  SalesPerson
left join (
  select
    sales_id
  from
    Orders
  left join
    Company
    on Orders.com_id = Company.com_id
  where
    Company.name = 'RED'
) red_order_salespersons
  on SalesPerson.sales_id = red_order_salespersons.sales_id
where
  red_order_salespersons.sales_id is null
-- @lc code=end

