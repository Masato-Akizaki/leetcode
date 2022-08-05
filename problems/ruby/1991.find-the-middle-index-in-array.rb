#
# @lc app=leetcode id=1991 lang=ruby
#
# [1991] Find the Middle Index in Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
    return 0 if nums[1..nums.length-1].sum == 0
    [*1...nums.length-1].each do |i|
        return i if nums[0..i-1].sum == nums[i+1..nums.length-1].sum
    end
    return nums.length-1 if nums[0..nums.length-2].sum == 0
    -1
end
# @lc code=end