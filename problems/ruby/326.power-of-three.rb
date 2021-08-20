#
# @lc app=leetcode id=326 lang=ruby
#
# [326] Power of Three
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  return false if n < 1
  while n % 3 == 0 do
    n /= 3
  end
  n == 1
end
# @lc code=end

