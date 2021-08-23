#
# @lc app=leetcode id=349 lang=ruby
#
# [349] Intersection of Two Arrays
#

# @lc code=start
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  nums1.uniq & nums2.uniq
end
# @lc code=end

