#
# @lc app=leetcode id=1385 lang=ruby
#
# [1385] Find the Distance Value Between Two Arrays
#

# @lc code=start
# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
def find_the_distance_value(arr1, arr2, d)
  result = arr1.length
  arr1.each do |i|
    arr2.each do |j|
      if (i-j).abs <= d
        result -= 1
        break
      end
    end
  end
  result
end
# @lc code=end