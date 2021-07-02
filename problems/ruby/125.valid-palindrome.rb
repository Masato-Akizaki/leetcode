#
# @lc app=leetcode id=125 lang=ruby
#
# [125] Valid Palindrome
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase.delete('^0-9a-z')
  s == s.reverse
end
# @lc code=end

