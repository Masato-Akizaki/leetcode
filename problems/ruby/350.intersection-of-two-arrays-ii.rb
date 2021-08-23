#
# @lc app=leetcode id=350 lang=ruby
#
# [350] Intersection of Two Arrays II
#

# @lc code=start
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  result = []
  nums1.each do |n|
    if nums2.include?(n)
      result << n
      nums2.delete_at(nums2.find_index(n))
    end
  end
  result
end
# @lc code=end

