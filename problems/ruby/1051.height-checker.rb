#
# @lc app=leetcode id=1051 lang=ruby
#
# [1051] Height Checker
#

# @lc code=start
# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  count = 0
  expected = heights.sort
  heights.each_with_index do |s, i|
    count += 1 if heights[i] != expected[i]
  end
  count
end
# @lc code=end

