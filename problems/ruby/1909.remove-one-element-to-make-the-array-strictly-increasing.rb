#
# @lc app=leetcode id=1909 lang=ruby
#
# [1909] Remove One Element to Make the Array Strictly Increasing
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def can_be_increasing(nums)
    return true if nums.length == 2
    delete_flag = 0
    [*0...nums.length-1].each do |i|
        return false if nums[i] >= nums[i+1] && delete_flag == 1
        if nums[i] >= nums[i+1]
            return false if i > 0 && i < nums.length-2 && nums[i-1] >= nums[i+1] && nums[i+2] <= nums[i]
            delete_flag = 1
        end
    end
    return true
end
# @lc code=end