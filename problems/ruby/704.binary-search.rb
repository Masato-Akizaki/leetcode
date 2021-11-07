#
# @lc app=leetcode id=704 lang=ruby
#
# [704] Binary Search
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  if nums.include?(target)
    return nums.bsearch_index{ |x| x >= target }
  else
    return -1
  end
end
# @lc code=end

