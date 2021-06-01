#
# @lc app=leetcode id=7 lang=ruby
#
# [7] Reverse Integer
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
def reverse(x)
  return 0 if x.zero?
  sign = x.negative? ? -1 : 1
  reverse_x = sign * x.to_s.reverse.to_i
  return 0 if reverse_x <= -2 ** 31 || reverse_x >= 2 ** 31 - 1
  reverse_x
end
# @lc code=end

