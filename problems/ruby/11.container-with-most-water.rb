#
# @lc app=leetcode id=11 lang=ruby
#
# [11] Container With Most Water
#

# @lc code=start
# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  left = 0 
  right = height.length - 1
  max_area = 0    
  while (left < right)
    max_area = [[height[left], height[right]].min * (right - left), max_area].max
    height[left] > height[right] ? right -= 1 : left += 1
  end
  max_area
end
# @lc code=end

