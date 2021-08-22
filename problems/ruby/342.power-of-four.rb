#
# @lc app=leetcode id=342 lang=ruby
#
# [342] Power of Four
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
  return false if n < 1
  while n % 4 == 0 do
    n /= 4
  end
  n == 1
end
# @lc code=end

