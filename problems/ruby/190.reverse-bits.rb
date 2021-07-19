#
# @lc app=leetcode id=190 lang=ruby
#
# [190] Reverse Bits
#

# @lc code=start
# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  n.to_s(2).rjust(32, "0").reverse!.to_i(2)
end
# @lc code=end

