#
# @lc app=leetcode id=1752 lang=ruby
#
# [1752] Check if Array Is Sorted and Rotated
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def check(nums)
    sorted_nums = nums.sort
    first_num = sorted_nums[0]
    indexs = nums.each_index.select{|i| nums[i] == first_num }
    indexs.each do |i|
        return true if nums.rotate(i) == sorted_nums
    end
    false
end
# @lc code=end