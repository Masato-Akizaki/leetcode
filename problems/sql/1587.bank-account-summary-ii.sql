--
-- @lc app=leetcode id=1587 lang=mysql
--
-- [1587] Bank Account Summary II
--

-- @lc code=start
# Write your MySQL query statement below
select
    Users.name
    , sum(amount) as balance
from
    Transactions
left join
    Users
    on Transactions.account = Users.account
group by
    1
having
    balance > 10000
-- @lc code=end

