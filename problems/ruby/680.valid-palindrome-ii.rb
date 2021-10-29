#
# @lc app=leetcode id=680 lang=ruby
#
# [680] Valid Palindrome II
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
  return true if palindrome?(s)

  low = 0
  high = s.length - 1

  while s[low] == s[high]
    low += 1
    high -= 1
  end

  palindrome?(s[low..high-1]) || palindrome?(s[low+1..high])
end

def palindrome?(s)
  s == s.reverse
end
# @lc code=end

