#
# @lc app=leetcode id=2357 lang=ruby
#
# [2357] Make Array Zero by Subtracting Equal Amounts
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
    count = 0
    until nums.uniq.length == 1 && nums[0] == 0 do
        min = (nums - [0]).min
        nums.map!{|x| x > 0 ? x - min : x}
        count += 1
    end
    count
end
# @lc code=end