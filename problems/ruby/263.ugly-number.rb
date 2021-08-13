#
# @lc app=leetcode id=263 lang=ruby
#
# [263] Ugly Number
#

# @lc code=start
# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
  return false if n <= 0
  while n > 1
    if n % 5 == 0
      n /= 5
    elsif n % 3 == 0
      n /= 3
    elsif n % 2 == 0
      n /= 2
    else
      return false
    end
  end
  true
end
# @lc code=end

