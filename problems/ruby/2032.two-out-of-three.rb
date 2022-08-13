#
# @lc app=leetcode id=2032 lang=ruby
#
# [2032] Two Out of Three
#

# @lc code=start
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
    (nums1.uniq + nums2.uniq + nums3.uniq).tally.select{|k, v| v >= 2}.keys
end
# @lc code=end