#
# @lc app=leetcode id=2210 lang=ruby
#
# [2210] Count Hills and Valleys in an Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def count_hill_valley(nums)
  nums.delete_if.with_index{|_,i| nums[i] == nums[i+1]}
  hills_and_valleys = 0
  nums.each_with_index do |x, i|
      next if i == 0 || i == nums.length - 1
      hills_and_valleys += 1 if nums[i] > nums[i-1] && nums[i] > nums[i+1]
      hills_and_valleys += 1 if nums[i] < nums[i-1] && nums[i] < nums[i+1]
  end
  hills_and_valleys
end
# @lc code=end