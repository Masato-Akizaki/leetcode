--
-- @lc app=leetcode id=1795 lang=mysql
--
-- [1795] Rearrange Products Table
--

-- @lc code=start
# Write your MySQL query statement below
select
    product_id
    , "store1" as store
    , store1 as price
from
    Products
where
    store1 is not null

union all 

select
    product_id
    , "store2" as store
    , store2 as price
from
    Products
where
    store2 is not null
    
union all 

select
    product_id
    , "store3" as store
    , store3 as price
from
    Products
where
    store3 is not null
order by 2,1
-- @lc code=end

