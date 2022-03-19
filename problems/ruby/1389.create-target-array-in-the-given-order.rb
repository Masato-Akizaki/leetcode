#
# @lc app=leetcode id=1389 lang=ruby
#
# [1389] Create Target Array in the Given Order
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
  arr = []
  nums.each_with_index do |n, i|
      arr.insert(index[i], n)
  end
  arr
end
# @lc code=end