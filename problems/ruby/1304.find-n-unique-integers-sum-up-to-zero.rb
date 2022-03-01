#
# @lc app=leetcode id=1304 lang=ruby
#
# [1304] Find N Unique Integers Sum up to Zero
#

# @lc code=start
# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
    n.odd? ? [*-(n/2)..-1] + [0] + [*1..n/2] : [*-(n/2)..-1] + [*1..n/2]  
end
# @lc code=end