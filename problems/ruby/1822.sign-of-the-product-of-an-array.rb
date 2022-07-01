#
# @lc app=leetcode id=1822 lang=ruby
#
# [1822] Sign of the Product of an Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
    v = nums.inject(:*)
    if v > 0
        return 1
    elsif v < 0
        return -1
    else
        return 0
    end
end
# @lc code=end