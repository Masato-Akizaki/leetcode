#
# @lc app=leetcode id=1837 lang=ruby
#
# [1837] Sum of Digits in Base K
#

# @lc code=start
# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def sum_base(n, k)
    n.to_s(k).chars.map(&:to_i).sum
end
# @lc code=end