#
# @lc app=leetcode id=492 lang=ruby
#
# [492] Construct the Rectangle
#

# @lc code=start
# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  i = 1
  array = []
  while (area / i) >= i
    array << [(area / i), i] if area % i == 0
    i += 1
  end
  array.last
end
# @lc code=end

