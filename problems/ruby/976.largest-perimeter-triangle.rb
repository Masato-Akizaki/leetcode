#
# @lc app=leetcode id=976 lang=ruby
#
# [976] Largest Perimeter Triangle
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  nums.sort!.reverse!
  for i in (0...nums.length - 2) do
    return nums[i] + nums[i+1] + nums[i+2] if nums[i] < nums[i+1] + nums[i+2] && nums[i] > nums[i+1] - nums[i+2]
  end
  return 0
end
# @lc code=end

