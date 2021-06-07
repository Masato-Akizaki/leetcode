#
# @lc app=leetcode id=26 lang=ruby
#
# [26] Remove Duplicates from Sorted Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  return 0 if nums.empty?
  i = 0
  j = 1

  while j < nums.length do
    if nums[j] != nums[i]
      i += 1
      nums[i] = nums[j]
    end
    j += 1
  end
  i + 1
end
# @lc code=end

