#
# @lc app=leetcode id=680 lang=ruby
#
# [680] Valid Palindrome II
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
  s_chars = s.chars
  s_chars.each_with_index do |c, i|
    if i == 0
      temp_s = s_chars[i+1..-1]
    else
      temp_s = s_chars[0..i-1] + s_chars[i+1..-1]
    end
    return true if temp_s == temp_s.reverse
  end
  return false
end
# @lc code=end

