#
# @lc app=leetcode id=1672 lang=ruby
#
# [1672] Richest Customer Wealth
#

# @lc code=start
# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
    accounts.map(&:sum).max
end
# @lc code=end