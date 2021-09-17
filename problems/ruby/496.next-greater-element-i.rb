#
# @lc app=leetcode id=496 lang=ruby
#
# [496] Next Greater Element I
#

# @lc code=start
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  array = []
  nums1.each do |n|
    j = nums2.index(n)
    next_greater_element = nums2[j+1..-1].find { |x| x > n }
    if next_greater_element
      array << next_greater_element
    else
      array << -1
    end
  end
  array
end
# @lc code=end

"[1,3,5,2,4]\n[6,5,4,3,2,1,7]"