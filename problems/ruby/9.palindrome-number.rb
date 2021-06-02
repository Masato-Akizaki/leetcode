#
# @lc app=leetcode id=9 lang=ruby
#
# [9] Palindrome Number
#

# @lc code=start
# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?
  x == x.to_s.reverse.to_i
end
# @lc code=end

