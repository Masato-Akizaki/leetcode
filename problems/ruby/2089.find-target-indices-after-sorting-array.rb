#
# @lc app=leetcode id=2089 lang=ruby
#
# [2089] Find Target Indices After Sorting Array
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def target_indices(nums, target)
    indexs = []
    nums.sort.each_with_index do |n, i|
        indexs << i if n == target
    end
    indexs
end
# @lc code=end