#
# @lc app=leetcode id=2413 lang=ruby
#
# [2413] Smallest Even Multiple
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def smallest_even_multiple(n)
    return n.even? ? n : n * 2
end
# @lc code=end