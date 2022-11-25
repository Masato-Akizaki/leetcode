#
# @lc app=leetcode id=2475 lang=ruby
#
# [2475] Number of Unequal Triplets in Array
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def unequal_triplets(nums)
  nums.combination(3).count {|x| x.uniq.size == 3 }  
end
# @lc code=end

