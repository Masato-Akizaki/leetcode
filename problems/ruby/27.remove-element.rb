#
# @lc app=leetcode id=27 lang=ruby
#
# [27] Remove Element
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    i = 0
    j = 0
    while j < nums.length do
      if nums[j] != val
        nums[i] = nums[j]
        i += 1
      end
      j += 1
    end
    i
end
# @lc code=end

