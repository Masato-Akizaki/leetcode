#
# @lc app=leetcode id=69 lang=ruby
#
# [69] Sqrt(x)
#

# @lc code=start
# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  min = 0
  max = x
  while min <= max
    mid = min + (max - min) / 2
    if x >= mid * mid && x < (mid + 1) * (mid + 1)
      return mid 
    elsif x <= mid * mid
      max = mid - 1
    elsif x >= mid * mid
      min = mid + 1
    end
  end
end
# @lc code=end

