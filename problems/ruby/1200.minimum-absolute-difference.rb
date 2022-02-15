#
# @lc app=leetcode id=1200 lang=ruby
#
# [1200] Minimum Absolute Difference
#

# @lc code=start
# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
  ans = []
  min_diff = Float::INFINITY
  arr.sort.each_cons(2) do |a, b| 
      if (b - a) < min_diff
          min_diff = b - a 
          ans = []
          ans << [a, b]
      elsif (b - a) == min_diff
          ans << [a, b]
      end
  end
  ans
end

# @lc code=end