#
# @lc app=leetcode id=231 lang=ruby
#
# [231] Power of Two
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n <= 0
  return true if n == 1
  while n > 2 do
    return false if n % 2 != 0
    n /= 2
  end
  true
end
# @lc code=end

