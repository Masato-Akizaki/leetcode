#
# @lc app=leetcode id=2148 lang=ruby
#
# [2148] Count Elements With Strictly Smaller and Greater Elements
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def count_elements(nums)
    (nums - [nums.max, nums.min]).length
end
# @lc code=end